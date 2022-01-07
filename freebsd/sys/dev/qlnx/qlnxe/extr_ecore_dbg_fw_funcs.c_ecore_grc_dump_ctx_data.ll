; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_ctx_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_ctx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i32, i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@BYTES_IN_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i8*, i32, i32, i32, i64)* @ecore_grc_dump_ctx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_dump_ctx_data(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_hwfn*, align 8
  %12 = alloca %struct.ecore_ptt*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.storm_defs*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %11, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  %25 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %26 = load i64, i64* %19, align 8
  %27 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %25, i64 %26
  store %struct.storm_defs* %27, %struct.storm_defs** %20, align 8
  store i32 0, i32* %24, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %101

31:                                               ; preds = %9
  %32 = load i32, i32* @BYTES_IN_DWORD, align 4
  %33 = load i32, i32* %17, align 4
  %34 = mul nsw i32 %33, %32
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %23, align 4
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %11, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %24, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %14, align 4
  %44 = load i8*, i8** %15, align 8
  %45 = load i32, i32* %23, align 4
  %46 = load i32, i32* %17, align 4
  %47 = mul nsw i32 %46, 32
  %48 = load i8*, i8** %15, align 8
  %49 = load %struct.storm_defs*, %struct.storm_defs** %20, align 8
  %50 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ecore_grc_dump_mem_hdr(%struct.ecore_hwfn* %38, i32* %42, i32 %43, i8* %44, i32 0, i32 %45, i32 %47, i32 0, i8* %48, i32 1, i32 %51)
  %53 = load i32, i32* %24, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %24, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %31
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %23, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %10, align 4
  br label %101

61:                                               ; preds = %31
  store i32 0, i32* %22, align 4
  br label %62

62:                                               ; preds = %96, %61
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %62
  store i32 0, i32* %21, align 4
  br label %67

67:                                               ; preds = %90, %66
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %11, align 8
  %73 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %74 = load %struct.storm_defs*, %struct.storm_defs** %20, align 8
  %75 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %21, align 4
  %78 = shl i32 %77, 9
  %79 = load i32, i32* %22, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ecore_wr(%struct.ecore_hwfn* %72, %struct.ecore_ptt* %73, i32 %76, i32 %80)
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %11, align 8
  %83 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @ecore_rd(%struct.ecore_hwfn* %82, %struct.ecore_ptt* %83, i32 %84)
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %24, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %71
  %91 = load i32, i32* %21, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %24, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %24, align 4
  br label %67

95:                                               ; preds = %67
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %22, align 4
  br label %62

99:                                               ; preds = %62
  %100 = load i32, i32* %24, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %99, %57, %30
  %102 = load i32, i32* %10, align 4
  ret i32 %102
}

declare dso_local i32 @ecore_grc_dump_mem_hdr(%struct.ecore_hwfn*, i32*, i32, i8*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
