; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_tn1010.c_tn1010_advertise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_tn1010.c_tn1010_advertise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ADVERTISE_ENPAGE = common dso_local global i32 0, align 4
@ADVERTISE_NPAGE = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MDIO_DEV_ANEG = common dso_local global i32 0, align 4
@ANEG_ADVER = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_10000FULL = common dso_local global i32 0, align 4
@ANEG_10G_CTRL = common dso_local global i32 0, align 4
@ADVERTISE_LOOP_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @tn1010_advertise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tn1010_advertise(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  %16 = load i32, i32* @ADVERTISE_CSMA, align 4
  %17 = load i32, i32* @ADVERTISE_ENPAGE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ADVERTISE_NPAGE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ADVERTISED_Pause, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %15
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.cphy*, %struct.cphy** %4, align 8
  %40 = load i32, i32* @MDIO_DEV_ANEG, align 4
  %41 = load i32, i32* @ANEG_ADVER, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mdio_write(%struct.cphy* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %65

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @ADVERTISE_10000FULL, align 4
  br label %56

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  store i32 %57, i32* %7, align 4
  %58 = load %struct.cphy*, %struct.cphy** %4, align 8
  %59 = load i32, i32* @MDIO_DEV_ANEG, align 4
  %60 = load i32, i32* @ANEG_10G_CTRL, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ADVERTISE_LOOP_TIMING, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @mdio_write(%struct.cphy* %58, i32 %59, i32 %60, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %56, %46, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mdio_write(%struct.cphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
