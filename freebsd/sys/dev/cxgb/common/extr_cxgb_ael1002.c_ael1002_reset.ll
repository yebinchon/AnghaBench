; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael1002_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael1002_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_DEV_PMA_PMD = common dso_local global i32 0, align 4
@AEL100X_TX_CONFIG1 = common dso_local global i32 0, align 4
@AEL1002_PWR_DOWN_HI = common dso_local global i32 0, align 4
@AEL1002_PWR_DOWN_LO = common dso_local global i32 0, align 4
@AEL1002_XFI_EQL = common dso_local global i32 0, align 4
@AEL1002_LB_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael1002_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael1002_reset(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cphy*, %struct.cphy** %4, align 8
  %8 = call i32 @ael1002_power_down(%struct.cphy* %7, i32 0)
  store i32 %8, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %2
  %11 = load %struct.cphy*, %struct.cphy** %4, align 8
  %12 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %13 = load i32, i32* @AEL100X_TX_CONFIG1, align 4
  %14 = call i32 @mdio_write(%struct.cphy* %11, i32 %12, i32 %13, i32 1)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %10
  %17 = load %struct.cphy*, %struct.cphy** %4, align 8
  %18 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %19 = load i32, i32* @AEL1002_PWR_DOWN_HI, align 4
  %20 = call i32 @mdio_write(%struct.cphy* %17, i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = load %struct.cphy*, %struct.cphy** %4, align 8
  %24 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %25 = load i32, i32* @AEL1002_PWR_DOWN_LO, align 4
  %26 = call i32 @mdio_write(%struct.cphy* %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.cphy*, %struct.cphy** %4, align 8
  %30 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %31 = load i32, i32* @AEL1002_XFI_EQL, align 4
  %32 = call i32 @mdio_write(%struct.cphy* %29, i32 %30, i32 %31, i32 24)
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.cphy*, %struct.cphy** %4, align 8
  %36 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %37 = load i32, i32* @AEL1002_LB_EN, align 4
  %38 = call i32 @t3_mdio_change_bits(%struct.cphy* %35, i32 %36, i32 %37, i32 0, i32 32)
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %28, %22, %16, %10, %2
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %52

42:                                               ; preds = %34
  %43 = load %struct.cphy*, %struct.cphy** %4, align 8
  %44 = call i32 @ael1002_get_module_type(%struct.cphy* %43, i32 300)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.cphy*, %struct.cphy** %4, align 8
  %50 = getelementptr inbounds %struct.cphy, %struct.cphy* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %42
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ael1002_power_down(%struct.cphy*, i32) #1

declare dso_local i32 @mdio_write(%struct.cphy*, i32, i32, i32) #1

declare dso_local i32 @t3_mdio_change_bits(%struct.cphy*, i32, i32, i32, i32) #1

declare dso_local i32 @ael1002_get_module_type(%struct.cphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
