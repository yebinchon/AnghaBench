; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_lock_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_lock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i32, i32, i32 }

@BGE_ASICREV_BCM5761 = common dso_local global i64 0, align 8
@BGE_APE_LOCK_GRANT = common dso_local global i32 0, align 4
@BGE_APE_PER_LOCK_GRANT = common dso_local global i32 0, align 4
@BGE_APE_LOCK_GPIO = common dso_local global i32 0, align 4
@BGE_APE_LOCK_GRANT_DRIVER0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"PHY lock not supported on this function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_ape_lock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_ape_lock_init(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %6 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BGE_ASICREV_BCM5761, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @BGE_APE_LOCK_GRANT, align 4
  store i32 %12, i32* %4, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @BGE_APE_PER_LOCK_GRANT, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %11
  store i32 131, i32* %5, align 4
  br label %16

16:                                               ; preds = %45, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BGE_APE_LOCK_GPIO, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %24 [
    i32 131, label %22
    i32 130, label %22
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %20, %20, %20, %20
  %23 = load i32, i32* @BGE_APE_LOCK_GRANT_DRIVER0, align 4
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %20
  %25 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %26 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @BGE_APE_LOCK_GRANT_DRIVER0, align 4
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %24
  %32 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 1, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %29
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 4, %40
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @APE_WRITE_4(%struct.bge_softc* %38, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %16

48:                                               ; preds = %16
  %49 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %64 [
    i32 0, label %52
    i32 1, label %55
    i32 2, label %58
    i32 3, label %61
  ]

52:                                               ; preds = %48
  %53 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %54 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %53, i32 0, i32 2
  store i32 131, i32* %54, align 4
  br label %69

55:                                               ; preds = %48
  %56 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %56, i32 0, i32 2
  store i32 130, i32* %57, align 4
  br label %69

58:                                               ; preds = %48
  %59 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %60 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %59, i32 0, i32 2
  store i32 129, i32* %60, align 4
  br label %69

61:                                               ; preds = %48
  %62 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %63 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %62, i32 0, i32 2
  store i32 128, i32* %63, align 4
  br label %69

64:                                               ; preds = %48
  %65 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %61, %58, %55, %52
  ret void
}

declare dso_local i32 @APE_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
