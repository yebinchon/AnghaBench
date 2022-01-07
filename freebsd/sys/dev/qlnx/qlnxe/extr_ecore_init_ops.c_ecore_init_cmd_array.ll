; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_ops.c_ecore_init_cmd_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_ops.c_ecore_init_cmd_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32*, %struct.ecore_dev* }
%struct.ecore_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.ecore_ptt = type { i32 }
%struct.init_write_op = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.init_array_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@INIT_WRITE_OP_ADDRESS = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@INIT_ARRAY_RAW_HDR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Using zipped firmware without config enabled\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@INIT_ARRAY_PATTERN_HDR_REPETITIONS = common dso_local global i32 0, align 4
@INIT_ARRAY_PATTERN_HDR_PATTERN_SIZE = common dso_local global i32 0, align 4
@INIT_ARRAY_STANDARD_HDR_SIZE = common dso_local global i32 0, align 4
@INIT_ARRAY_ZIPPED_HDR_ZIPPED_SIZE = common dso_local global i32 0, align 4
@MAX_ZIPPED_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.init_write_op*, i32, i32)* @ecore_init_cmd_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_init_cmd_array(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.init_write_op* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca %struct.init_write_op*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ecore_dev*, align 8
  %15 = alloca %union.init_array_hdr*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store %struct.init_write_op* %2, %struct.init_write_op** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %22 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @OSAL_LE32_TO_CPU(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %27 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @OSAL_LE32_TO_CPU(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @INIT_WRITE_OP_ADDRESS, align 4
  %32 = call i32 @GET_FIELD(i32 %30, i32 %31)
  %33 = shl i32 %32, 2
  store i32 %33, i32* %13, align 4
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %35 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %34, i32 0, i32 1
  %36 = load %struct.ecore_dev*, %struct.ecore_dev** %35, align 8
  store %struct.ecore_dev* %36, %struct.ecore_dev** %14, align 8
  %37 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %37, i32* %17, align 4
  %38 = load %struct.ecore_dev*, %struct.ecore_dev** %14, align 8
  %39 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = bitcast i32* %46 to %union.init_array_hdr*
  store %union.init_array_hdr* %47, %union.init_array_hdr** %15, align 8
  %48 = load %union.init_array_hdr*, %union.init_array_hdr** %15, align 8
  %49 = bitcast %union.init_array_hdr* %48 to %struct.TYPE_6__*
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @OSAL_LE32_TO_CPU(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @INIT_ARRAY_RAW_HDR_TYPE, align 4
  %55 = call i32 @GET_FIELD(i32 %53, i32 %54)
  switch i32 %55, label %108 [
    i32 128, label %56
    i32 130, label %60
    i32 129, label %94
  ]

56:                                               ; preds = %5
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %58 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %57, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %59, i32* %17, align 4
  br label %108

60:                                               ; preds = %5
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @INIT_ARRAY_PATTERN_HDR_REPETITIONS, align 4
  %63 = call i32 @GET_FIELD(i32 %61, i32 %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @INIT_ARRAY_PATTERN_HDR_PATTERN_SIZE, align 4
  %66 = call i32 @GET_FIELD(i32 %64, i32 %65)
  store i32 %66, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %67

67:                                               ; preds = %86, %60
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %67
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %73 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %18, align 4
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @ecore_init_array_dmae(%struct.ecore_hwfn* %72, %struct.ecore_ptt* %73, i32 %74, i32 %76, i32 %77, i32* %78, i32 %79, i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %93

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %20, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %18, align 4
  %90 = shl i32 %89, 2
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %13, align 4
  br label %67

93:                                               ; preds = %84, %67
  br label %108

94:                                               ; preds = %5
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @INIT_ARRAY_STANDARD_HDR_SIZE, align 4
  %97 = call i32 @GET_FIELD(i32 %95, i32 %96)
  store i32 %97, i32* %18, align 4
  %98 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %99 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %18, align 4
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @ecore_init_array_dmae(%struct.ecore_hwfn* %98, %struct.ecore_ptt* %99, i32 %100, i32 %102, i32 %103, i32* %104, i32 %105, i32 %106)
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %5, %94, %93, %56
  %109 = load i32, i32* %17, align 4
  ret i32 %109
}

declare dso_local i32 @OSAL_LE32_TO_CPU(i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_init_array_dmae(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
