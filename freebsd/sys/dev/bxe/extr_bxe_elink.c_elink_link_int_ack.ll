; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_int_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_int_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i64, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i64 }

@NIG_REG_STATUS_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@ELINK_NIG_STATUS_XGXS0_LINK10G = common dso_local global i32 0, align 4
@ELINK_NIG_STATUS_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_NIG_STATUS_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_SWITCH_CFG_10G = common dso_local global i64 0, align 8
@PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK = common dso_local global i32 0, align 4
@PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT = common dso_local global i32 0, align 4
@ELINK_NIG_STATUS_XGXS0_LINK_STATUS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Ack link up interrupt with mask 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, %struct.elink_vars*, i32)* @elink_link_int_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_link_int_ack(%struct.elink_params* %0, %struct.elink_vars* %1, i32 %2) #0 {
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %12 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %11, i32 0, i32 3
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  store %struct.bxe_softc* %13, %struct.bxe_softc** %7, align 8
  %14 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %18 = load i64, i64* @NIG_REG_STATUS_INTERRUPT_PORT0, align 8
  %19 = load i32, i32* %8, align 4
  %20 = mul nsw i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = load i32, i32* @ELINK_NIG_STATUS_XGXS0_LINK10G, align 4
  %24 = load i32, i32* @ELINK_NIG_STATUS_XGXS0_LINK_STATUS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ELINK_NIG_STATUS_SERDES0_LINK_STATUS, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @elink_bits_dis(%struct.bxe_softc* %17, i64 %22, i32 %27)
  %29 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %30 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %3
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %35 = call i64 @USES_WARPCORE(%struct.bxe_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ELINK_NIG_STATUS_XGXS0_LINK_STATUS, align 4
  store i32 %38, i32* %9, align 4
  br label %66

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @ELINK_NIG_STATUS_XGXS0_LINK10G, align 4
  store i32 %43, i32* %9, align 4
  br label %65

44:                                               ; preds = %39
  %45 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %46 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ELINK_SWITCH_CFG_10G, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %52 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* @ELINK_NIG_STATUS_XGXS0_LINK_STATUS_SIZE, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* %9, align 4
  br label %64

62:                                               ; preds = %44
  %63 = load i32, i32* @ELINK_NIG_STATUS_SERDES0_LINK_STATUS, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %50
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %37
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %71 = load i64, i64* @NIG_REG_STATUS_INTERRUPT_PORT0, align 8
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @elink_bits_en(%struct.bxe_softc* %70, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %66, %3
  ret void
}

declare dso_local i32 @elink_bits_dis(%struct.bxe_softc*, i64, i32) #1

declare dso_local i64 @USES_WARPCORE(%struct.bxe_softc*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_bits_en(%struct.bxe_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
