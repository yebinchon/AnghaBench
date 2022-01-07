; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_find_nvram_src.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_find_nvram_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32, i32 }
%struct.chipc_caps = type { i64, i64, i64 }

@SUPPORTS_SPROM = common dso_local global i32 0, align 4
@CHIPC_SPROM_CTRL = common dso_local global i32 0, align 4
@CHIPC_SRC_PRESENT = common dso_local global i32 0, align 4
@BHND_NVRAM_SRC_SPROM = common dso_local global i32 0, align 4
@SUPPORTS_OTP = common dso_local global i32 0, align 4
@OTP_HND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"NVRAM unavailable: unsupported OTP controller.\0A\00", align 1
@BHND_NVRAM_SRC_UNKNOWN = common dso_local global i32 0, align 4
@CHIPC_OTPST = common dso_local global i32 0, align 4
@CHIPC_OTPS_GUP_HW = common dso_local global i32 0, align 4
@BHND_NVRAM_SRC_OTP = common dso_local global i32 0, align 4
@CHIPC_FLASH_NONE = common dso_local global i64 0, align 8
@BHND_NVRAM_SRC_FLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chipc_softc*, %struct.chipc_caps*)* @chipc_find_nvram_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_find_nvram_src(%struct.chipc_softc* %0, %struct.chipc_caps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chipc_softc*, align 8
  %5 = alloca %struct.chipc_caps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.chipc_softc* %0, %struct.chipc_softc** %4, align 8
  store %struct.chipc_caps* %1, %struct.chipc_caps** %5, align 8
  %8 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %9 = load i32, i32* @SUPPORTS_SPROM, align 4
  %10 = call i64 @CHIPC_QUIRK(%struct.chipc_softc* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.chipc_caps*, %struct.chipc_caps** %5, align 8
  %14 = getelementptr inbounds %struct.chipc_caps, %struct.chipc_caps* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %19 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CHIPC_SPROM_CTRL, align 4
  %22 = call i32 @bhnd_bus_read_4(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CHIPC_SRC_PRESENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @BHND_NVRAM_SRC_SPROM, align 4
  store i32 %28, i32* %3, align 4
  br label %74

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %12, %2
  %31 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %32 = load i32, i32* @SUPPORTS_OTP, align 4
  %33 = call i64 @CHIPC_QUIRK(%struct.chipc_softc* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %30
  %36 = load %struct.chipc_caps*, %struct.chipc_caps** %5, align 8
  %37 = getelementptr inbounds %struct.chipc_caps, %struct.chipc_caps* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %42 = load i32, i32* @OTP_HND, align 4
  %43 = call i64 @CHIPC_QUIRK(%struct.chipc_softc* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %47 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @BHND_NVRAM_SRC_UNKNOWN, align 4
  store i32 %50, i32* %3, align 4
  br label %74

51:                                               ; preds = %40
  %52 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %53 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CHIPC_OTPST, align 4
  %56 = call i32 @bhnd_bus_read_4(i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @CHIPC_OTPS_GUP_HW, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @BHND_NVRAM_SRC_OTP, align 4
  store i32 %62, i32* %3, align 4
  br label %74

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %35, %30
  %65 = load %struct.chipc_caps*, %struct.chipc_caps** %5, align 8
  %66 = getelementptr inbounds %struct.chipc_caps, %struct.chipc_caps* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CHIPC_FLASH_NONE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @BHND_NVRAM_SRC_FLASH, align 4
  store i32 %71, i32* %3, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @BHND_NVRAM_SRC_UNKNOWN, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %70, %61, %45, %27
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @CHIPC_QUIRK(%struct.chipc_softc*, i32) #1

declare dso_local i32 @bhnd_bus_read_4(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
