; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_validate_link_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_validate_link_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_DEV_ID_82598AT2 = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_VALIDATE_LINK_READY_TIMEOUT = common dso_local global i64 0, align 8
@IXGBE_MDIO_AUTO_NEG_STATUS = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Link was indicated but link is down\0A\00", align 1
@IXGBE_ERR_LINK_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_validate_link_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_validate_link_ready(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IXGBE_DEV_ID_82598AT2, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %12, i32* %2, align 4
  br label %53

13:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %41, %13
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @IXGBE_VALIDATE_LINK_READY_TIMEOUT, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %22, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = bitcast %struct.ixgbe_hw* %24 to %struct.ixgbe_hw.0*
  %26 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_STATUS, align 4
  %27 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %28 = call i32 %23(%struct.ixgbe_hw.0* %25, i32 %26, i32 %27, i32* %5)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IXGBE_MII_AUTONEG_COMPLETE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IXGBE_MII_AUTONEG_LINK_UP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %44

39:                                               ; preds = %33, %18
  %40 = call i32 @msec_delay(i32 100)
  br label %41

41:                                               ; preds = %39
  %42 = load i64, i64* %4, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %14

44:                                               ; preds = %38, %14
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @IXGBE_VALIDATE_LINK_READY_TIMEOUT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @IXGBE_ERR_LINK_SETUP, align 4
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %48, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
