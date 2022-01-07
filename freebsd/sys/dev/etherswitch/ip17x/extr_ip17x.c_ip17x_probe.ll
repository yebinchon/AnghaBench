; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x.c_ip17x_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x.c_ip17x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17x_softc = type { i32, i32 }

@MII_PHYIDR1 = common dso_local global i32 0, align 4
@MII_PHYIDR2 = common dso_local global i32 0, align 4
@IP17X_OUI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Unsupported IC+ switch. Unknown OUI: %#x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IP17X_SWITCH_IP175A = common dso_local global i32 0, align 4
@IP17X_SWITCH_IP175C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unsupported IC+ switch model: %#x\0A\00", align 1
@IP175D_ID_PHY = common dso_local global i32 0, align 4
@IP175D_ID_REG = common dso_local global i32 0, align 4
@IP17X_SWITCH_IP175D = common dso_local global i32 0, align 4
@IP17X_SWITCH_IP178C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"mii-poll\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"IC+ IP17x switch driver\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ip17x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17x_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip17x_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ip17x_softc* @device_get_softc(i32 %9)
  store %struct.ip17x_softc* %10, %struct.ip17x_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = load i32, i32* @MII_PHYIDR1, align 4
  %14 = call i64 @MDIO_READREG(i32 %12, i32 0, i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  %17 = load i32, i32* @MII_PHYIDR2, align 4
  %18 = call i64 @MDIO_READREG(i32 %16, i32 0, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @MII_OUI(i64 %19, i64 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @MII_MODEL(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @IP17X_OUI, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %85

32:                                               ; preds = %1
  %33 = load i64, i64* %6, align 8
  switch i64 %33, label %42 [
    i64 129, label %34
    i64 128, label %38
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @IP17X_SWITCH_IP175A, align 4
  %36 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %47

38:                                               ; preds = %32
  %39 = load i32, i32* @IP17X_SWITCH_IP175C, align 4
  %40 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %47

42:                                               ; preds = %32
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %85

47:                                               ; preds = %38, %34
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_get_parent(i32 %48)
  %50 = load i32, i32* @IP175D_ID_PHY, align 4
  %51 = load i32, i32* @IP175D_ID_REG, align 4
  %52 = call i64 @MDIO_READREG(i32 %49, i32 %50, i32 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp eq i64 %53, 5981
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @IP17X_SWITCH_IP175D, align 4
  %57 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %58 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %72

59:                                               ; preds = %47
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_get_parent(i32 %60)
  %62 = load i32, i32* @MII_PHYIDR1, align 4
  %63 = call i64 @MDIO_READREG(i32 %61, i32 5, i32 %62)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @IP17X_SWITCH_IP178C, align 4
  %69 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %70 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %59
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %74 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @device_get_name(i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @device_get_unit(i32 %77)
  %79 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %79, i32 0, i32 0
  %81 = call i32 @resource_int_value(i32 %76, i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %80)
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @device_set_desc_copy(i32 %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %72, %42, %27
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.ip17x_softc* @device_get_softc(i32) #1

declare dso_local i64 @MDIO_READREG(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @MII_OUI(i64, i64) #1

declare dso_local i64 @MII_MODEL(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
