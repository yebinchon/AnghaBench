; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_aq100x.c_t3_aq100x_phy_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_aq100x.c_t3_aq100x_phy_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.cphy, i32* }
%struct.cphy = type { i32 }
%struct.mdio_ops = type { i32 }

@aq100x_ops = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@SUPPORTED_MISC_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"1000/10GBASE-T\00", align 1
@F_GPIO10_OUT_VAL = common dso_local global i32 0, align 4
@F_GPIO6_OUT_VAL = common dso_local global i32 0, align 4
@A_T3DBG_GPIO_EN = common dso_local global i32 0, align 4
@MDIO_DEV_PMA_PMD = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"PHY%d: reset failed (0x%x, 0x%x).\0A\00", align 1
@BMCR_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"PHY%d: reset timed out (0x%x).\0A\00", align 1
@MDIO_DEV_VEND1 = common dso_local global i32 0, align 4
@AQ_FW_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"PHY%d: unknown firmware %d.%d\0A\00", align 1
@BMCR_PDOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"PHY%d does not start in low power mode.\0A\00", align 1
@MDIO_DEV_XGXS = common dso_local global i32 0, align 4
@AQ_XAUI_RX_CFG = common dso_local global i32 0, align 4
@AQ_XAUI_TX_CFG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"PHY%d: incorrect XAUI settings (0x%x, 0x%x).\0A\00", align 1
@AQ_XAUI_KX_CFG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"PHY%d: incorrect 1000-X settings (0x%x).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_aq100x_phy_prep(%struct.TYPE_4__* %0, i32 %1, %struct.mdio_ops* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdio_ops*, align 8
  %7 = alloca %struct.cphy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mdio_ops* %2, %struct.mdio_ops** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.cphy* %15, %struct.cphy** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %13, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %13, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.mdio_ops*, %struct.mdio_ops** %6, align 8
  %25 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %26 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SUPPORTED_TP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SUPPORTED_AUI, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SUPPORTED_MISC_IRQ, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @cphy_init(%struct.cphy* %20, i32* %21, %struct.TYPE_4__* %22, i32 %23, i32* @aq100x_ops, %struct.mdio_ops* %24, i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @F_GPIO10_OUT_VAL, align 4
  br label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @F_GPIO6_OUT_VAL, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @t3_set_reg_field(i32* %45, i32 %46, i32 %47, i32 0)
  %49 = call i32 @msleep(i32 1)
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @t3_set_reg_field(i32* %50, i32 %51, i32 %52, i32 %53)
  %55 = call i32 @msleep(i32 1000)
  store i32 500, i32* %11, align 4
  br label %56

56:                                               ; preds = %88, %43
  %57 = load %struct.cphy*, %struct.cphy** %7, align 8
  %58 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %59 = load i32, i32* @MII_BMCR, align 4
  %60 = call i32 @mdio_read(%struct.cphy* %57, i32 %58, i32 %59, i32* %8)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 65535
  br i1 %65, label %66, label %72

66:                                               ; preds = %63, %56
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32*, i8*, i32, ...) @CH_WARN(i32* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  br label %162

72:                                               ; preds = %63
  %73 = load i32, i32* @BMCR_RESET, align 4
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 @msleep(i32 10)
  br label %80

80:                                               ; preds = %78, %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, -1
  store i32 %86, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i1 [ false, %81 ], [ %87, %84 ]
  br i1 %89, label %56, label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (i32*, i8*, i32, ...) @CH_WARN(i32* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %96)
  br label %162

98:                                               ; preds = %90
  %99 = load %struct.cphy*, %struct.cphy** %7, align 8
  %100 = load i32, i32* @MDIO_DEV_VEND1, align 4
  %101 = load i32, i32* @AQ_FW_VERSION, align 4
  %102 = call i32 @mdio_read(%struct.cphy* %99, i32 %100, i32 %101, i32* %8)
  %103 = load i32, i32* %8, align 4
  %104 = icmp ult i32 %103, 277
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %8, align 4
  %109 = lshr i32 %108, 8
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, 255
  %112 = call i32 (i32*, i8*, i32, ...) @CH_WARN(i32* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %105, %98
  %114 = load %struct.cphy*, %struct.cphy** %7, align 8
  %115 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %116 = load i32, i32* @MII_BMCR, align 4
  %117 = call i32 @mdio_read(%struct.cphy* %114, i32 %115, i32 %116, i32* %8)
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @BMCR_PDOWN, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 (i32*, i8*, i32, ...) @CH_WARN(i32* %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %122, %113
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %127 = load %struct.cphy*, %struct.cphy** %7, align 8
  %128 = load i32, i32* @MDIO_DEV_XGXS, align 4
  %129 = load i32, i32* @AQ_XAUI_RX_CFG, align 4
  %130 = call i32 @mdio_read(%struct.cphy* %127, i32 %128, i32 %129, i32* %8)
  %131 = load %struct.cphy*, %struct.cphy** %7, align 8
  %132 = load i32, i32* @MDIO_DEV_XGXS, align 4
  %133 = load i32, i32* @AQ_XAUI_TX_CFG, align 4
  %134 = call i32 @mdio_read(%struct.cphy* %131, i32 %132, i32 %133, i32* %9)
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 27
  br i1 %136, label %140, label %137

137:                                              ; preds = %126
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 27
  br i1 %139, label %140, label %146

140:                                              ; preds = %137, %126
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 (i32*, i8*, i32, ...) @CH_WARN(i32* %141, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %137
  store i32 0, i32* %8, align 4
  %147 = load %struct.cphy*, %struct.cphy** %7, align 8
  %148 = load i32, i32* @MDIO_DEV_XGXS, align 4
  %149 = load i32, i32* @AQ_XAUI_KX_CFG, align 4
  %150 = call i32 @mdio_read(%struct.cphy* %147, i32 %148, i32 %149, i32* %8)
  %151 = load i32, i32* %8, align 4
  %152 = and i32 %151, 15
  %153 = icmp ne i32 %152, 15
  br i1 %153, label %154, label %159

154:                                              ; preds = %146
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (i32*, i8*, i32, ...) @CH_WARN(i32* %155, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %154, %146
  %160 = load %struct.cphy*, %struct.cphy** %7, align 8
  %161 = call i32 @aq100x_set_defaults(%struct.cphy* %160)
  br label %162

162:                                              ; preds = %159, %93, %66
  %163 = load i32, i32* %12, align 4
  ret i32 %163
}

declare dso_local i32 @cphy_init(%struct.cphy*, i32*, %struct.TYPE_4__*, i32, i32*, %struct.mdio_ops*, i32, i8*) #1

declare dso_local i32 @t3_set_reg_field(i32*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @CH_WARN(i32*, i8*, i32, ...) #1

declare dso_local i32 @aq100x_set_defaults(%struct.cphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
