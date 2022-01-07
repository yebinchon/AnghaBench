; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_check_polarity_ife.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_check_polarity_ife.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [25 x i8] c"e1000_check_polarity_ife\00", align 1
@IFE_PHY_EXTENDED_STATUS_CONTROL = common dso_local global i32 0, align 4
@IFE_PESC_POLARITY_REVERSED = common dso_local global i32 0, align 4
@IFE_PHY_SPECIAL_CONTROL = common dso_local global i32 0, align 4
@IFE_PSC_FORCE_POLARITY = common dso_local global i32 0, align 4
@e1000_rev_polarity_reversed = common dso_local global i32 0, align 4
@e1000_rev_polarity_normal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_check_polarity_ife(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %3, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @IFE_PHY_EXTENDED_STATUS_CONTROL, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @IFE_PESC_POLARITY_REVERSED, align 4
  store i32 %17, i32* %7, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @IFE_PHY_SPECIAL_CONTROL, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @IFE_PSC_FORCE_POLARITY, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32*)** %24, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = bitcast %struct.e1000_hw* %26 to %struct.e1000_hw.0*
  %28 = load i32, i32* %6, align 4
  %29 = call i32 %25(%struct.e1000_hw.0* %27, i32 %28, i32* %5)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %21
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
