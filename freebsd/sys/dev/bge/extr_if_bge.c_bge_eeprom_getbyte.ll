; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_eeprom_getbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_eeprom_getbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32 }

@BGE_MISC_LOCAL_CTL = common dso_local global i32 0, align 4
@BGE_MLC_AUTO_EEPROM = common dso_local global i32 0, align 4
@BGE_EE_ADDR = common dso_local global i32 0, align 4
@BGE_EEADDR_RESET = common dso_local global i32 0, align 4
@BGE_HALFCLK_384SCL = common dso_local global i32 0, align 4
@BGE_EE_READCMD = common dso_local global i32 0, align 4
@BGE_TIMEOUT = common dso_local global i32 0, align 4
@BGE_EEADDR_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EEPROM read timed out\0A\00", align 1
@BGE_EE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*, i32, i32*)* @bge_eeprom_getbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_eeprom_getbyte(%struct.bge_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bge_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %11 = load i32, i32* @BGE_MISC_LOCAL_CTL, align 4
  %12 = load i32, i32* @BGE_MLC_AUTO_EEPROM, align 4
  %13 = call i32 @BGE_SETBIT(%struct.bge_softc* %10, i32 %11, i32 %12)
  %14 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %15 = load i32, i32* @BGE_EE_ADDR, align 4
  %16 = load i32, i32* @BGE_EEADDR_RESET, align 4
  %17 = load i32, i32* @BGE_HALFCLK_384SCL, align 4
  %18 = call i32 @BGE_EEHALFCLK(i32 %17)
  %19 = or i32 %16, %18
  %20 = call i32 @CSR_WRITE_4(%struct.bge_softc* %14, i32 %15, i32 %19)
  %21 = call i32 @DELAY(i32 20)
  %22 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %23 = load i32, i32* @BGE_EE_ADDR, align 4
  %24 = load i32, i32* @BGE_EE_READCMD, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @CSR_WRITE_4(%struct.bge_softc* %22, i32 %23, i32 %26)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %43, %3
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BGE_TIMEOUT, align 4
  %31 = mul nsw i32 %30, 10
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = call i32 @DELAY(i32 10)
  %35 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %36 = load i32, i32* @BGE_EE_ADDR, align 4
  %37 = call i32 @CSR_READ_4(%struct.bge_softc* %35, i32 %36)
  %38 = load i32, i32* @BGE_EEADDR_DONE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %28

46:                                               ; preds = %41, %28
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @BGE_TIMEOUT, align 4
  %49 = mul nsw i32 %48, 10
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %53 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %67

56:                                               ; preds = %46
  %57 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %58 = load i32, i32* @BGE_EE_DATA, align 4
  %59 = call i32 @CSR_READ_4(%struct.bge_softc* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = srem i32 %61, 4
  %63 = mul nsw i32 %62, 8
  %64 = ashr i32 %60, %63
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %56, %51
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @BGE_SETBIT(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @BGE_EEHALFCLK(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
