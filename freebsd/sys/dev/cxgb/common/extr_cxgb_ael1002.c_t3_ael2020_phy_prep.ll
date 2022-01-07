; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_t3_ael2020_phy_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_t3_ael2020_phy_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.cphy }
%struct.cphy = type { i32 }
%struct.mdio_ops = type { i32 }

@ael2020_ops = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"10GBASE-R\00", align 1
@ael2020_reset_regs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_ael2020_phy_prep(%struct.TYPE_4__* %0, i32 %1, %struct.mdio_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdio_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cphy*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mdio_ops* %2, %struct.mdio_ops** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store %struct.cphy* %11, %struct.cphy** %9, align 8
  %12 = load %struct.cphy*, %struct.cphy** %9, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.mdio_ops*, %struct.mdio_ops** %7, align 8
  %19 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %20 = load i32, i32* @SUPPORTED_AUI, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SUPPORTED_IRQ, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @cphy_init(%struct.cphy* %12, i32 %15, %struct.TYPE_4__* %16, i32 %17, i32* @ael2020_ops, %struct.mdio_ops* %18, i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @msleep(i32 125)
  %28 = load %struct.cphy*, %struct.cphy** %9, align 8
  %29 = load i32, i32* @ael2020_reset_regs, align 4
  %30 = call i32 @set_phy_regs(%struct.cphy* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %48

35:                                               ; preds = %3
  %36 = call i32 @msleep(i32 100)
  %37 = load %struct.cphy*, %struct.cphy** %9, align 8
  %38 = call i32 @ael2020_get_module_type(%struct.cphy* %37, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.cphy*, %struct.cphy** %9, align 8
  %44 = getelementptr inbounds %struct.cphy, %struct.cphy* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.cphy*, %struct.cphy** %9, align 8
  %47 = call i32 @ael_laser_down(%struct.cphy* %46, i32 0)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %33
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @cphy_init(%struct.cphy*, i32, %struct.TYPE_4__*, i32, i32*, %struct.mdio_ops*, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_phy_regs(%struct.cphy*, i32) #1

declare dso_local i32 @ael2020_get_module_type(%struct.cphy*, i32) #1

declare dso_local i32 @ael_laser_down(%struct.cphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
