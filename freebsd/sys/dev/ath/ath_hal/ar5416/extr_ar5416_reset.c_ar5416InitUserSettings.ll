; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416InitUserSettings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416InitUserSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@AR_MISC_MODE = common dso_local global i32 0, align 4
@AR_DIAG_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar5416InitUserSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416InitUserSettings(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %4)
  store %struct.ath_hal_5212* %5, %struct.ath_hal_5212** %3, align 8
  %6 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %7 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %12 = load i32, i32* @AR_MISC_MODE, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %14 = load i32, i32* @AR_MISC_MODE, align 4
  %15 = call i32 @OS_REG_READ(%struct.ath_hal* %13, i32 %14)
  %16 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %17 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %15, %18
  %20 = call i32 @OS_REG_WRITE(%struct.ath_hal* %11, i32 %12, i32 %19)
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %23 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %28 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %29 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ar5212SetSifsTime(%struct.ath_hal* %27, i64 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %34 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, -1
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %39 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %40 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ar5212SetSlotTime(%struct.ath_hal* %38, i64 %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %45 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, -1
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %50 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %51 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ar5212SetAckTimeout(%struct.ath_hal* %49, i64 %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %56 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, -1
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %61 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %62 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ar5212SetCTSTimeout(%struct.ath_hal* %60, i64 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %67 = call %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal* %66)
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %73 = load i32, i32* @AR_DIAG_SW, align 4
  %74 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %75 = call %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal* %74)
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @OS_REG_WRITE(%struct.ath_hal* %72, i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %71, %65
  %80 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %81 = call %struct.TYPE_4__* @AH5416(%struct.ath_hal* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, -1
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %87 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %88 = call %struct.TYPE_4__* @AH5416(%struct.ath_hal* %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ar5416SetGlobalTxTimeout(%struct.ath_hal* %86, i64 %90)
  br label %92

92:                                               ; preds = %85, %79
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar5212SetSifsTime(%struct.ath_hal*, i64) #1

declare dso_local i32 @ar5212SetSlotTime(%struct.ath_hal*, i64) #1

declare dso_local i32 @ar5212SetAckTimeout(%struct.ath_hal*, i64) #1

declare dso_local i32 @ar5212SetCTSTimeout(%struct.ath_hal*, i64) #1

declare dso_local %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @ar5416SetGlobalTxTimeout(%struct.ath_hal*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
