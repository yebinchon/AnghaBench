; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_acquire_swfw_sync_X550a.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_acquire_swfw_sync_X550a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IXGBE_GSSR_TOKEN_SM = common dso_local global i32 0, align 4
@FW_PHY_TOKEN_RETRIES = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"ixgbe_acquire_swfw_sync_X550a\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Could not acquire SWFW semaphore, Status = %d\0A\00", align 1
@IXGBE_ERR_TOKEN_RETRY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Could not acquire PHY token, Status = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Unable to retry acquiring the PHY token, Status = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Semaphore acquisition retries failed!: PHY ID = 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32)* @ixgbe_acquire_swfw_sync_X550a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_acquire_swfw_sync_X550a(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IXGBE_GSSR_TOKEN_SM, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @FW_PHY_TOKEN_RETRIES, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %14, i64* %8, align 8
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %72, %2
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @ixgbe_acquire_swfw_sync_X540(%struct.ixgbe_hw* %25, i32 %26)
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %3, align 8
  br label %80

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IXGBE_GSSR_TOKEN_SM, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %41, i64* %3, align 8
  br label %80

42:                                               ; preds = %35
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %44 = call i64 @ixgbe_get_phy_token(%struct.ixgbe_hw* %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @IXGBE_ERR_TOKEN_RETRY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @IXGBE_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %56, i64* %3, align 8
  br label %80

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ixgbe_release_swfw_sync_X540(%struct.ixgbe_hw* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @IXGBE_ERR_TOKEN_RETRY, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %3, align 8
  br label %80

72:                                               ; preds = %64
  br label %16

73:                                               ; preds = %16
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %8, align 8
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %73, %68, %55, %40, %31
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_acquire_swfw_sync_X540(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

declare dso_local i64 @ixgbe_get_phy_token(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_release_swfw_sync_X540(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
