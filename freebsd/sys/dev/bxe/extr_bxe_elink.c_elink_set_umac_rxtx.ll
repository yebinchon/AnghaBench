; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_umac_rxtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_umac_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@GRCBASE_UMAC1 = common dso_local global i32 0, align 4
@GRCBASE_UMAC0 = common dso_local global i32 0, align 4
@MISC_REG_RESET_REG_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_UMAC0 = common dso_local global i32 0, align 4
@UMAC_REG_COMMAND_CONFIG = common dso_local global i32 0, align 4
@UMAC_COMMAND_CONFIG_REG_TX_ENA = common dso_local global i32 0, align 4
@UMAC_COMMAND_CONFIG_REG_RX_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, i64)* @elink_set_umac_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_set_umac_rxtx(%struct.elink_params* %0, i64 %1) #0 {
  %3 = alloca %struct.elink_params*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %9 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @GRCBASE_UMAC1, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @GRCBASE_UMAC0, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %5, align 4
  %18 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %19 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %18, i32 0, i32 1
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %19, align 8
  store %struct.bxe_softc* %20, %struct.bxe_softc** %7, align 8
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %22 = load i32, i32* @MISC_REG_RESET_REG_2, align 4
  %23 = call i32 @REG_RD(%struct.bxe_softc* %21, i32 %22)
  %24 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_UMAC0, align 4
  %25 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %26 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %24, %27
  %29 = and i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %16
  br label %60

32:                                               ; preds = %16
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @UMAC_REG_COMMAND_CONFIG, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 @REG_RD(%struct.bxe_softc* %33, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_TX_ENA, align 4
  %42 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_RX_ENA, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %53

46:                                               ; preds = %32
  %47 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_TX_ENA, align 4
  %48 = load i32, i32* @UMAC_COMMAND_CONFIG_REG_RX_ENA, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %46, %40
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @UMAC_REG_COMMAND_CONFIG, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @REG_WR(%struct.bxe_softc* %54, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %31
  ret void
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
