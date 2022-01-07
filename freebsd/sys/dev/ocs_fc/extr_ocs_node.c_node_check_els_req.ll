; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_node.c_node_check_els_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_node.c_node_check_els_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64 }

@OCS_HW_ELS_REQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"[%s] %-20s expecting ELS cmd=x%x received type=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"[%s] %-20s expecting ELS cmd=x%x received cmd=x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @node_check_els_req(%struct.TYPE_13__* %0, i32 %1, i8* %2, i64 %3, i32 (i8*, %struct.TYPE_13__*, i32, i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (i8*, %struct.TYPE_13__*, i32, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 (i8*, %struct.TYPE_13__*, i32, i8*)* %4, i32 (i8*, %struct.TYPE_13__*, i32, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %15, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %17, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = call i32 @ocs_assert(%struct.TYPE_13__* %20, i32 -1)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %14, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %26 = call i32 @ocs_assert(%struct.TYPE_13__* %25, i32 -1)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %15, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %31 = call i32 @ocs_assert(%struct.TYPE_13__* %30, i32 -1)
  %32 = load i8*, i8** %10, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %16, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %35 = call i32 @ocs_assert(%struct.TYPE_13__* %34, i32 -1)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = call i32 @ocs_assert(%struct.TYPE_13__* %38, i32 -1)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %17, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %48 = call i32 @ocs_assert(%struct.TYPE_13__* %47, i32 -1)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OCS_HW_ELS_REQ, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %6
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %56, %6
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @OCS_HW_ELS_REQ, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %62
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @ocs_log_debug(%struct.TYPE_13__* %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %76, i8* %77, i64 %78, i64 %83)
  br label %98

85:                                               ; preds = %62
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @ocs_log_debug(%struct.TYPE_13__* %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %91, i8* %92, i64 %93, i64 %96)
  br label %98

98:                                               ; preds = %85, %70
  %99 = load i32 (i8*, %struct.TYPE_13__*, i32, i8*)*, i32 (i8*, %struct.TYPE_13__*, i32, i8*)** %12, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 %99(i8* %100, %struct.TYPE_13__* %101, i32 %102, i8* %103)
  store i32 -1, i32* %7, align 4
  br label %106

105:                                              ; preds = %56
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %105, %98
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @ocs_assert(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_13__*, i8*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
