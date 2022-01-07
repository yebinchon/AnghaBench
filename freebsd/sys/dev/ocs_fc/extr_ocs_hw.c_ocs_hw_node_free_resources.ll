; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_node_free_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_node_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i32, i32, i64 }

@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bad parameter(s) hw=%p rnode=%p\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i8* null, align 8
@SLI_RSRC_FCOE_RPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"FCOE_RPI free failure RPI %d addr=%#x\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Error: rnode is still attached\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_node_free_resources(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = call i32 (i32, i8*, ...) @ocs_log_err(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %14, %struct.TYPE_5__* %15)
  %17 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %17, i32* %3, align 4
  br label %79

18:                                               ; preds = %10
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %77

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %70, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** @UINT32_MAX, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* @SLI_RSRC_FCOE_RPI, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @sli_resource_free(i32* %36, i32 %37, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %49, i32 %52)
  %54 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %54, i32* %6, align 4
  br label %68

55:                                               ; preds = %34
  %56 = load i8*, i8** @FALSE, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @UINT32_MAX, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @UINT32_MAX, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @FALSE, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %55, %43
  br label %69

69:                                               ; preds = %68, %28
  br label %76

70:                                               ; preds = %23
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %70, %69
  br label %77

77:                                               ; preds = %76, %18
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %13
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local i64 @sli_resource_free(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
