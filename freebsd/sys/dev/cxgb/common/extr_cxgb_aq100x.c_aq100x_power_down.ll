; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_aq100x.c_aq100x_power_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_aq100x.c_aq100x_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, i32 }

@MDIO_DEV_PMA_PMD = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PHY%d: power-up timed out (0x%x).\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @aq100x_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq100x_power_down(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 500, i32* %7, align 4
  %9 = load %struct.cphy*, %struct.cphy** %4, align 8
  %10 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %11 = load i32, i32* @MII_BMCR, align 4
  %12 = load i32, i32* @BMCR_PDOWN, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @BMCR_PDOWN, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  %20 = call i32 @t3_mdio_change_bits(%struct.cphy* %9, i32 %10, i32 %11, i32 %12, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %71

28:                                               ; preds = %23
  %29 = call i32 @msleep(i32 300)
  br label %30

30:                                               ; preds = %55, %28
  %31 = load %struct.cphy*, %struct.cphy** %4, align 8
  %32 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %33 = load i32, i32* @MII_BMCR, align 4
  %34 = call i32 @mdio_read(%struct.cphy* %31, i32 %32, i32 %33, i32* %8)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %71

39:                                               ; preds = %30
  %40 = load i32, i32* @BMCR_RESET, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 @msleep(i32 10)
  br label %47

47:                                               ; preds = %45, %39
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %30, label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.cphy*, %struct.cphy** %4, align 8
  %62 = getelementptr inbounds %struct.cphy, %struct.cphy* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cphy*, %struct.cphy** %4, align 8
  %65 = getelementptr inbounds %struct.cphy, %struct.cphy* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @CH_WARN(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %60, %37, %26
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @t3_mdio_change_bits(%struct.cphy*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @CH_WARN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
