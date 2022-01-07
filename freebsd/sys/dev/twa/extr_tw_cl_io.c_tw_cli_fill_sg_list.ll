; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_fill_sg_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_fill_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i32, i32 }
%struct.tw_cl_sg_desc64 = type { i8*, i32 }
%struct.tw_cl_sg_desc32 = type { i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CL_64BIT_ADDRESSES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"64 bit addresses\00", align 1
@TW_CL_64BIT_SG_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"32 bit addresses\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_fill_sg_list(%struct.tw_cli_ctlr_context* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tw_cli_ctlr_context*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tw_cl_sg_desc64*, align 8
  %12 = alloca %struct.tw_cl_sg_desc64*, align 8
  %13 = alloca %struct.tw_cl_sg_desc32*, align 8
  %14 = alloca %struct.tw_cl_sg_desc32*, align 8
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %16 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (...) @tw_osl_cur_func()
  %19 = call i32 @tw_cli_dbg_printf(i32 10, i32 %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %21 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TW_CL_64BIT_ADDRESSES, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %4
  %27 = load i32*, i32** %7, align 8
  %28 = bitcast i32* %27 to %struct.tw_cl_sg_desc64*
  store %struct.tw_cl_sg_desc64* %28, %struct.tw_cl_sg_desc64** %11, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = bitcast i32* %29 to %struct.tw_cl_sg_desc64*
  store %struct.tw_cl_sg_desc64* %30, %struct.tw_cl_sg_desc64** %12, align 8
  %31 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %32 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (...) @tw_osl_cur_func()
  %35 = call i32 @tw_cli_dbg_printf(i32 10, i32 %33, i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %71, %26
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  %41 = load %struct.tw_cl_sg_desc64*, %struct.tw_cl_sg_desc64** %11, align 8
  %42 = getelementptr inbounds %struct.tw_cl_sg_desc64, %struct.tw_cl_sg_desc64* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @TW_CL_SWAP64(i32 %43)
  %45 = load %struct.tw_cl_sg_desc64*, %struct.tw_cl_sg_desc64** %12, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.tw_cl_sg_desc64, %struct.tw_cl_sg_desc64* %45, i64 %46
  %48 = getelementptr inbounds %struct.tw_cl_sg_desc64, %struct.tw_cl_sg_desc64* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 8
  %49 = load %struct.tw_cl_sg_desc64*, %struct.tw_cl_sg_desc64** %11, align 8
  %50 = getelementptr inbounds %struct.tw_cl_sg_desc64, %struct.tw_cl_sg_desc64* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @TW_CL_SWAP32(i8* %51)
  %53 = load %struct.tw_cl_sg_desc64*, %struct.tw_cl_sg_desc64** %12, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.tw_cl_sg_desc64, %struct.tw_cl_sg_desc64* %53, i64 %54
  %56 = getelementptr inbounds %struct.tw_cl_sg_desc64, %struct.tw_cl_sg_desc64* %55, i32 0, i32 0
  store i8* %52, i8** %56, align 8
  %57 = load %struct.tw_cl_sg_desc64*, %struct.tw_cl_sg_desc64** %11, align 8
  %58 = getelementptr inbounds %struct.tw_cl_sg_desc64, %struct.tw_cl_sg_desc64* %57, i32 1
  store %struct.tw_cl_sg_desc64* %58, %struct.tw_cl_sg_desc64** %11, align 8
  %59 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %60 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TW_CL_64BIT_SG_LENGTH, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %40
  %66 = load %struct.tw_cl_sg_desc64*, %struct.tw_cl_sg_desc64** %11, align 8
  %67 = bitcast %struct.tw_cl_sg_desc64* %66 to i32*
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = bitcast i32* %68 to %struct.tw_cl_sg_desc64*
  store %struct.tw_cl_sg_desc64* %69, %struct.tw_cl_sg_desc64** %11, align 8
  br label %70

70:                                               ; preds = %65, %40
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %10, align 8
  br label %36

74:                                               ; preds = %36
  br label %114

75:                                               ; preds = %4
  %76 = load i32*, i32** %7, align 8
  %77 = bitcast i32* %76 to %struct.tw_cl_sg_desc32*
  store %struct.tw_cl_sg_desc32* %77, %struct.tw_cl_sg_desc32** %13, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = bitcast i32* %78 to %struct.tw_cl_sg_desc32*
  store %struct.tw_cl_sg_desc32* %79, %struct.tw_cl_sg_desc32** %14, align 8
  %80 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %81 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (...) @tw_osl_cur_func()
  %84 = call i32 @tw_cli_dbg_printf(i32 10, i32 %82, i32 %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %85

85:                                               ; preds = %110, %75
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  %90 = load %struct.tw_cl_sg_desc32*, %struct.tw_cl_sg_desc32** %13, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %90, i64 %91
  %93 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @TW_CL_SWAP32(i8* %94)
  %96 = load %struct.tw_cl_sg_desc32*, %struct.tw_cl_sg_desc32** %14, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %96, i64 %97
  %99 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %98, i32 0, i32 1
  store i8* %95, i8** %99, align 8
  %100 = load %struct.tw_cl_sg_desc32*, %struct.tw_cl_sg_desc32** %13, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %100, i64 %101
  %103 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @TW_CL_SWAP32(i8* %104)
  %106 = load %struct.tw_cl_sg_desc32*, %struct.tw_cl_sg_desc32** %14, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %106, i64 %107
  %109 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %108, i32 0, i32 0
  store i8* %105, i8** %109, align 8
  br label %110

110:                                              ; preds = %89
  %111 = load i64, i64* %10, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %10, align 8
  br label %85

113:                                              ; preds = %85
  br label %114

114:                                              ; preds = %113, %74
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @TW_CL_SWAP64(i32) #1

declare dso_local i8* @TW_CL_SWAP32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
