; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.turnstile* }
%struct.turnstile = type { %struct.lock_object*, i32 }
%struct.lock_object = type { i32 }
%struct.turnstile_chain = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turnstile_cancel(%struct.turnstile* %0) #0 {
  %2 = alloca %struct.turnstile*, align 8
  %3 = alloca %struct.turnstile_chain*, align 8
  %4 = alloca %struct.lock_object*, align 8
  store %struct.turnstile* %0, %struct.turnstile** %2, align 8
  %5 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %6 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %5, i32 0, i32 1
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* %6, i32 %7)
  %9 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %10 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %9, i32 0, i32 1
  %11 = call i32 @mtx_unlock_spin(i32* %10)
  %12 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %13 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %12, i32 0, i32 0
  %14 = load %struct.lock_object*, %struct.lock_object** %13, align 8
  store %struct.lock_object* %14, %struct.lock_object** %4, align 8
  %15 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.turnstile*, %struct.turnstile** %17, align 8
  %19 = icmp eq %struct.turnstile* %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %22 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %21, i32 0, i32 0
  store %struct.lock_object* null, %struct.lock_object** %22, align 8
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %25 = call %struct.turnstile_chain* @TC_LOOKUP(%struct.lock_object* %24)
  store %struct.turnstile_chain* %25, %struct.turnstile_chain** %3, align 8
  %26 = load %struct.turnstile_chain*, %struct.turnstile_chain** %3, align 8
  %27 = getelementptr inbounds %struct.turnstile_chain, %struct.turnstile_chain* %26, i32 0, i32 0
  %28 = call i32 @mtx_unlock_spin(i32* %27)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local %struct.turnstile_chain* @TC_LOOKUP(%struct.lock_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
