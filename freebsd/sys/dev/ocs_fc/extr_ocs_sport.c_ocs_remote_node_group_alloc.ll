; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_sport.c_ocs_remote_node_group_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_sport.c_ocs_remote_node_group_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_16__*, i32, i32, i32, i32, i32, %struct.TYPE_16__* }

@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"ocs_hw_node_group_alloc() failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"[%s] [%d] indicator x%03x allocating node group\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ocs_remote_node_group_alloc(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = call i32 @ocs_assert(%struct.TYPE_16__* %8, i32* null)
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = call i32 @ocs_assert(%struct.TYPE_16__* %12, i32* null)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = call i32 @ocs_assert(%struct.TYPE_16__* %18, i32* null)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %5, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 7
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %4, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = load i32, i32* @OCS_M_ZERO, align 4
  %28 = load i32, i32* @OCS_M_NOWAIT, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.TYPE_17__* @ocs_malloc(%struct.TYPE_16__* %26, i32 24, i32 %29)
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %6, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = icmp ne %struct.TYPE_17__* %31, null
  br i1 %32, label %33, label %98

33:                                               ; preds = %1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 2
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = call i32 @ocs_lock(i32* %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = call i32 @ocs_unlock(i32* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = call i64 @ocs_hw_node_group_alloc(i32* %55, %struct.TYPE_17__* %56)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %33
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @ocs_log_err(%struct.TYPE_16__* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = call i32 @ocs_free(%struct.TYPE_16__* %65, %struct.TYPE_17__* %66, i32 24)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %100

68:                                               ; preds = %33
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @ocs_log_debug(%struct.TYPE_16__* %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75, i64 %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = call i32 @ocs_lock(i32* %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = call i32 @ocs_list_add_tail(i32* %86, %struct.TYPE_17__* %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = call i32 @ocs_unlock(i32* %96)
  br label %98

98:                                               ; preds = %68, %1
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %99, %struct.TYPE_17__** %2, align 8
  br label %100

100:                                              ; preds = %98, %61
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %101
}

declare dso_local i32 @ocs_assert(%struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_17__* @ocs_malloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i64 @ocs_hw_node_group_alloc(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_16__*, i8*, i64) #1

declare dso_local i32 @ocs_free(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_16__*, i8*, i32, i32, i64) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
