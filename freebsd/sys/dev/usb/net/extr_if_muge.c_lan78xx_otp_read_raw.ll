; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_otp_read_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_otp_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.muge_softc = type { i32 }

@OTP_PWR_DN = common dso_local global i32 0, align 4
@OTP_PWR_DN_PWRDN_N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"OTP off? failed to read data\0A\00", align 1
@OTP_ADDR1 = common dso_local global i32 0, align 4
@OTP_ADDR1_15_11 = common dso_local global i32 0, align 4
@OTP_ADDR2 = common dso_local global i32 0, align 4
@OTP_ADDR2_10_3 = common dso_local global i32 0, align 4
@OTP_FUNC_CMD = common dso_local global i32 0, align 4
@OTP_FUNC_CMD_READ_ = common dso_local global i32 0, align 4
@OTP_CMD_GO = common dso_local global i32 0, align 4
@OTP_CMD_GO_GO_ = common dso_local global i32 0, align 4
@OTP_STATUS = common dso_local global i32 0, align 4
@OTP_STATUS_BUSY_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"OTP busy failed to read data\0A\00", align 1
@OTP_RD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.muge_softc*, i32, i64*, i32)* @lan78xx_otp_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_otp_read_raw(%struct.muge_softc* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.muge_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.muge_softc* %0, %struct.muge_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %14 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_owned(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %20 = call i32 @MUGE_LOCK(%struct.muge_softc* %19)
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %23 = load i32, i32* @OTP_PWR_DN, align 4
  %24 = call i32 @lan78xx_read_reg(%struct.muge_softc* %22, i32 %23, i32* %11)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @OTP_PWR_DN_PWRDN_N, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %21
  %30 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %31 = load i32, i32* @OTP_PWR_DN, align 4
  %32 = call i32 @lan78xx_write_reg(%struct.muge_softc* %30, i32 %31, i32 0)
  %33 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %34 = load i32, i32* @OTP_PWR_DN, align 4
  %35 = load i32, i32* @OTP_PWR_DN_PWRDN_N, align 4
  %36 = call i32 @lan78xx_wait_for_bits(%struct.muge_softc* %33, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %41 = call i32 @muge_warn_printf(%struct.muge_softc* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %101

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %21
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %97, %43
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %100

48:                                               ; preds = %44
  %49 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %50 = load i32, i32* @OTP_ADDR1, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %51, %52
  %54 = ashr i32 %53, 8
  %55 = load i32, i32* @OTP_ADDR1_15_11, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @lan78xx_write_reg(%struct.muge_softc* %49, i32 %50, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %59 = load i32, i32* @OTP_ADDR2, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @OTP_ADDR2_10_3, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @lan78xx_write_reg(%struct.muge_softc* %58, i32 %59, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %67 = load i32, i32* @OTP_FUNC_CMD, align 4
  %68 = load i32, i32* @OTP_FUNC_CMD_READ_, align 4
  %69 = call i32 @lan78xx_write_reg(%struct.muge_softc* %66, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %71 = load i32, i32* @OTP_CMD_GO, align 4
  %72 = load i32, i32* @OTP_CMD_GO_GO_, align 4
  %73 = call i32 @lan78xx_write_reg(%struct.muge_softc* %70, i32 %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %75 = load i32, i32* @OTP_STATUS, align 4
  %76 = load i32, i32* @OTP_STATUS_BUSY_, align 4
  %77 = call i32 @lan78xx_wait_for_bits(%struct.muge_softc* %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %48
  %81 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %82 = call i32 @muge_warn_printf(%struct.muge_softc* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %101

83:                                               ; preds = %48
  %84 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %85 = load i32, i32* @OTP_RD_DATA, align 4
  %86 = call i32 @lan78xx_read_reg(%struct.muge_softc* %84, i32 %85, i32* %11)
  store i32 %86, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %101

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, 255
  %92 = sext i32 %91 to i64
  %93 = load i64*, i64** %7, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %92, i64* %96, align 8
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %44

100:                                              ; preds = %44
  br label %101

101:                                              ; preds = %100, %88, %80, %39
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %106 = call i32 @MUGE_UNLOCK(%struct.muge_softc* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @MUGE_LOCK(%struct.muge_softc*) #1

declare dso_local i32 @lan78xx_read_reg(%struct.muge_softc*, i32, i32*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.muge_softc*, i32, i32) #1

declare dso_local i32 @lan78xx_wait_for_bits(%struct.muge_softc*, i32, i32) #1

declare dso_local i32 @muge_warn_printf(%struct.muge_softc*, i8*) #1

declare dso_local i32 @MUGE_UNLOCK(%struct.muge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
