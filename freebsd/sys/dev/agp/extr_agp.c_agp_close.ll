; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.agp_softc = type { i64, i64, i32 }
%struct.agp_memory = type { i64 }

@AGP_ACQUIRE_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @agp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_close(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.agp_softc*, align 8
  %11 = alloca %struct.agp_memory*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %12 = load %struct.cdev*, %struct.cdev** %5, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.agp_softc* @device_get_softc(i32 %15)
  store %struct.agp_softc* %16, %struct.agp_softc** %10, align 8
  br label %17

17:                                               ; preds = %31, %4
  %18 = load %struct.agp_softc*, %struct.agp_softc** %10, align 8
  %19 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %18, i32 0, i32 2
  %20 = call %struct.agp_memory* @TAILQ_FIRST(i32* %19)
  store %struct.agp_memory* %20, %struct.agp_memory** %11, align 8
  %21 = icmp ne %struct.agp_memory* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.agp_memory*, %struct.agp_memory** %11, align 8
  %24 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.agp_memory*, %struct.agp_memory** %11, align 8
  %30 = call i32 @AGP_UNBIND_MEMORY(i32 %28, %struct.agp_memory* %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.agp_memory*, %struct.agp_memory** %11, align 8
  %34 = call i32 @AGP_FREE_MEMORY(i32 %32, %struct.agp_memory* %33)
  br label %17

35:                                               ; preds = %17
  %36 = load %struct.agp_softc*, %struct.agp_softc** %10, align 8
  %37 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AGP_ACQUIRE_USER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* @AGP_ACQUIRE_USER, align 8
  %44 = call i32 @agp_release_helper(i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.agp_softc*, %struct.agp_softc** %10, align 8
  %47 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @device_unbusy(i32 %48)
  ret i32 0
}

declare dso_local %struct.agp_softc* @device_get_softc(i32) #1

declare dso_local %struct.agp_memory* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @AGP_UNBIND_MEMORY(i32, %struct.agp_memory*) #1

declare dso_local i32 @AGP_FREE_MEMORY(i32, %struct.agp_memory*) #1

declare dso_local i32 @agp_release_helper(i32, i64) #1

declare dso_local i32 @device_unbusy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
