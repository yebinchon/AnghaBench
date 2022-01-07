; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_ktls.c_ktls_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_ktls.c_ktls_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktls_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rm_priotracker = type { i32 }

@ktls_allow_unload = common dso_local global i64 0, align 8
@ktls_backends_lock = common dso_local global i32 0, align 4
@ktls_session_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktls_destroy(%struct.ktls_session* %0) #0 {
  %2 = alloca %struct.ktls_session*, align 8
  %3 = alloca %struct.rm_priotracker, align 4
  store %struct.ktls_session* %0, %struct.ktls_session** %2, align 8
  %4 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %5 = call i32 @ktls_cleanup(%struct.ktls_session* %4)
  %6 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %7 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i64, i64* @ktls_allow_unload, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = call i32 @rm_rlock(i32* @ktls_backends_lock, %struct.rm_priotracker* %3)
  %15 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %16 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = call i32 @rm_runlock(i32* @ktls_backends_lock, %struct.rm_priotracker* %3)
  br label %22

22:                                               ; preds = %13, %10, %1
  %23 = load i32, i32* @ktls_session_zone, align 4
  %24 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %25 = call i32 @uma_zfree(i32 %23, %struct.ktls_session* %24)
  ret void
}

declare dso_local i32 @ktls_cleanup(%struct.ktls_session*) #1

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @uma_zfree(i32, %struct.ktls_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
