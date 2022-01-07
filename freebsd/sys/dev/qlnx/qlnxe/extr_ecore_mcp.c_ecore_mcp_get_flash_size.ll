; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_flash_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_flash_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Emulation - can't get flash size\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@MCP_REG_NVM_CFG4 = common dso_local global i32 0, align 4
@MCP_REG_NVM_CFG4_FLASH_SIZE = common dso_local global i32 0, align 4
@MCP_REG_NVM_CFG4_FLASH_SIZE_SHIFT = common dso_local global i32 0, align 4
@MCP_BYTES_PER_MBIT_OFFSET = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_get_flash_size(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @CHIP_REV_IS_EMUL(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %15, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_VF(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %18
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %28 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %29 = load i32, i32* @MCP_REG_NVM_CFG4, align 4
  %30 = call i32 @ecore_rd(%struct.ecore_hwfn* %27, %struct.ecore_ptt* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MCP_REG_NVM_CFG4_FLASH_SIZE, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @MCP_REG_NVM_CFG4_FLASH_SIZE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @MCP_BYTES_PER_MBIT_OFFSET, align 4
  %38 = add nsw i32 %36, %37
  %39 = shl i32 1, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %26, %24, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @CHIP_REV_IS_EMUL(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
