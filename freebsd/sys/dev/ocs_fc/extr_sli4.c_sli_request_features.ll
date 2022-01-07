; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_request_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_request_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"bootstrap mailbox write fail (REQUEST_FEATURES)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"REQUEST_FEATURES bad status %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"bad REQUEST_FEATURES write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i32)* @sli_request_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sli_request_features(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @sli_cmd_request_features(%struct.TYPE_16__* %9, %struct.TYPE_18__* %13, i32 %14, i32 %18, i32 %16)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %3
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %8, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = call i64 @sli_bmbx_command(%struct.TYPE_16__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ocs_log_crit(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %62

34:                                               ; preds = %21
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  store i32 -1, i32* %4, align 4
  br label %62

49:                                               ; preds = %34
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %61

56:                                               ; preds = %3
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %62

61:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %56, %40, %29
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @sli_cmd_request_features(%struct.TYPE_16__*, %struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i64 @sli_bmbx_command(%struct.TYPE_16__*) #1

declare dso_local i32 @ocs_log_crit(i32, i8*) #1

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
