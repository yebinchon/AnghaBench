; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_personality_cnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_personality_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.public_func = type { i32 }

@ECORE_PCI_DEFAULT = common dso_local global i32 0, align 4
@FUNC_MF_CFG_FUNC_HIDE = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_get_personality_cnt(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.public_func, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @ECORE_PCI_DEFAULT, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @NUM_OF_ENG_PFS(i32 %15)
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %51, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %23 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @MCP_PF_ID_BY_REL(%struct.ecore_hwfn* %24, i32 %25)
  %27 = call i32 @ecore_mcp_get_shmem_func(%struct.ecore_hwfn* %22, %struct.ecore_ptt* %23, %struct.public_func* %8, i32 %26)
  %28 = getelementptr inbounds %struct.public_func, %struct.public_func* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FUNC_MF_CFG_FUNC_HIDE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %51

34:                                               ; preds = %21
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %36 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %37 = call i64 @ecore_mcp_get_shmem_proto(%struct.ecore_hwfn* %35, %struct.public_func* %8, %struct.ecore_ptt* %36, i32* %7)
  %38 = load i64, i64* @ECORE_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %51

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %40, %33
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %17

54:                                               ; preds = %17
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i32 @NUM_OF_ENG_PFS(i32) #1

declare dso_local i32 @ecore_mcp_get_shmem_func(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.public_func*, i32) #1

declare dso_local i32 @MCP_PF_ID_BY_REL(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @ecore_mcp_get_shmem_proto(%struct.ecore_hwfn*, %struct.public_func*, %struct.ecore_ptt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
