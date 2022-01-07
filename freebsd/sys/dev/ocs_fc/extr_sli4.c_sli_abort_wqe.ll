; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_abort_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_abort_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i32, i8*, i32, i8*, i8*, i32 }

@SLI4_ABORT_CRITERIA_XRI_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"warning non-zero mask %#x when aborting XRI %#x\0A\00", align 1
@SLI4_ABORT_CRITERIA_ABORT_TAG = common dso_local global i32 0, align 4
@SLI4_ABORT_CRITERIA_REQUEST_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unsupported type %#x\0A\00", align 1
@SLI4_WQE_ABORT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SLI4_CMD_ABORT_WQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_abort_wqe(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32 %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %20, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @ocs_memset(i8* %23, i32 0, i64 %24)
  %26 = load i32, i32* %14, align 4
  switch i32 %26, label %49 [
    i32 128, label %27
    i32 130, label %41
    i32 129, label %45
  ]

27:                                               ; preds = %9
  %28 = load i32, i32* @SLI4_ABORT_CRITERIA_XRI_TAG, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %17, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %17, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 @ocs_log_warn(i32 %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38)
  store i8* null, i8** %17, align 8
  br label %40

40:                                               ; preds = %33, %27
  br label %55

41:                                               ; preds = %9
  %42 = load i32, i32* @SLI4_ABORT_CRITERIA_ABORT_TAG, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  br label %55

45:                                               ; preds = %9
  %46 = load i32, i32* @SLI4_ABORT_CRITERIA_REQUEST_TAG, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 8
  br label %55

49:                                               ; preds = %9
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @ocs_log_test(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 -1, i32* %10, align 4
  br label %85

55:                                               ; preds = %45, %41, %40
  %56 = load i8*, i8** %15, align 8
  %57 = icmp ne i8* %56, null
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load i8*, i8** %17, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 8
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @SLI4_WQE_ABORT, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @TRUE, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** %19, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @SLI4_CMD_ABORT_WQE, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %55, %49
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_log_warn(i32, i8*, i8*, i8*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
