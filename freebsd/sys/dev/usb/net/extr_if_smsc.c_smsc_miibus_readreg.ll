; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc_softc = type { i32 }

@SMSC_MII_ADDR = common dso_local global i32 0, align 4
@SMSC_MII_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"MII is busy\0A\00", align 1
@SMSC_MII_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"MII read timeout\0A\00", align 1
@SMSC_MII_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @smsc_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smsc_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.smsc_softc* @device_get_softc(i32 %11)
  store %struct.smsc_softc* %12, %struct.smsc_softc** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.smsc_softc*, %struct.smsc_softc** %7, align 8
  %14 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_owned(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.smsc_softc*, %struct.smsc_softc** %7, align 8
  %20 = call i32 @SMSC_LOCK(%struct.smsc_softc* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.smsc_softc*, %struct.smsc_softc** %7, align 8
  %23 = load i32, i32* @SMSC_MII_ADDR, align 4
  %24 = load i32, i32* @SMSC_MII_BUSY, align 4
  %25 = call i64 @smsc_wait_for_bits(%struct.smsc_softc* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.smsc_softc*, %struct.smsc_softc** %7, align 8
  %29 = call i32 @smsc_warn_printf(%struct.smsc_softc* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %58

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 11
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 6
  %35 = or i32 %32, %34
  %36 = load i32, i32* @SMSC_MII_READ, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SMSC_MII_BUSY, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.smsc_softc*, %struct.smsc_softc** %7, align 8
  %41 = load i32, i32* @SMSC_MII_ADDR, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @smsc_write_reg(%struct.smsc_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.smsc_softc*, %struct.smsc_softc** %7, align 8
  %45 = load i32, i32* @SMSC_MII_ADDR, align 4
  %46 = load i32, i32* @SMSC_MII_BUSY, align 4
  %47 = call i64 @smsc_wait_for_bits(%struct.smsc_softc* %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %30
  %50 = load %struct.smsc_softc*, %struct.smsc_softc** %7, align 8
  %51 = call i32 @smsc_warn_printf(%struct.smsc_softc* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %30
  %53 = load %struct.smsc_softc*, %struct.smsc_softc** %7, align 8
  %54 = load i32, i32* @SMSC_MII_DATA, align 4
  %55 = call i32 @smsc_read_reg(%struct.smsc_softc* %53, i32 %54, i32* %10)
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @le32toh(i32 %56)
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %52, %27
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load %struct.smsc_softc*, %struct.smsc_softc** %7, align 8
  %63 = call i32 @SMSC_UNLOCK(%struct.smsc_softc* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 65535
  ret i32 %66
}

declare dso_local %struct.smsc_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @SMSC_LOCK(%struct.smsc_softc*) #1

declare dso_local i64 @smsc_wait_for_bits(%struct.smsc_softc*, i32, i32) #1

declare dso_local i32 @smsc_warn_printf(%struct.smsc_softc*, i8*) #1

declare dso_local i32 @smsc_write_reg(%struct.smsc_softc*, i32, i32) #1

declare dso_local i32 @smsc_read_reg(%struct.smsc_softc*, i32, i32*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @SMSC_UNLOCK(%struct.smsc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
