; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_set_phy_speed_duplex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_set_phy_speed_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_set_phy_speed_duplex(%struct.cphy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cphy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cphy*, %struct.cphy** %5, align 8
  %11 = load i32, i32* @MII_BMCR, align 4
  %12 = call i32 @mdio_read(%struct.cphy* %10, i32 0, i32 %11, i32* %9)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %78

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load i32, i32* @BMCR_SPEED100, align 4
  %22 = load i32, i32* @BMCR_SPEED1000, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @BMCR_ANENABLE, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SPEED_100, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load i32, i32* @BMCR_SPEED100, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %45

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SPEED_1000, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @BMCR_SPEED1000, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i32, i32* @BMCR_FULLDPLX, align 4
  %51 = load i32, i32* @BMCR_ANENABLE, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @DUPLEX_FULL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* @BMCR_FULLDPLX, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %49
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @BMCR_SPEED1000, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @BMCR_ANENABLE, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.cphy*, %struct.cphy** %5, align 8
  %75 = load i32, i32* @MII_BMCR, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @mdio_write(%struct.cphy* %74, i32 0, i32 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %15
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @mdio_write(%struct.cphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
