; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.turnstile* }
%struct.turnstile = type { i32*, i32 }
%struct.lock_object = type { i32 }
%struct.turnstile_chain = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turnstile_unlock(%struct.turnstile* %0, %struct.lock_object* %1) #0 {
  %3 = alloca %struct.turnstile*, align 8
  %4 = alloca %struct.lock_object*, align 8
  %5 = alloca %struct.turnstile_chain*, align 8
  store %struct.turnstile* %0, %struct.turnstile** %3, align 8
  store %struct.lock_object* %1, %struct.lock_object** %4, align 8
  %6 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %7 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %6, i32 0, i32 1
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %11 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %10, i32 0, i32 1
  %12 = call i32 @mtx_unlock_spin(i32* %11)
  %13 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.turnstile*, %struct.turnstile** %15, align 8
  %17 = icmp eq %struct.turnstile* %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %20 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %23 = call %struct.turnstile_chain* @TC_LOOKUP(%struct.lock_object* %22)
  store %struct.turnstile_chain* %23, %struct.turnstile_chain** %5, align 8
  %24 = load %struct.turnstile_chain*, %struct.turnstile_chain** %5, align 8
  %25 = getelementptr inbounds %struct.turnstile_chain, %struct.turnstile_chain* %24, i32 0, i32 0
  %26 = call i32 @mtx_unlock_spin(i32* %25)
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
