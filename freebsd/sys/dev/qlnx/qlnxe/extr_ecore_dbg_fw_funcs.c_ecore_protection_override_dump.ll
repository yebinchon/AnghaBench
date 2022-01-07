; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_protection_override_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_protection_override_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"dump-type\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"protection-override\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"protection_override_data\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@GRC_REG_NUMBER_VALID_OVERRIDE_WINDOW = common dso_local global i32 0, align 4
@PROTECTION_OVERRIDE_ELEMENT_DWORDS = common dso_local global i32 0, align 4
@GRC_REG_PROTECTION_OVERRIDE_WINDOW = common dso_local global i32 0, align 4
@PROTECTION_OVERRIDE_DEPTH_DWORDS = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32*)* @ecore_protection_override_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_protection_override_dump(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %10, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %13, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ecore_dump_common_global_params(%struct.ecore_hwfn* %15, %struct.ecore_ptt* %16, i32* %20, i32 %21, i32 1)
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %13, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ecore_dump_str_param(i32* %28, i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %13, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ecore_dump_section_hdr(i32* %36, i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ecore_dump_num_param(i32* %45, i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %5
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %54 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %55 = load i32, i32* @GRC_REG_NUMBER_VALID_OVERRIDE_WINDOW, align 4
  %56 = call i32 @ecore_rd(%struct.ecore_hwfn* %53, %struct.ecore_ptt* %54, i32 %55)
  %57 = load i32, i32* @PROTECTION_OVERRIDE_ELEMENT_DWORDS, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %60 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* @GRC_REG_PROTECTION_OVERRIDE_WINDOW, align 4
  %66 = call i32 @BYTES_TO_DWORDS(i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn* %59, %struct.ecore_ptt* %60, i32* %64, i32 1, i32 %66, i32 %67, i32 1)
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @ecore_dump_num_param(i32* %74, i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %82

78:                                               ; preds = %5
  %79 = load i32, i32* @PROTECTION_OVERRIDE_DEPTH_DWORDS, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %78, %52
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ecore_dump_last_section(i32* %83, i32 %84, i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32*, i32** %10, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @DBG_STATUS_OK, align 4
  ret i32 %91
}

declare dso_local i32 @ecore_dump_common_global_params(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32) #1

declare dso_local i32 @ecore_dump_str_param(i32*, i32, i8*, i8*) #1

declare dso_local i32 @ecore_dump_section_hdr(i32*, i32, i8*, i32) #1

declare dso_local i32 @ecore_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

declare dso_local i32 @ecore_dump_last_section(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
