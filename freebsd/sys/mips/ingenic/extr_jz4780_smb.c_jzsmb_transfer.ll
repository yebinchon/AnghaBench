; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_smb.c_jzsmb_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_smb.c_jzsmb_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i64, i32 }
%struct.jzsmb_softc = type { i32, i32*, i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"i2cbuswait\00", align 1
@IIC_M_RD = common dso_local global i32 0, align 4
@SMBCON = common dso_local global i32 0, align 4
@SMBCON_STPHLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iic_msg*, i64)* @jzsmb_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jzsmb_transfer(i32 %0, %struct.iic_msg* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iic_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.jzsmb_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.jzsmb_softc* @device_get_softc(i32 %11)
  store %struct.jzsmb_softc* %12, %struct.jzsmb_softc** %7, align 8
  %13 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %14 = call i32 @SMB_LOCK(%struct.jzsmb_softc* %13)
  br label %15

15:                                               ; preds = %20, %3
  %16 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %17 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %22 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %23 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %22, i32 0, i32 3
  %24 = call i32 @mtx_sleep(%struct.jzsmb_softc* %21, i32* %23, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %27 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %29 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %89, %25
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %92

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %38, i64 %39
  %41 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %43, i64 %45
  %47 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %42, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %37, %34
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %52, i64 %53
  %55 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @jzsmb_reset_locked(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %50, %37
  %59 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %59, i64 %60
  %62 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IIC_M_RD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %69, i64 %70
  %72 = call i32 @jzsmb_transfer_read(i32 %68, %struct.iic_msg* %71)
  store i32 %72, i32* %10, align 4
  br label %84

73:                                               ; preds = %58
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %75, i64 %76
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %6, align 8
  %80 = sub i64 %79, 1
  %81 = icmp ult i64 %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @jzsmb_transfer_write(i32 %74, %struct.iic_msg* %77, i32 %82)
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %73, %67
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %93

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %30

92:                                               ; preds = %30
  br label %93

93:                                               ; preds = %92, %87
  %94 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %95 = load i32, i32* @SMBCON, align 4
  %96 = call i32 @SMB_READ(%struct.jzsmb_softc* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* @SMBCON_STPHLD, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %102 = load i32, i32* @SMBCON, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %101, i32 %102, i32 %103)
  %105 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %106 = call i32 @jzsmb_enable(%struct.jzsmb_softc* %105, i32 0)
  %107 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %108 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %107, i32 0, i32 1
  store i32* null, i32** %108, align 8
  %109 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %110 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %112 = call i32 @wakeup(%struct.jzsmb_softc* %111)
  %113 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %7, align 8
  %114 = call i32 @SMB_UNLOCK(%struct.jzsmb_softc* %113)
  %115 = load i32, i32* %10, align 4
  ret i32 %115
}

declare dso_local %struct.jzsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @SMB_LOCK(%struct.jzsmb_softc*) #1

declare dso_local i32 @mtx_sleep(%struct.jzsmb_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @jzsmb_reset_locked(i32, i64) #1

declare dso_local i32 @jzsmb_transfer_read(i32, %struct.iic_msg*) #1

declare dso_local i32 @jzsmb_transfer_write(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @SMB_READ(%struct.jzsmb_softc*, i32) #1

declare dso_local i32 @SMB_WRITE(%struct.jzsmb_softc*, i32, i32) #1

declare dso_local i32 @jzsmb_enable(%struct.jzsmb_softc*, i32) #1

declare dso_local i32 @wakeup(%struct.jzsmb_softc*) #1

declare dso_local i32 @SMB_UNLOCK(%struct.jzsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
