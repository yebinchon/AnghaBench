; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_read_mdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_read_mdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32 }

@MII_SR_LINK_STATUS = common dso_local global i32 0, align 4
@MII_SR_AUTONEG_CAPS = common dso_local global i32 0, align 4
@MII_SR_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@NWAY_AR_SELECTOR_FIELD = common dso_local global i32 0, align 4
@SR_1000T_LP_FD_CAPS = common dso_local global i32 0, align 4
@SR_1000T_REMOTE_RX_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS = common dso_local global i32 0, align 4
@M88E1011_I_PHY_ID = common dso_local global i32 0, align 4
@E82545_REVISION_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unknown mdi read reg:0x%x phy:0x%x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e82545_softc*, i32, i32)* @e82545_read_mdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e82545_read_mdi(%struct.e82545_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e82545_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %33 [
    i32 128, label %9
    i32 132, label %15
    i32 129, label %17
    i32 133, label %18
    i32 131, label %24
    i32 130, label %28
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @MII_SR_LINK_STATUS, align 4
  %11 = load i32, i32* @MII_SR_AUTONEG_CAPS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MII_SR_AUTONEG_COMPLETE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %4, align 4
  br label %37

15:                                               ; preds = %3
  %16 = load i32, i32* @NWAY_AR_SELECTOR_FIELD, align 4
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load i32, i32* @SR_1000T_LP_FD_CAPS, align 4
  %20 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %4, align 4
  br label %37

24:                                               ; preds = %3
  %25 = load i32, i32* @M88E1011_I_PHY_ID, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 65535
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %3
  %29 = load i32, i32* @M88E1011_I_PHY_ID, align 4
  %30 = load i32, i32* @E82545_REVISION_4, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %31, 65535
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @DPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %28, %24, %18, %17, %15, %9
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @DPRINTF(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
