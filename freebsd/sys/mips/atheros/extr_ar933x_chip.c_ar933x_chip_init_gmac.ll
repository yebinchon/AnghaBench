; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar933x_chip.c_ar933x_chip_init_gmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar933x_chip.c_ar933x_chip_init_gmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"ar933x_gmac\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"override_phy\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"swap_phy\00", align 1
@AR933X_ETH_CFG_SW_PHY_SWAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"swap_phy_addr\00", align 1
@AR933X_ETH_CFG_SW_PHY_ADDR_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar933x_chip_init_gmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar933x_chip_init_gmac() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i64 @resource_int_value(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %32

9:                                                ; preds = %5, %0
  %10 = call i64 @resource_int_value(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @AR933X_ETH_CFG_SW_PHY_SWAP, align 4
  %17 = load i32, i32* %2, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %12, %9
  %20 = call i64 @resource_int_value(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %1)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %1, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @AR933X_ETH_CFG_SW_PHY_ADDR_SWAP, align 4
  %27 = load i32, i32* %2, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %22, %19
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @ar933x_configure_gmac(i32 %30)
  br label %32

32:                                               ; preds = %29, %8
  ret void
}

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i32 @ar933x_configure_gmac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
