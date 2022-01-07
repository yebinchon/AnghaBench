; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_ops.c_ecore_init_cmd_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_ops.c_ecore_init_cmd_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.init_write_op = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@INIT_WRITE_OP_WIDE_BUS = common dso_local global i32 0, align 4
@INIT_WRITE_OP_ADDRESS = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Need to write to %08x for Wide-bus but DMAE isn't allowed\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@INIT_WRITE_OP_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.init_write_op*, i32)* @ecore_init_cmd_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_init_cmd_wr(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.init_write_op* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca %struct.init_write_op*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store %struct.init_write_op* %2, %struct.init_write_op** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %15 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @OSAL_LE32_TO_CPU(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @INIT_WRITE_OP_WIDE_BUS, align 4
  %20 = call i32 @GET_FIELD(i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @INIT_WRITE_OP_ADDRESS, align 4
  %23 = call i32 @GET_FIELD(i32 %21, i32 %22)
  %24 = shl i32 %23, 2
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %32, i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %105

36:                                               ; preds = %28, %4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @INIT_WRITE_OP_SOURCE, align 4
  %39 = call i32 @GET_FIELD(i32 %37, i32 %38)
  switch i32 %39, label %103 [
    i32 130, label %40
    i32 128, label %51
    i32 131, label %78
    i32 129, label %85
  ]

40:                                               ; preds = %36
  %41 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %42 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @OSAL_LE32_TO_CPU(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %47 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ecore_wr(%struct.ecore_hwfn* %46, %struct.ecore_ptt* %47, i32 %48, i32 %49)
  br label %103

51:                                               ; preds = %36
  %52 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %53 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @OSAL_LE32_TO_CPU(i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = icmp sge i32 %63, 64
  br i1 %64, label %65, label %71

65:                                               ; preds = %62, %51
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %67 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @ecore_init_fill_dmae(%struct.ecore_hwfn* %66, %struct.ecore_ptt* %67, i32 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  br label %77

71:                                               ; preds = %62, %59
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %73 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @ecore_init_fill(%struct.ecore_hwfn* %72, %struct.ecore_ptt* %73, i32 %74, i32 0, i32 %75)
  br label %77

77:                                               ; preds = %71, %65
  br label %103

78:                                               ; preds = %36
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %80 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %81 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @ecore_init_cmd_array(%struct.ecore_hwfn* %79, %struct.ecore_ptt* %80, %struct.init_write_op* %81, i32 %82, i32 %83)
  store i32 %84, i32* %13, align 4
  br label %103

85:                                               ; preds = %36
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %87 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %90 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @OSAL_LE16_TO_CPU(i32 %93)
  %95 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %96 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @OSAL_LE16_TO_CPU(i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @ecore_init_rt(%struct.ecore_hwfn* %86, %struct.ecore_ptt* %87, i32 %88, i32 %94, i32 %100, i32 %101)
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %36, %85, %78, %77, %40
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %31
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @OSAL_LE32_TO_CPU(i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_init_fill_dmae(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_init_fill(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32) #1

declare dso_local i32 @ecore_init_cmd_array(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.init_write_op*, i32, i32) #1

declare dso_local i32 @ecore_init_rt(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32) #1

declare dso_local i32 @OSAL_LE16_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
