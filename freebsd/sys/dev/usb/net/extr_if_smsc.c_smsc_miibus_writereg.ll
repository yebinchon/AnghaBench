; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc_softc = type { i32, i32 }

@SMSC_MII_ADDR = common dso_local global i32 0, align 4
@SMSC_MII_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"MII is busy\0A\00", align 1
@SMSC_MII_DATA = common dso_local global i32 0, align 4
@SMSC_MII_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"MII write timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @smsc_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.smsc_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.smsc_softc* @device_get_softc(i32 %13)
  store %struct.smsc_softc* %14, %struct.smsc_softc** %10, align 8
  %15 = load %struct.smsc_softc*, %struct.smsc_softc** %10, align 8
  %16 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

21:                                               ; preds = %4
  %22 = load %struct.smsc_softc*, %struct.smsc_softc** %10, align 8
  %23 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %22, i32 0, i32 1
  %24 = call i32 @mtx_owned(i32* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.smsc_softc*, %struct.smsc_softc** %10, align 8
  %29 = call i32 @SMSC_LOCK(%struct.smsc_softc* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.smsc_softc*, %struct.smsc_softc** %10, align 8
  %32 = load i32, i32* @SMSC_MII_ADDR, align 4
  %33 = load i32, i32* @SMSC_MII_BUSY, align 4
  %34 = call i64 @smsc_wait_for_bits(%struct.smsc_softc* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.smsc_softc*, %struct.smsc_softc** %10, align 8
  %38 = call i32 @smsc_warn_printf(%struct.smsc_softc* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %68

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @htole32(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.smsc_softc*, %struct.smsc_softc** %10, align 8
  %43 = load i32, i32* @SMSC_MII_DATA, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @smsc_write_reg(%struct.smsc_softc* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 11
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 6
  %50 = or i32 %47, %49
  %51 = load i32, i32* @SMSC_MII_WRITE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SMSC_MII_BUSY, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %12, align 4
  %55 = load %struct.smsc_softc*, %struct.smsc_softc** %10, align 8
  %56 = load i32, i32* @SMSC_MII_ADDR, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @smsc_write_reg(%struct.smsc_softc* %55, i32 %56, i32 %57)
  %59 = load %struct.smsc_softc*, %struct.smsc_softc** %10, align 8
  %60 = load i32, i32* @SMSC_MII_ADDR, align 4
  %61 = load i32, i32* @SMSC_MII_BUSY, align 4
  %62 = call i64 @smsc_wait_for_bits(%struct.smsc_softc* %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %39
  %65 = load %struct.smsc_softc*, %struct.smsc_softc** %10, align 8
  %66 = call i32 @smsc_warn_printf(%struct.smsc_softc* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %39
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load %struct.smsc_softc*, %struct.smsc_softc** %10, align 8
  %73 = call i32 @SMSC_UNLOCK(%struct.smsc_softc* %72)
  br label %74

74:                                               ; preds = %71, %68
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %20
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.smsc_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @SMSC_LOCK(%struct.smsc_softc*) #1

declare dso_local i64 @smsc_wait_for_bits(%struct.smsc_softc*, i32, i32) #1

declare dso_local i32 @smsc_warn_printf(%struct.smsc_softc*, i8*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @smsc_write_reg(%struct.smsc_softc*, i32, i32) #1

declare dso_local i32 @SMSC_UNLOCK(%struct.smsc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
