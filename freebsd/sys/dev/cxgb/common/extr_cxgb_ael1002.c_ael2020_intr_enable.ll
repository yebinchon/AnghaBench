; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2020_intr_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2020_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }
%struct.reg_val = type { i32, i32, i32, i32 }

@MDIO_DEV_PMA_PMD = common dso_local global i32 0, align 4
@AEL2020_GPIO_CFG = common dso_local global i32 0, align 4
@AEL2020_GPIO_LSTAT = common dso_local global i32 0, align 4
@AEL2020_GPIO_CTRL = common dso_local global i32 0, align 4
@AEL2020_GPIO_MODDET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @ael2020_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2020_intr_enable(%struct.cphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca [4 x %struct.reg_val], align 16
  %5 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  %6 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %6, i32 0, i32 0
  %8 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  store i32 %8, i32* %7, align 16
  %9 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %6, i32 0, i32 1
  %10 = load i32, i32* @AEL2020_GPIO_CFG, align 4
  %11 = load i32, i32* @AEL2020_GPIO_LSTAT, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %6, i32 0, i32 2
  store i32 65535, i32* %13, align 8
  %14 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %6, i32 0, i32 3
  store i32 4, i32* %14, align 4
  %15 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %6, i64 1
  %16 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %15, i32 0, i32 0
  %17 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  store i32 %17, i32* %16, align 16
  %18 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %15, i32 0, i32 1
  %19 = load i32, i32* @AEL2020_GPIO_CTRL, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %15, i32 0, i32 2
  store i32 65535, i32* %20, align 8
  %21 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %15, i32 0, i32 3
  %22 = load i32, i32* @AEL2020_GPIO_LSTAT, align 4
  %23 = mul nsw i32 %22, 4
  %24 = shl i32 8, %23
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %15, i64 1
  %26 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %25, i32 0, i32 0
  %27 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  store i32 %27, i32* %26, align 16
  %28 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %25, i32 0, i32 1
  %29 = load i32, i32* @AEL2020_GPIO_CTRL, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %25, i32 0, i32 2
  store i32 65535, i32* %30, align 8
  %31 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %25, i32 0, i32 3
  %32 = load i32, i32* @AEL2020_GPIO_MODDET, align 4
  %33 = mul nsw i32 %32, 4
  %34 = shl i32 2, %33
  store i32 %34, i32* %31, align 4
  %35 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %25, i64 1
  %36 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %35, i32 0, i32 0
  store i32 0, i32* %36, align 16
  %37 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %35, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %35, i32 0, i32 2
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %35, i32 0, i32 3
  store i32 0, i32* %39, align 4
  %40 = load %struct.cphy*, %struct.cphy** %3, align 8
  %41 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %4, i64 0, i64 0
  %42 = call i32 @set_phy_regs(%struct.cphy* %40, %struct.reg_val* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %55

47:                                               ; preds = %1
  %48 = load %struct.cphy*, %struct.cphy** %3, align 8
  %49 = call i32 @t3_phy_lasi_intr_enable(%struct.cphy* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %52, %45
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @set_phy_regs(%struct.cphy*, %struct.reg_val*) #1

declare dso_local i32 @t3_phy_lasi_intr_enable(%struct.cphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
