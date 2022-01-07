; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_smb.c_jzsmb_transfer_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_smb.c_jzsmb_transfer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i64* }
%struct.jzsmb_softc = type { i32 }
%struct.timespec = type { i32 }

@JZSMB_TIMEOUT = common dso_local global i32 0, align 4
@SMBCON = common dso_local global i32 0, align 4
@SMBCON_STPHLD = common dso_local global i64 0, align 8
@SMBST = common dso_local global i32 0, align 4
@SMBST_TFNF = common dso_local global i64 0, align 8
@SMBDC = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"write timeout (status=0x%02x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iic_msg*, i32)* @jzsmb_transfer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jzsmb_transfer_write(i32 %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iic_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jzsmb_softc*, align 8
  %9 = alloca %struct.timespec, align 4
  %10 = alloca %struct.timespec, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.jzsmb_softc* @device_get_softc(i32 %14)
  store %struct.jzsmb_softc* %15, %struct.jzsmb_softc** %8, align 8
  %16 = load i32, i32* @JZSMB_TIMEOUT, align 4
  %17 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  store i32 %20, i32* %13, align 4
  %21 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %8, align 8
  %22 = call i32 @SMB_ASSERT_LOCKED(%struct.jzsmb_softc* %21)
  %23 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %8, align 8
  %24 = load i32, i32* @SMBCON, align 4
  %25 = call i64 @SMB_READ(%struct.jzsmb_softc* %23, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* @SMBCON_STPHLD, align 8
  %27 = load i64, i64* %11, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %11, align 8
  %29 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %8, align 8
  %30 = load i32, i32* @SMBCON, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %29, i32 %30, i64 %31)
  %33 = call i32 @getnanouptime(%struct.timespec* %9)
  %34 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %35 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %85, %3
  %39 = load i64, i64* %12, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %83, %41
  %43 = call i32 @getnanouptime(%struct.timespec* %10)
  %44 = call i32 @timespecsub(%struct.timespec* %10, %struct.timespec* %9, %struct.timespec* %10)
  %45 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %8, align 8
  %46 = load i32, i32* @SMBST, align 4
  %47 = call i64 @SMB_READ(%struct.jzsmb_softc* %45, i32 %46)
  %48 = load i64, i64* @SMBST_TFNF, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %42
  %52 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %8, align 8
  %53 = load i32, i32* @SMBDC, align 4
  %54 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %55 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %58 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %12, align 8
  %62 = sub i64 %60, %61
  %63 = getelementptr inbounds i64, i64* %56, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %52, i32 %53, i64 %64)
  br label %84

66:                                               ; preds = %42
  %67 = load i32, i32* @hz, align 4
  %68 = mul nsw i32 1000, %67
  %69 = load i32, i32* @JZSMB_TIMEOUT, align 4
  %70 = sdiv i32 %68, %69
  %71 = call i32 @DELAY(i32 %70)
  br label %72

72:                                               ; preds = %66
  %73 = call i32 @tstohz(%struct.timespec* %10)
  %74 = load i32, i32* %13, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %8, align 8
  %79 = load i32, i32* @SMBST, align 4
  %80 = call i64 @SMB_READ(%struct.jzsmb_softc* %78, i32 %79)
  %81 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @EIO, align 4
  store i32 %82, i32* %4, align 4
  br label %104

83:                                               ; preds = %72
  br label %42

84:                                               ; preds = %51
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %12, align 8
  br label %38

88:                                               ; preds = %38
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %88
  %92 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %8, align 8
  %93 = load i32, i32* @SMBCON, align 4
  %94 = call i64 @SMB_READ(%struct.jzsmb_softc* %92, i32 %93)
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* @SMBCON_STPHLD, align 8
  %96 = xor i64 %95, -1
  %97 = load i64, i64* %11, align 8
  %98 = and i64 %97, %96
  store i64 %98, i64* %11, align 8
  %99 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %8, align 8
  %100 = load i32, i32* @SMBCON, align 4
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %99, i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %91, %88
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %76
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.jzsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @SMB_ASSERT_LOCKED(%struct.jzsmb_softc*) #1

declare dso_local i64 @SMB_READ(%struct.jzsmb_softc*, i32) #1

declare dso_local i32 @SMB_WRITE(%struct.jzsmb_softc*, i32, i64) #1

declare dso_local i32 @getnanouptime(%struct.timespec*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @tstohz(%struct.timespec*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
