; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller.c_scif_user_parameters_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller.c_scif_user_parameters_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@SCI_SAS_ABORT_TASK = common dso_local global i64 0, align 8
@SCI_SAS_ABORT_TASK_SET = common dso_local global i64 0, align 8
@SCI_SAS_CLEAR_TASK_SET = common dso_local global i64 0, align 8
@SCI_SAS_LOGICAL_UNIT_RESET = common dso_local global i64 0, align 8
@SCI_SAS_I_T_NEXUS_RESET = common dso_local global i64 0, align 8
@SCI_SAS_CLEAR_ACA = common dso_local global i64 0, align 8
@SCI_SAS_QUERY_TASK = common dso_local global i64 0, align 8
@SCI_SAS_QUERY_TASK_SET = common dso_local global i64 0, align 8
@SCI_SAS_QUERY_ASYNCHRONOUS_EVENT = common dso_local global i64 0, align 8
@SCI_SAS_HARD_RESET = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_user_parameters_set(i64 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %21, i32* %3, align 4
  br label %156

22:                                               ; preds = %14, %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %35, i32* %3, align 4
  br label %156

36:                                               ; preds = %28
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %49, i32* %3, align 4
  br label %156

50:                                               ; preds = %42, %36
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %63, i32* %3, align 4
  br label %156

64:                                               ; preds = %56, %50
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SCI_SAS_ABORT_TASK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %136

71:                                               ; preds = %64
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SCI_SAS_ABORT_TASK_SET, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %136

78:                                               ; preds = %71
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SCI_SAS_CLEAR_TASK_SET, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %136

85:                                               ; preds = %78
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SCI_SAS_LOGICAL_UNIT_RESET, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %136

92:                                               ; preds = %85
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SCI_SAS_I_T_NEXUS_RESET, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %136

99:                                               ; preds = %92
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SCI_SAS_CLEAR_ACA, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %136

106:                                              ; preds = %99
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SCI_SAS_QUERY_TASK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %136

113:                                              ; preds = %106
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SCI_SAS_QUERY_TASK_SET, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %113
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SCI_SAS_QUERY_ASYNCHRONOUS_EVENT, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SCI_SAS_HARD_RESET, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %135, i32* %3, align 4
  br label %156

136:                                              ; preds = %127, %120, %113, %106, %99, %92, %85, %78, %71, %64
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 1
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %149, i32* %3, align 4
  br label %156

150:                                              ; preds = %142, %136
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %154 = call i32 @memcpy(i32* %152, %struct.TYPE_7__* %153, i32 32)
  %155 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %150, %148, %134, %62, %48, %34, %20
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @memcpy(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
