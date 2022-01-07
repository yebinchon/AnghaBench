; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416GetCapability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416GetCapability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@HAL_OK = common dso_local global i32 0, align 4
@HAL_ENOTSUPP = common dso_local global i32 0, align 4
@AR_XSREV_VERSION_OWL_PCI = common dso_local global i32 0, align 4
@AR_XSREV_VERSION_OWL_PCIE = common dso_local global i32 0, align 4
@HAL_ENXIO = common dso_local global i32 0, align 4
@AR_PCU_TXOP_TBTT_LIMIT_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416GetCapability(%struct.ath_hal* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %103 [
    i32 131, label %11
    i32 128, label %52
    i32 130, label %78
    i32 129, label %80
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %51 [
    i32 133, label %13
    i32 134, label %27
    i32 132, label %41
  ]

13:                                               ; preds = %11
  %14 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %15 = call i32 @AR_SREV_HOWL(%struct.ath_hal* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %19 = call i32 @AR_SREV_SOWL(%struct.ath_hal* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @HAL_OK, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %5, align 4
  br label %110

27:                                               ; preds = %11
  %28 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %29 = call i32 @AR_SREV_HOWL(%struct.ath_hal* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %33 = call i32 @AR_SREV_SOWL(%struct.ath_hal* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @HAL_OK, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %5, align 4
  br label %110

41:                                               ; preds = %11
  %42 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %43 = call i32 @AR_SREV_MERLIN(%struct.ath_hal* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @HAL_OK, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %5, align 4
  br label %110

51:                                               ; preds = %11
  br label %104

52:                                               ; preds = %4
  %53 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %54 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AR_XSREV_VERSION_OWL_PCI, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %52
  %59 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %60 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AR_XSREV_VERSION_OWL_PCIE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  %65 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %66 = call i32 @AR_SREV_HOWL(%struct.ath_hal* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %70 = call i32 @AR_SREV_SOWL(%struct.ath_hal* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %64, %58, %52
  %73 = load i32, i32* @HAL_OK, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %5, align 4
  br label %110

78:                                               ; preds = %4
  %79 = load i32, i32* @HAL_ENXIO, align 4
  store i32 %79, i32* %5, align 4
  br label %110

80:                                               ; preds = %4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @HAL_OK, align 4
  store i32 %84, i32* %5, align 4
  br label %110

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %89, i32* %5, align 4
  br label %110

90:                                               ; preds = %85
  %91 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %92 = call %struct.TYPE_2__* @AH5212(%struct.ath_hal* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AR_PCU_TXOP_TBTT_LIMIT_ENA, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @HAL_OK, align 4
  store i32 %102, i32* %5, align 4
  br label %110

103:                                              ; preds = %4
  br label %104

104:                                              ; preds = %103, %51
  %105 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @ar5212GetCapability(%struct.ath_hal* %105, i32 %106, i32 %107, i32* %108)
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %104, %90, %88, %83, %78, %76, %49, %39, %25
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @AR_SREV_HOWL(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_SOWL(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_MERLIN(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_2__* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @ar5212GetCapability(%struct.ath_hal*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
