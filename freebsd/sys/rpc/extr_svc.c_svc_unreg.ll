; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_unreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_unreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.svc_callout = type { %struct.svc_callout* }

@sc_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_unreg(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_callout*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @rpcb_unset(i32 %8, i32 %9, i32* null)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  br label %14

14:                                               ; preds = %35, %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.svc_callout* @svc_find(%struct.TYPE_4__* %15, i32 %16, i32 %17, i32* null)
  store %struct.svc_callout* %18, %struct.svc_callout** %7, align 8
  %19 = icmp ne %struct.svc_callout* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.svc_callout*, %struct.svc_callout** %7, align 8
  %24 = load i32, i32* @sc_link, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* %22, %struct.svc_callout* %23, i32 %24)
  %26 = load %struct.svc_callout*, %struct.svc_callout** %7, align 8
  %27 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %26, i32 0, i32 0
  %28 = load %struct.svc_callout*, %struct.svc_callout** %27, align 8
  %29 = icmp ne %struct.svc_callout* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.svc_callout*, %struct.svc_callout** %7, align 8
  %32 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %31, i32 0, i32 0
  %33 = load %struct.svc_callout*, %struct.svc_callout** %32, align 8
  %34 = call i32 @mem_free(%struct.svc_callout* %33, i32 9)
  br label %35

35:                                               ; preds = %30, %20
  %36 = load %struct.svc_callout*, %struct.svc_callout** %7, align 8
  %37 = call i32 @mem_free(%struct.svc_callout* %36, i32 8)
  br label %14

38:                                               ; preds = %14
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @mtx_unlock(i32* %40)
  ret void
}

declare dso_local i32 @rpcb_unset(i32, i32, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.svc_callout* @svc_find(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.svc_callout*, i32) #1

declare dso_local i32 @mem_free(%struct.svc_callout*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
