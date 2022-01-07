; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_t3_qt2045_phy_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_t3_qt2045_phy_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.cphy }
%struct.cphy = type { i32 }
%struct.mdio_ops = type { i32 }

@qt2045_ops = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"10GBASE-CX4\00", align 1
@MDIO_DEV_PMA_PMD = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_qt2045_phy_prep(%struct.TYPE_4__* %0, i32 %1, %struct.mdio_ops* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdio_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cphy*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mdio_ops* %2, %struct.mdio_ops** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store %struct.cphy* %10, %struct.cphy** %8, align 8
  %11 = load %struct.cphy*, %struct.cphy** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mdio_ops*, %struct.mdio_ops** %6, align 8
  %18 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %19 = load i32, i32* @SUPPORTED_AUI, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SUPPORTED_TP, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @cphy_init(%struct.cphy* %11, i32 %14, %struct.TYPE_4__* %15, i32 %16, i32* @qt2045_ops, %struct.mdio_ops* %17, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %3
  %27 = load %struct.cphy*, %struct.cphy** %8, align 8
  %28 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %29 = load i32, i32* @MII_BMSR, align 4
  %30 = call i32 @mdio_read(%struct.cphy* %27, i32 %28, i32 %29, i32* %7)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 65535
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.cphy*, %struct.cphy** %8, align 8
  %37 = getelementptr inbounds %struct.cphy, %struct.cphy* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32, %26, %3
  ret i32 0
}

declare dso_local i32 @cphy_init(%struct.cphy*, i32, %struct.TYPE_4__*, i32, i32*, %struct.mdio_ops*, i32, i8*) #1

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
