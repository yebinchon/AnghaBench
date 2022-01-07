; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175c.c_ip175c_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175c.c_ip175c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17x_softc = type { i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@IP175C_MII_PHY = common dso_local global i32 0, align 4
@IP175C_MII_CTL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"MII: %x\0A\00", align 1
@IP175C_MII_MII1_RMII_EN = common dso_local global i32 0, align 4
@ip175c_reset = common dso_local global i32 0, align 4
@ip175c_hw_setup = common dso_local global i32 0, align 4
@ip175c_get_vlan_mode = common dso_local global i32 0, align 4
@ip175c_set_vlan_mode = common dso_local global i32 0, align 4
@IP175X_CPU_PORT = common dso_local global i32 0, align 4
@IP175X_NUM_PORTS = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"type: IP175C\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip175c_attach(%struct.ip17x_softc* %0) #0 {
  %2 = alloca %struct.ip17x_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ip17x_softc* %0, %struct.ip17x_softc** %2, align 8
  %4 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IP175C_MII_PHY, align 4
  %8 = load i32, i32* @IP175C_MII_CTL_REG, align 4
  %9 = call i32 @ip17x_readphy(i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i32, i8*, ...) @device_printf(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @IP175C_MII_MII1_RMII_EN, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, 16
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* @ip175c_reset, align 4
  %27 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @ip175c_hw_setup, align 4
  %31 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @ip175c_get_vlan_mode, align 4
  %35 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @ip175c_set_vlan_mode, align 4
  %39 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @IP175X_CPU_PORT, align 4
  %43 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @IP175X_NUM_PORTS, align 4
  %46 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %47 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ETHERSWITCH_VLAN_PORT, align 4
  %49 = load i32, i32* @ETHERSWITCH_VLAN_DOT1Q, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %52 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %55 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ip17x_readphy(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
