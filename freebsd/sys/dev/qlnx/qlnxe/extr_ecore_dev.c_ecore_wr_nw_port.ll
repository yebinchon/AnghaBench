; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_wr_nw_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_wr_nw_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"CMD: %08x, ADDR: 0x%08x, DATA: %08x:%08x\0A\00", align 1
@CNIG_REG_PMEG_IF_CMD_BB = common dso_local global i32 0, align 4
@PMEG_IF_BYTE_COUNT = common dso_local global i32 0, align 4
@CNIG_REG_PMEG_IF_ADDR_BB = common dso_local global i32 0, align 4
@CNIG_REG_PMEG_IF_WRDATA_BB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32)* @ecore_wr_nw_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_wr_nw_port(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %14 = load i32, i32* @ECORE_MSG_LINK, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %17 = load i32, i32* @CNIG_REG_PMEG_IF_CMD_BB, align 4
  %18 = call i32 @ecore_rd(%struct.ecore_hwfn* %15, %struct.ecore_ptt* %16, i32 %17)
  %19 = load i32, i32* @PMEG_IF_BYTE_COUNT, align 4
  %20 = shl i32 8, %19
  %21 = or i32 %18, %20
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 %22, 25
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %23, %25
  %27 = load i32, i32* %12, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %29, 32
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %13, i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %28, i32 %30, i32 %31)
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %35 = load i32, i32* @CNIG_REG_PMEG_IF_CMD_BB, align 4
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %37 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %38 = load i32, i32* @CNIG_REG_PMEG_IF_CMD_BB, align 4
  %39 = call i32 @ecore_rd(%struct.ecore_hwfn* %36, %struct.ecore_ptt* %37, i32 %38)
  %40 = and i32 %39, -65282
  %41 = load i32, i32* @PMEG_IF_BYTE_COUNT, align 4
  %42 = shl i32 8, %41
  %43 = or i32 %40, %42
  %44 = call i32 @ecore_wr(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34, i32 %35, i32 %43)
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %46 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %47 = load i32, i32* @CNIG_REG_PMEG_IF_ADDR_BB, align 4
  %48 = load i32, i32* %11, align 4
  %49 = shl i32 %48, 25
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %49, %51
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @ecore_wr(%struct.ecore_hwfn* %45, %struct.ecore_ptt* %46, i32 %47, i32 %54)
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %58 = load i32, i32* @CNIG_REG_PMEG_IF_WRDATA_BB, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @ecore_wr(%struct.ecore_hwfn* %56, %struct.ecore_ptt* %57, i32 %58, i32 %59)
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %62 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %63 = load i32, i32* @CNIG_REG_PMEG_IF_WRDATA_BB, align 4
  %64 = load i32, i32* %10, align 4
  %65 = ashr i32 %64, 32
  %66 = call i32 @ecore_wr(%struct.ecore_hwfn* %61, %struct.ecore_ptt* %62, i32 %63, i32 %65)
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
