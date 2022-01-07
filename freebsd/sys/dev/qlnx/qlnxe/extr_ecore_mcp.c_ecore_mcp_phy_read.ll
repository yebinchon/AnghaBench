; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_phy_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i64 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_BUSY = common dso_local global i32 0, align 4
@ECORE_PHY_CORE_READ = common dso_local global i64 0, align 8
@DRV_MSG_CODE_PHY_CORE_READ = common dso_local global i32 0, align 4
@DRV_MSG_CODE_PHY_RAW_READ = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MCP command rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_phy_read(%struct.ecore_dev* %0, i64 %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ecore_hwfn*, align 8
  %13 = alloca %struct.ecore_ptt*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %18 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %17)
  store %struct.ecore_hwfn* %18, %struct.ecore_hwfn** %12, align 8
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %20 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %19)
  store %struct.ecore_ptt* %20, %struct.ecore_ptt** %13, align 8
  %21 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  %22 = icmp ne %struct.ecore_ptt* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ECORE_BUSY, align 4
  store i32 %24, i32* %6, align 4
  br label %56

25:                                               ; preds = %5
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @ECORE_PHY_CORE_READ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @DRV_MSG_CODE_PHY_CORE_READ, align 4
  br label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @DRV_MSG_CODE_PHY_RAW_READ, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = load i64, i64* %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = bitcast i32* %38 to i64*
  %40 = call i32 @ecore_mcp_nvm_rd_cmd(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27, i32 %36, i64 %37, i64* %14, i64* %15, i64* %11, i64* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @ECORE_SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @DP_NOTICE(%struct.ecore_dev* %45, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %35
  %49 = load i64, i64* %14, align 8
  %50 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %51 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %53 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  %54 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %52, %struct.ecore_ptt* %53)
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %48, %23
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_nvm_rd_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
