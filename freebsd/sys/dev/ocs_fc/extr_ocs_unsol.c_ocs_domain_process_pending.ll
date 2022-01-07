; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_domain_process_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_domain_process_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i32* }

@SLI4_MAX_FCFI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"%u domain frames held and processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_domain_process_pending(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SLI4_MAX_FCFI, align 8
  %14 = icmp ult i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ocs_assert(i32 %15, i32 -1)
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i64 %24
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %4, align 8
  br label %26

26:                                               ; preds = %77, %1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %28 = call i64 @ocs_domain_frames_held(%struct.TYPE_18__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %78

31:                                               ; preds = %26
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = call i32 @ocs_lock(i32* %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = call %struct.TYPE_17__* @ocs_list_remove_head(i32* %36)
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %5, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = icmp eq %struct.TYPE_17__* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %6, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = call i32 @ocs_unlock(i32* %47)
  br label %78

49:                                               ; preds = %31
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = call i32 @ocs_unlock(i32* %55)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = call i64 @ocs_domain_dispatch_frame(%struct.TYPE_18__* %57, %struct.TYPE_17__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %49
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ocs_port_owned_abort(%struct.TYPE_16__* %67, i32* %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = call i32 @ocs_hw_sequence_free(i32* %74, %struct.TYPE_17__* %75)
  br label %77

77:                                               ; preds = %72, %49
  br label %26

78:                                               ; preds = %40, %30
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @ocs_log_debug(%struct.TYPE_16__* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %83)
  br label %85

85:                                               ; preds = %81, %78
  ret i32 0
}

declare dso_local i32 @ocs_assert(i32, i32) #1

declare dso_local i64 @ocs_domain_frames_held(%struct.TYPE_18__*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local %struct.TYPE_17__* @ocs_list_remove_head(i32*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i64 @ocs_domain_dispatch_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ocs_port_owned_abort(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ocs_hw_sequence_free(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_16__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
