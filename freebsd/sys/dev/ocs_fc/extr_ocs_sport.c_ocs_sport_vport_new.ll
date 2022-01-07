; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_sport.c_ocs_sport_vport_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_sport.c_ocs_sport_vport_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [44 x i8] c"driver initiator functionality not enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"driver target functionality not enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to create vport object entry\0A\00", align 1
@__ocs_sport_vport_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_sport_vport_new(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i8* %6, i8* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  %21 = load i64, i64* %15, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %9
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = call i32 @ocs_log_test(%struct.TYPE_11__* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %98

35:                                               ; preds = %23, %9
  %36 = load i64, i64* %16, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = call i32 @ocs_log_test(%struct.TYPE_11__* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %98

50:                                               ; preds = %38, %35
  %51 = load i64, i64* %19, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load i8*, i8** %18, align 8
  %64 = call i64 @ocs_vport_create_spec(%struct.TYPE_11__* %56, i32 %57, i32 %58, i32 %59, i64 %60, i64 %61, i8* %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %53
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = call i32 @ocs_log_test(%struct.TYPE_11__* %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %98

71:                                               ; preds = %53
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %73 = call i32 @ocs_vport_start(%struct.TYPE_10__* %72)
  store i32 %73, i32* %10, align 4
  br label %98

74:                                               ; preds = %50
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %16, align 8
  %81 = call %struct.TYPE_9__* @ocs_sport_alloc(%struct.TYPE_10__* %75, i32 %76, i32 %77, i32 %78, i64 %79, i64 %80)
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %20, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %83 = icmp eq %struct.TYPE_9__* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 -1, i32* %10, align 4
  br label %98

85:                                               ; preds = %74
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load i8*, i8** %17, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* @__ocs_sport_vport_init, align 4
  %97 = call i32 @ocs_sm_transition(i32* %95, i32 %96, i32* null)
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %85, %84, %71, %66, %45, %30
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

declare dso_local i32 @ocs_log_test(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @ocs_vport_create_spec(%struct.TYPE_11__*, i32, i32, i32, i64, i64, i8*, i8*) #1

declare dso_local i32 @ocs_vport_start(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @ocs_sport_alloc(%struct.TYPE_10__*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ocs_sm_transition(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
