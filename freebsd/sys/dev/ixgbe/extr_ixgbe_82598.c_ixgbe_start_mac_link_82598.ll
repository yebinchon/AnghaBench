; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_start_mac_link_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_start_mac_link_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ixgbe_start_mac_link_82598\00", align 1
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_AN_RESTART = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_MASK = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_AN = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_AN_1G_AN = common dso_local global i64 0, align 8
@IXGBE_AUTO_NEG_TIME = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_KX_AN_COMP = common dso_local global i64 0, align 8
@IXGBE_ERR_AUTONEG_NOT_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Autonegotiation did not complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32)* @ixgbe_start_mac_link_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_start_mac_link_82598(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = load i32, i32* @IXGBE_AUTOC, align 4
  %13 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* @IXGBE_AUTOC_AN_RESTART, align 8
  %15 = load i64, i64* %5, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %5, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = load i32, i32* @IXGBE_AUTOC, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %17, i32 %18, i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_AN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %32 = and i64 %30, %31
  %33 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_AN_1G_AN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29, %23
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @IXGBE_AUTO_NEG_TIME, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = load i32, i32* @IXGBE_LINKS, align 4
  %43 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %41, i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @IXGBE_LINKS_KX_AN_COMP, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %54

49:                                               ; preds = %40
  %50 = call i32 @msec_delay(i32 100)
  br label %51

51:                                               ; preds = %49
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %36

54:                                               ; preds = %48, %36
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @IXGBE_LINKS_KX_AN_COMP, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @IXGBE_ERR_AUTONEG_NOT_COMPLETE, align 4
  store i32 %60, i32* %8, align 4
  %61 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62, %29
  br label %64

64:                                               ; preds = %63, %2
  %65 = call i32 @msec_delay(i32 50)
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
