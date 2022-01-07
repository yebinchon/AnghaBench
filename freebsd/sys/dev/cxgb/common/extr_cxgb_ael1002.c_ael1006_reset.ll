; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael1006_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael1006_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_DEV_PMA_PMD = common dso_local global i32 0, align 4
@A_T3DBG_GPIO_EN = common dso_local global i32 0, align 4
@F_GPIO6_OUT_VAL = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael1006_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael1006_reset(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cphy*, %struct.cphy** %4, align 8
  %8 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @t3_phy_reset(%struct.cphy* %7, i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load %struct.cphy*, %struct.cphy** %4, align 8
  %17 = getelementptr inbounds %struct.cphy, %struct.cphy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %20 = load i32, i32* @F_GPIO6_OUT_VAL, align 4
  %21 = call i32 @t3_set_reg_field(i32 %18, i32 %19, i32 %20, i32 0)
  %22 = call i32 @msleep(i32 125)
  %23 = load %struct.cphy*, %struct.cphy** %4, align 8
  %24 = getelementptr inbounds %struct.cphy, %struct.cphy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %27 = load i32, i32* @F_GPIO6_OUT_VAL, align 4
  %28 = load i32, i32* @F_GPIO6_OUT_VAL, align 4
  %29 = call i32 @t3_set_reg_field(i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = call i32 @msleep(i32 125)
  %31 = load %struct.cphy*, %struct.cphy** %4, align 8
  %32 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @t3_phy_reset(%struct.cphy* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %15
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %56

39:                                               ; preds = %15
  %40 = call i32 @msleep(i32 125)
  %41 = load %struct.cphy*, %struct.cphy** %4, align 8
  %42 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %43 = load i32, i32* @MII_BMCR, align 4
  %44 = call i32 @t3_mdio_change_bits(%struct.cphy* %41, i32 %42, i32 %43, i32 1, i32 1)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %39
  %50 = call i32 @msleep(i32 125)
  %51 = load %struct.cphy*, %struct.cphy** %4, align 8
  %52 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %53 = load i32, i32* @MII_BMCR, align 4
  %54 = call i32 @t3_mdio_change_bits(%struct.cphy* %51, i32 %52, i32 %53, i32 1, i32 0)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %47, %37, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @t3_phy_reset(%struct.cphy*, i32, i32) #1

declare dso_local i32 @t3_set_reg_field(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @t3_mdio_change_bits(%struct.cphy*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
