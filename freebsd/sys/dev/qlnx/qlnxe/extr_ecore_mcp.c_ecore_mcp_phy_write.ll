; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_phy_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i64 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_BUSY = common dso_local global i32 0, align 4
@ECORE_PHY_CORE_WRITE = common dso_local global i64 0, align 8
@DRV_MSG_CODE_PHY_CORE_WRITE = common dso_local global i64 0, align 8
@DRV_MSG_CODE_PHY_RAW_WRITE = common dso_local global i64 0, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MCP command rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_phy_write(%struct.ecore_dev* %0, i64 %1, i64 %2, i32* %3, i64 %4) #0 {
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
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %19 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %18)
  store %struct.ecore_hwfn* %19, %struct.ecore_hwfn** %12, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %21 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %20)
  store %struct.ecore_ptt* %21, %struct.ecore_ptt** %13, align 8
  %22 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  %23 = icmp ne %struct.ecore_ptt* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ECORE_BUSY, align 4
  store i32 %25, i32* %6, align 4
  br label %59

26:                                               ; preds = %5
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @ECORE_PHY_CORE_WRITE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @DRV_MSG_CODE_PHY_CORE_WRITE, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @DRV_MSG_CODE_PHY_RAW_WRITE, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  store i64 %35, i64* %16, align 8
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %37 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = bitcast i32* %41 to i64*
  %43 = call i32 @ecore_mcp_nvm_wr_cmd(%struct.ecore_hwfn* %36, %struct.ecore_ptt* %37, i64 %38, i64 %39, i64* %14, i64* %15, i64 %40, i64* %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* @ECORE_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @DP_NOTICE(%struct.ecore_dev* %48, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %34
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %54 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %56 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  %57 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %55, %struct.ecore_ptt* %56)
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %51, %24
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_nvm_wr_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64, i64*, i64*, i64, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
