; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v3.c_legacyEepromSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v3.c_legacyEepromSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@HAL_OK = common dso_local global i32 0, align 4
@AR_EEPROM_EEPCAP_COMPRESS_DIS = common dso_local global i32 0, align 4
@AR_EEPROM_EEPCAP_FASTFRAME_DIS = common dso_local global i32 0, align 4
@AR_EEPROM_EEPCAP_AES_DIS = common dso_local global i32 0, align 4
@AR_EEPROM_EEPCAP_BURST_DIS = common dso_local global i32 0, align 4
@HAL_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i32, i32)* @legacyEepromSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacyEepromSet(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %10 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %111 [
    i32 135, label %14
    i32 134, label %19
    i32 130, label %24
    i32 128, label %29
    i32 129, label %34
    i32 132, label %39
    i32 131, label %57
    i32 136, label %75
    i32 133, label %93
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @HAL_OK, align 4
  store i32 %18, i32* %4, align 4
  br label %113

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @HAL_OK, align 4
  store i32 %23, i32* %4, align 4
  br label %113

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @HAL_OK, align 4
  store i32 %28, i32* %4, align 4
  br label %113

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @HAL_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %113

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @HAL_OK, align 4
  store i32 %38, i32* %4, align 4
  br label %113

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* @AR_EEPROM_EEPCAP_COMPRESS_DIS, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %55

49:                                               ; preds = %39
  %50 = load i32, i32* @AR_EEPROM_EEPCAP_COMPRESS_DIS, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load i32, i32* @HAL_OK, align 4
  store i32 %56, i32* %4, align 4
  br label %113

57:                                               ; preds = %3
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* @AR_EEPROM_EEPCAP_FASTFRAME_DIS, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %73

67:                                               ; preds = %57
  %68 = load i32, i32* @AR_EEPROM_EEPCAP_FASTFRAME_DIS, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load i32, i32* @HAL_OK, align 4
  store i32 %74, i32* %4, align 4
  br label %113

75:                                               ; preds = %3
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* @AR_EEPROM_EEPCAP_AES_DIS, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %91

85:                                               ; preds = %75
  %86 = load i32, i32* @AR_EEPROM_EEPCAP_AES_DIS, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %78
  %92 = load i32, i32* @HAL_OK, align 4
  store i32 %92, i32* %4, align 4
  br label %113

93:                                               ; preds = %3
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* @AR_EEPROM_EEPCAP_BURST_DIS, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %109

103:                                              ; preds = %93
  %104 = load i32, i32* @AR_EEPROM_EEPCAP_BURST_DIS, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %96
  %110 = load i32, i32* @HAL_OK, align 4
  store i32 %110, i32* %4, align 4
  br label %113

111:                                              ; preds = %3
  %112 = load i32, i32* @HAL_EINVAL, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %109, %91, %73, %55, %34, %29, %24, %19, %14
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
