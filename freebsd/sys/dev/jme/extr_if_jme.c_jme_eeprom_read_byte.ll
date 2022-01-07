; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_eeprom_read_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_eeprom_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32 }

@JME_TIMEOUT = common dso_local global i32 0, align 4
@JME_SMBCSR = common dso_local global i32 0, align 4
@SMBCSR_HW_BUSY_MASK = common dso_local global i32 0, align 4
@SMBCSR_HW_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EEPROM idle timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SMBINTF_ADDR_SHIFT = common dso_local global i32 0, align 4
@SMBINTF_ADDR_MASK = common dso_local global i32 0, align 4
@JME_SMBINTF = common dso_local global i32 0, align 4
@SMBINTF_RD = common dso_local global i32 0, align 4
@SMBINTF_CMD_TRIGGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"EEPROM read timeout!\0A\00", align 1
@SMBINTF_RD_DATA_MASK = common dso_local global i32 0, align 4
@SMBINTF_RD_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_softc*, i32, i32*)* @jme_eeprom_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_eeprom_read_byte(%struct.jme_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @JME_TIMEOUT, align 4
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %27, %3
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %17 = load i32, i32* @JME_SMBCSR, align 4
  %18 = call i32 @CSR_READ_4(%struct.jme_softc* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SMBCSR_HW_BUSY_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @SMBCSR_HW_IDLE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %30

25:                                               ; preds = %15
  %26 = call i32 @DELAY(i32 1)
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %9, align 4
  br label %12

30:                                               ; preds = %24, %12
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %35 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %38, i32* %4, align 4
  br label %90

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SMBINTF_ADDR_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @SMBINTF_ADDR_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %46 = load i32, i32* @JME_SMBINTF, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SMBINTF_RD, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SMBINTF_CMD_TRIGGER, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @CSR_WRITE_4(%struct.jme_softc* %45, i32 %46, i32 %51)
  %53 = load i32, i32* @JME_TIMEOUT, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %68, %39
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = call i32 @DELAY(i32 1)
  %59 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %60 = load i32, i32* @JME_SMBINTF, align 4
  %61 = call i32 @CSR_READ_4(%struct.jme_softc* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SMBINTF_CMD_TRIGGER, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %71

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %9, align 4
  br label %54

71:                                               ; preds = %66, %54
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %76 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %79, i32* %4, align 4
  br label %90

80:                                               ; preds = %71
  %81 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %82 = load i32, i32* @JME_SMBINTF, align 4
  %83 = call i32 @CSR_READ_4(%struct.jme_softc* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @SMBINTF_RD_DATA_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @SMBINTF_RD_DATA_SHIFT, align 4
  %88 = ashr i32 %86, %87
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %80, %74, %33
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
