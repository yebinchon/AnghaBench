; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_fc_autoneg_backplane.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_fc_autoneg_backplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IXGBE_ERR_FC_NOT_NEGOTIATED = common dso_local global i32 0, align 4
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_KX_AN_COMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Auto-Negotiation did not complete\0A\00", align 1
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@IXGBE_LINKS2 = common dso_local global i32 0, align 4
@IXGBE_LINKS2_AN_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Link partner is not AN enabled\0A\00", align 1
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_ANLP1 = common dso_local global i32 0, align 4
@IXGBE_AUTOC_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_AUTOC_ASM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_ANLP1_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_ANLP1_ASM_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_fc_autoneg_backplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_fc_autoneg_backplane(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %8 = load i32, i32* @IXGBE_ERR_FC_NOT_NEGOTIATED, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = load i32, i32* @IXGBE_LINKS, align 4
  %11 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IXGBE_LINKS_KX_AN_COMP, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %27 = load i32, i32* @IXGBE_LINKS2, align 4
  %28 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @IXGBE_LINKS2_AN_SUPPORTED, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %51

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %18
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = load i32, i32* @IXGBE_AUTOC, align 4
  %39 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = load i32, i32* @IXGBE_ANLP1, align 4
  %42 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @IXGBE_AUTOC_SYM_PAUSE, align 4
  %47 = load i32, i32* @IXGBE_AUTOC_ASM_PAUSE, align 4
  %48 = load i32, i32* @IXGBE_ANLP1_SYM_PAUSE, align 4
  %49 = load i32, i32* @IXGBE_ANLP1_ASM_PAUSE, align 4
  %50 = call i32 @ixgbe_negotiate_fc(%struct.ixgbe_hw* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %36, %33, %16
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @ixgbe_negotiate_fc(%struct.ixgbe_hw*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
