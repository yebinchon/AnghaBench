; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_t3_ael1006_phy_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_t3_ael1006_phy_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.cphy }
%struct.cphy = type { i32 }
%struct.mdio_ops = type { i32 }

@ael1006_ops = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"10GBASE-SR\00", align 1
@phy_modtype_sr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_ael1006_phy_prep(%struct.TYPE_4__* %0, i32 %1, %struct.mdio_ops* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdio_ops*, align 8
  %7 = alloca %struct.cphy*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mdio_ops* %2, %struct.mdio_ops** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.cphy* %9, %struct.cphy** %7, align 8
  %10 = load %struct.cphy*, %struct.cphy** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.mdio_ops*, %struct.mdio_ops** %6, align 8
  %17 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %18 = load i32, i32* @SUPPORTED_AUI, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @cphy_init(%struct.cphy* %10, i32 %13, %struct.TYPE_4__* %14, i32 %15, i32* @ael1006_ops, %struct.mdio_ops* %16, i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @phy_modtype_sr, align 4
  %24 = load %struct.cphy*, %struct.cphy** %7, align 8
  %25 = getelementptr inbounds %struct.cphy, %struct.cphy* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cphy*, %struct.cphy** %7, align 8
  %27 = call i32 @ael100x_txon(%struct.cphy* %26)
  ret i32 0
}

declare dso_local i32 @cphy_init(%struct.cphy*, i32, %struct.TYPE_4__*, i32, i32*, %struct.mdio_ops*, i32, i8*) #1

declare dso_local i32 @ael100x_txon(%struct.cphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
