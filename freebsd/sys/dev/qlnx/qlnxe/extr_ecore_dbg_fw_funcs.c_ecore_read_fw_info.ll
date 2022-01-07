; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_read_fw_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_read_fw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i64 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.fw_info = type { i32, i64 }
%struct.fw_info_location = type { i32, i64 }

@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@SEM_FAST_REG_INT_RAM = common dso_local global i64 0, align 8
@SEM_FAST_REG_INT_RAM_SIZE_E5 = common dso_local global i32 0, align 4
@SEM_FAST_REG_INT_RAM_SIZE_BB_K2 = common dso_local global i32 0, align 4
@BYTES_IN_DWORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, %struct.fw_info*)* @ecore_read_fw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_read_fw_info(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, %struct.fw_info* %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fw_info*, align 8
  %9 = alloca %struct.storm_defs*, align 8
  %10 = alloca %struct.fw_info_location, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.fw_info* %3, %struct.fw_info** %8, align 8
  %14 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %14, i64 %15
  store %struct.storm_defs* %16, %struct.storm_defs** %9, align 8
  %17 = call i32 @OSAL_MEMSET(%struct.fw_info_location* %10, i32 0, i32 16)
  %18 = load %struct.fw_info*, %struct.fw_info** %8, align 8
  %19 = bitcast %struct.fw_info* %18 to %struct.fw_info_location*
  %20 = call i32 @OSAL_MEMSET(%struct.fw_info_location* %19, i32 0, i32 16)
  %21 = load %struct.storm_defs*, %struct.storm_defs** %9, align 8
  %22 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SEM_FAST_REG_INT_RAM, align 8
  %25 = add i64 %23, %24
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %27 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ECORE_IS_E5(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @SEM_FAST_REG_INT_RAM_SIZE_E5, align 4
  %33 = call i64 @DWORDS_TO_BYTES(i32 %32)
  br label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @SEM_FAST_REG_INT_RAM_SIZE_BB_K2, align 4
  %36 = call i64 @DWORDS_TO_BYTES(i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i64 [ %33, %31 ], [ %36, %34 ]
  %39 = add i64 %25, %38
  %40 = sub i64 %39, 16
  store i64 %40, i64* %11, align 8
  %41 = bitcast %struct.fw_info_location* %10 to i64*
  store i64* %41, i64** %13, align 8
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %54, %37
  %43 = load i64, i64* %12, align 8
  %44 = call i64 @BYTES_TO_DWORDS(i32 16)
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @ecore_rd(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48, i64 %49)
  %51 = load i64*, i64** %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* @BYTES_IN_DWORD, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %11, align 8
  br label %42

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.fw_info_location, %struct.fw_info_location* %10, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.fw_info_location, %struct.fw_info_location* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = icmp ule i64 %67, 16
  br i1 %68, label %69, label %95

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.fw_info_location, %struct.fw_info_location* %10, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %11, align 8
  %72 = load %struct.fw_info*, %struct.fw_info** %8, align 8
  %73 = bitcast %struct.fw_info* %72 to i64*
  store i64* %73, i64** %13, align 8
  store i64 0, i64* %12, align 8
  br label %74

74:                                               ; preds = %88, %69
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds %struct.fw_info_location, %struct.fw_info_location* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @BYTES_TO_DWORDS(i32 %77)
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %82 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @ecore_rd(%struct.ecore_hwfn* %81, %struct.ecore_ptt* %82, i64 %83)
  %85 = load i64*, i64** %13, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* @BYTES_IN_DWORD, align 8
  %92 = load i64, i64* %11, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %11, align 8
  br label %74

94:                                               ; preds = %74
  br label %95

95:                                               ; preds = %94, %64, %60
  ret void
}

declare dso_local i32 @OSAL_MEMSET(%struct.fw_info_location*, i32, i32) #1

declare dso_local i64 @ECORE_IS_E5(i32) #1

declare dso_local i64 @DWORDS_TO_BYTES(i32) #1

declare dso_local i64 @BYTES_TO_DWORDS(i32) #1

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
