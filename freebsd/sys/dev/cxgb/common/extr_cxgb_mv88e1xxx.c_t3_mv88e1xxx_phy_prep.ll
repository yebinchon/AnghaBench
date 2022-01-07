; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_mv88e1xxx.c_t3_mv88e1xxx_phy_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_mv88e1xxx.c_t3_mv88e1xxx_phy_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.cphy }
%struct.cphy = type { i32 }
%struct.mdio_ops = type { i32 }

@mv88e1xxx_ops = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"10/100/1000BASE-T\00", align 1
@MV88E1XXX_EXTENDED_ADDR = common dso_local global i32 0, align 4
@MV88E1XXX_EXTENDED_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mv88e1xxx_phy_prep(%struct.TYPE_4__* %0, i32 %1, %struct.mdio_ops* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdio_ops*, align 8
  %7 = alloca %struct.cphy*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mdio_ops* %2, %struct.mdio_ops** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store %struct.cphy* %10, %struct.cphy** %7, align 8
  %11 = load %struct.cphy*, %struct.cphy** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mdio_ops*, %struct.mdio_ops** %6, align 8
  %18 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %19 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SUPPORTED_MII, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SUPPORTED_TP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SUPPORTED_IRQ, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @cphy_init(%struct.cphy* %11, i32 %14, %struct.TYPE_4__* %15, i32 %16, i32* @mv88e1xxx_ops, %struct.mdio_ops* %17, i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.cphy*, %struct.cphy** %7, align 8
  %33 = load i32, i32* @MV88E1XXX_EXTENDED_ADDR, align 4
  %34 = call i32 @mdio_write(%struct.cphy* %32, i32 0, i32 %33, i32 11)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %3
  %38 = load %struct.cphy*, %struct.cphy** %7, align 8
  %39 = load i32, i32* @MV88E1XXX_EXTENDED_DATA, align 4
  %40 = call i32 @mdio_write(%struct.cphy* %38, i32 0, i32 %39, i32 32772)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %3
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load %struct.cphy*, %struct.cphy** %7, align 8
  %46 = call i32 @mv88e1xxx_downshift_set(%struct.cphy* %45, i32 1)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @cphy_init(%struct.cphy*, i32, %struct.TYPE_4__*, i32, i32*, %struct.mdio_ops*, i32, i8*) #1

declare dso_local i32 @mdio_write(%struct.cphy*, i32, i32, i32) #1

declare dso_local i32 @mv88e1xxx_downshift_set(%struct.cphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
