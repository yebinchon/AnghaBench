; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_igu_fifo_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_igu_fifo_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"dump-type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"igu-fifo\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"igu_fifo_data\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@IGU_REG_ERROR_HANDLING_DATA_VALID = common dso_local global i32 0, align 4
@IGU_FIFO_DEPTH_DWORDS = common dso_local global i32 0, align 4
@IGU_REG_ERROR_HANDLING_MEMORY = common dso_local global i32 0, align 4
@IGU_FIFO_ELEMENT_DWORDS = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32*)* @ecore_igu_fifo_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_igu_fifo_dump(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32*, i32** %10, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ecore_dump_common_global_params(%struct.ecore_hwfn* %16, %struct.ecore_ptt* %17, i32* %21, i32 %22, i32 1)
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ecore_dump_str_param(i32* %29, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ecore_dump_section_hdr(i32* %37, i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ecore_dump_num_param(i32* %46, i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %100

53:                                               ; preds = %5
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %55 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %56 = load i32, i32* @IGU_REG_ERROR_HANDLING_DATA_VALID, align 4
  %57 = call i64 @ecore_rd(%struct.ecore_hwfn* %54, %struct.ecore_ptt* %55, i32 %56)
  %58 = icmp sgt i64 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %88, %53
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @IGU_FIFO_DEPTH_DWORDS, align 4
  %66 = icmp slt i32 %64, %65
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i1 [ false, %60 ], [ %66, %63 ]
  br i1 %68, label %69, label %92

69:                                               ; preds = %67
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %71 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* @IGU_REG_ERROR_HANDLING_MEMORY, align 4
  %77 = call i32 @BYTES_TO_DWORDS(i32 %76)
  %78 = load i32, i32* @IGU_FIFO_ELEMENT_DWORDS, align 4
  %79 = call i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn* %70, %struct.ecore_ptt* %71, i32* %75, i32 1, i32 %77, i32 %78, i32 1)
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %13, align 4
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %83 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %84 = load i32, i32* @IGU_REG_ERROR_HANDLING_DATA_VALID, align 4
  %85 = call i64 @ecore_rd(%struct.ecore_hwfn* %82, %struct.ecore_ptt* %83, i32 %84)
  %86 = icmp sgt i64 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %69
  %89 = load i32, i32* @IGU_FIFO_ELEMENT_DWORDS, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %60

92:                                               ; preds = %67
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @ecore_dump_num_param(i32* %96, i32 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %104

100:                                              ; preds = %5
  %101 = load i32, i32* @IGU_FIFO_DEPTH_DWORDS, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %100, %92
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @ecore_dump_last_section(i32* %105, i32 %106, i32 %107)
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32*, i32** %10, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @DBG_STATUS_OK, align 4
  ret i32 %113
}

declare dso_local i32 @ecore_dump_common_global_params(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32) #1

declare dso_local i32 @ecore_dump_str_param(i32*, i32, i8*, i8*) #1

declare dso_local i32 @ecore_dump_section_hdr(i32*, i32, i8*, i32) #1

declare dso_local i32 @ecore_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

declare dso_local i32 @ecore_dump_last_section(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
