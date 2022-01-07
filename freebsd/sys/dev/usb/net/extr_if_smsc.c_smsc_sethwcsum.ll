; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_sethwcsum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_sethwcsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc_softc = type { i32 }
%struct.ifnet = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@SMSC_COE_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to read SMSC_COE_CTRL (err=%d)\0A\00", align 1
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@SMSC_COE_CTRL_RX_EN = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@SMSC_COE_CTRL_TX_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to write SMSC_COE_CTRL (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc_softc*)* @smsc_sethwcsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc_sethwcsum(%struct.smsc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smsc_softc* %0, %struct.smsc_softc** %3, align 8
  %7 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %7, i32 0, i32 0
  %9 = call %struct.ifnet* @uether_getifp(i32* %8)
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = icmp ne %struct.ifnet* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @SMSC_LOCK_ASSERT(%struct.smsc_softc* %16, i32 %17)
  %19 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %20 = load i32, i32* @SMSC_COE_CTRL, align 4
  %21 = call i32 @smsc_read_reg(%struct.smsc_softc* %19, i32 %20, i32* %5)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @smsc_warn_printf(%struct.smsc_softc* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %82

29:                                               ; preds = %15
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  %37 = load i32, i32* @IFCAP_RXCSUM, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32, i32* @SMSC_COE_CTRL_RX_EN, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %29
  %45 = load i32, i32* @SMSC_COE_CTRL_RX_EN, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %52, %55
  %57 = load i32, i32* @IFCAP_TXCSUM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @SMSC_COE_CTRL_TX_EN, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %69

64:                                               ; preds = %49
  %65 = load i32, i32* @SMSC_COE_CTRL_TX_EN, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %71 = load i32, i32* @SMSC_COE_CTRL, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @smsc_write_reg(%struct.smsc_softc* %70, i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @smsc_warn_printf(%struct.smsc_softc* %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %76, %24, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @SMSC_LOCK_ASSERT(%struct.smsc_softc*, i32) #1

declare dso_local i32 @smsc_read_reg(%struct.smsc_softc*, i32, i32*) #1

declare dso_local i32 @smsc_warn_printf(%struct.smsc_softc*, i8*, i32) #1

declare dso_local i32 @smsc_write_reg(%struct.smsc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
