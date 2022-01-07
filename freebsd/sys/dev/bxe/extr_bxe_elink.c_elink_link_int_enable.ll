; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_int_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i64, %struct.TYPE_2__*, %struct.bxe_softc* }
%struct.TYPE_2__ = type { i64 }
%struct.bxe_softc = type { i32 }

@ELINK_NIG_MASK_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@ELINK_SWITCH_CFG_10G = common dso_local global i64 0, align 8
@ELINK_NIG_MASK_XGXS0_LINK10G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"enabled XGXS interrupt\0A\00", align 1
@ELINK_INT_PHY = common dso_local global i64 0, align 8
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"enabled external phy int\0A\00", align 1
@ELINK_NIG_MASK_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"enabled SerDes interrupt\0A\00", align 1
@PORT_HW_CFG_SERDES_EXT_PHY_TYPE_NOT_CONN = common dso_local global i64 0, align 8
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"port %x, is_xgxs %x, int_status 0x%x\0A\00", align 1
@NIG_REG_STATUS_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c" int_mask 0x%x, MI_INT %x, SERDES_LINK %x\0A\00", align 1
@NIG_REG_EMAC0_STATUS_MISC_MI_INT = common dso_local global i64 0, align 8
@NIG_REG_SERDES0_STATUS_LINK_STATUS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c" 10G %x, XGXS_LINK %x\0A\00", align 1
@NIG_REG_XGXS0_STATUS_LINK10G = common dso_local global i64 0, align 8
@NIG_REG_XGXS0_STATUS_LINK_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*)* @elink_link_int_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_link_int_enable(%struct.elink_params* %0) #0 {
  %2 = alloca %struct.elink_params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %2, align 8
  %6 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %7 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %10 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %9, i32 0, i32 3
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  store %struct.bxe_softc* %11, %struct.bxe_softc** %5, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %13 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @ELINK_NIG_MASK_XGXS0_LINK_STATUS, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %18 = call i32 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ELINK_NIG_MASK_MI_INT, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %15
  br label %82

25:                                               ; preds = %1
  %26 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %27 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ELINK_SWITCH_CFG_10G, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load i32, i32* @ELINK_NIG_MASK_XGXS0_LINK10G, align 4
  %33 = load i32, i32* @ELINK_NIG_MASK_XGXS0_LINK_STATUS, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %4, align 4
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %36 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %38 = call i32 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %31
  %41 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %42 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* @ELINK_INT_PHY, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load i32, i32* @ELINK_NIG_MASK_MI_INT, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %55 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %50, %40, %31
  br label %81

57:                                               ; preds = %25
  %58 = load i32, i32* @ELINK_NIG_MASK_SERDES0_LINK_STATUS, align 4
  store i32 %58, i32* %4, align 4
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %60 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %62 = call i32 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %57
  %65 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %66 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* @ELINK_INT_PHY, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PORT_HW_CFG_SERDES_EXT_PHY_TYPE_NOT_CONN, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load i32, i32* @ELINK_NIG_MASK_MI_INT, align 4
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %79 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %74, %64, %57
  br label %81

81:                                               ; preds = %80, %56
  br label %82

82:                                               ; preds = %81, %24
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %84 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %85 = load i32, i32* %3, align 4
  %86 = mul nsw i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @elink_bits_en(%struct.bxe_softc* %83, i64 %88, i32 %89)
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %94 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ELINK_SWITCH_CFG_10G, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %100 = load i64, i64* @NIG_REG_STATUS_INTERRUPT_PORT0, align 8
  %101 = load i32, i32* %3, align 4
  %102 = mul nsw i32 %101, 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %100, %103
  %105 = call i32 @REG_RD(%struct.bxe_softc* %99, i64 %104)
  %106 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %98, i32 %105)
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %109 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %110 = load i32, i32* %3, align 4
  %111 = mul nsw i32 %110, 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %109, %112
  %114 = call i32 @REG_RD(%struct.bxe_softc* %108, i64 %113)
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %116 = load i64, i64* @NIG_REG_EMAC0_STATUS_MISC_MI_INT, align 8
  %117 = load i32, i32* %3, align 4
  %118 = mul nsw i32 %117, 24
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %116, %119
  %121 = call i32 @REG_RD(%struct.bxe_softc* %115, i64 %120)
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %123 = load i64, i64* @NIG_REG_SERDES0_STATUS_LINK_STATUS, align 8
  %124 = load i32, i32* %3, align 4
  %125 = mul nsw i32 %124, 60
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %123, %126
  %128 = call i32 @REG_RD(%struct.bxe_softc* %122, i64 %127)
  %129 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %114, i32 %121, i32 %128)
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %132 = load i64, i64* @NIG_REG_XGXS0_STATUS_LINK10G, align 8
  %133 = load i32, i32* %3, align 4
  %134 = mul nsw i32 %133, 104
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %132, %135
  %137 = call i32 @REG_RD(%struct.bxe_softc* %131, i64 %136)
  %138 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %139 = load i64, i64* @NIG_REG_XGXS0_STATUS_LINK_STATUS, align 8
  %140 = load i32, i32* %3, align 4
  %141 = mul nsw i32 %140, 104
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %139, %142
  %144 = call i32 @REG_RD(%struct.bxe_softc* %138, i64 %143)
  %145 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %137, i32 %144)
  ret void
}

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_bits_en(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @ELINK_DEBUG_P3(%struct.bxe_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
