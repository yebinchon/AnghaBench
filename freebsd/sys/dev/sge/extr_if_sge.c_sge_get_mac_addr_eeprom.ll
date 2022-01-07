; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_get_mac_addr_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_get_mac_addr_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32, i32 }

@EEPROMSignature = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"invalid EEPROM signature : 0x%04x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@EEPROMMACAddr = common dso_local global i64 0, align 8
@EEPROMInfo = common dso_local global i64 0, align 8
@SGE_FLAG_RGMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_softc*, i64*)* @sge_get_mac_addr_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_get_mac_addr_eeprom(%struct.sge_softc* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge_softc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sge_softc* %0, %struct.sge_softc** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.sge_softc*, %struct.sge_softc** %4, align 8
  %9 = load i64, i64* @EEPROMSignature, align 8
  %10 = call i32 @sge_read_eeprom(%struct.sge_softc* %8, i64 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 65535
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13, %2
  %17 = load %struct.sge_softc*, %struct.sge_softc** %4, align 8
  %18 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %51, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load %struct.sge_softc*, %struct.sge_softc** %4, align 8
  %30 = load i64, i64* @EEPROMMACAddr, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sdiv i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = call i32 @sge_read_eeprom(%struct.sge_softc* %29, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64*, i64** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 0
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  store i64 %37, i64* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 8
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64 %45, i64* %50, align 8
  br label %51

51:                                               ; preds = %28
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* %7, align 4
  br label %24

54:                                               ; preds = %24
  %55 = load %struct.sge_softc*, %struct.sge_softc** %4, align 8
  %56 = load i64, i64* @EEPROMInfo, align 8
  %57 = call i32 @sge_read_eeprom(%struct.sge_softc* %55, i64 %56)
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @SGE_FLAG_RGMII, align 4
  %62 = load %struct.sge_softc*, %struct.sge_softc** %4, align 8
  %63 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %54
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @sge_read_eeprom(%struct.sge_softc*, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
