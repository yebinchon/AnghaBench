; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc8211.c_t3_vsc8211_phy_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc8211.c_t3_vsc8211_phy_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.cphy }
%struct.cphy = type { i32, i8*, i32* }
%struct.mdio_ops = type { i32 }

@vsc8211_ops = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"10/100/1000BASE-T\00", align 1
@VSC8211_EXT_CTRL = common dso_local global i32 0, align 4
@VSC_CTRL_MEDIA_MODE_HI = common dso_local global i32 0, align 4
@VSC8211_LED_CTRL = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"1000BASE-X\00", align 1
@vsc8211_fiber_ops = common dso_local global i32 0, align 4
@VSC8211_EXT_PAGE_AXS = common dso_local global i32 0, align 4
@VSC8211_SIGDET_CTRL = common dso_local global i32 0, align 4
@VSC_CTRL_CLAUSE37_VIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_vsc8211_phy_prep(%struct.TYPE_4__* %0, i32 %1, %struct.mdio_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdio_ops*, align 8
  %8 = alloca %struct.cphy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mdio_ops* %2, %struct.mdio_ops** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store %struct.cphy* %12, %struct.cphy** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mdio_ops*, %struct.mdio_ops** %7, align 8
  %21 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %22 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SUPPORTED_MII, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SUPPORTED_TP, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SUPPORTED_IRQ, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @cphy_init(%struct.cphy* %14, i32 %17, %struct.TYPE_4__* %18, i32 %19, i32* @vsc8211_ops, %struct.mdio_ops* %20, i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @msleep(i32 20)
  %36 = load %struct.cphy*, %struct.cphy** %8, align 8
  %37 = load i32, i32* @VSC8211_EXT_CTRL, align 4
  %38 = call i32 @mdio_read(%struct.cphy* %36, i32 0, i32 %37, i32* %10)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %98

43:                                               ; preds = %3
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @VSC_CTRL_MEDIA_MODE_HI, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.cphy*, %struct.cphy** %8, align 8
  %50 = load i32, i32* @VSC8211_LED_CTRL, align 4
  %51 = call i32 @mdio_write(%struct.cphy* %49, i32 0, i32 %50, i32 256)
  store i32 %51, i32* %4, align 4
  br label %98

52:                                               ; preds = %43
  %53 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %54 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SUPPORTED_MII, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SUPPORTED_IRQ, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.cphy*, %struct.cphy** %8, align 8
  %63 = getelementptr inbounds %struct.cphy, %struct.cphy* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.cphy*, %struct.cphy** %8, align 8
  %65 = getelementptr inbounds %struct.cphy, %struct.cphy* %64, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %65, align 8
  %66 = load %struct.cphy*, %struct.cphy** %8, align 8
  %67 = getelementptr inbounds %struct.cphy, %struct.cphy* %66, i32 0, i32 2
  store i32* @vsc8211_fiber_ops, i32** %67, align 8
  %68 = load %struct.cphy*, %struct.cphy** %8, align 8
  %69 = load i32, i32* @VSC8211_EXT_PAGE_AXS, align 4
  %70 = call i32 @mdio_write(%struct.cphy* %68, i32 0, i32 %69, i32 1)
  store i32 %70, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %52
  %73 = load %struct.cphy*, %struct.cphy** %8, align 8
  %74 = load i32, i32* @VSC8211_SIGDET_CTRL, align 4
  %75 = call i32 @mdio_write(%struct.cphy* %73, i32 0, i32 %74, i32 1)
  store i32 %75, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %72
  %78 = load %struct.cphy*, %struct.cphy** %8, align 8
  %79 = load i32, i32* @VSC8211_EXT_PAGE_AXS, align 4
  %80 = call i32 @mdio_write(%struct.cphy* %78, i32 0, i32 %79, i32 0)
  store i32 %80, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %77
  %83 = load %struct.cphy*, %struct.cphy** %8, align 8
  %84 = load i32, i32* @VSC8211_EXT_CTRL, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @VSC_CTRL_CLAUSE37_VIEW, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @mdio_write(%struct.cphy* %83, i32 0, i32 %84, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %82
  %91 = load %struct.cphy*, %struct.cphy** %8, align 8
  %92 = call i32 @vsc8211_reset(%struct.cphy* %91, i32 0)
  store i32 %92, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %82, %77, %72, %52
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %98

96:                                               ; preds = %90
  %97 = call i32 @udelay(i32 5)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %94, %48, %41
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @cphy_init(%struct.cphy*, i32, %struct.TYPE_4__*, i32, i32*, %struct.mdio_ops*, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @mdio_write(%struct.cphy*, i32, i32, i32) #1

declare dso_local i32 @vsc8211_reset(%struct.cphy*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
