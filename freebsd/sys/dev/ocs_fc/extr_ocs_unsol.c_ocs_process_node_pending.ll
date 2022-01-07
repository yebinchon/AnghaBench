; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_process_node_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_process_node_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"%u node frames held and processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_process_node_pending(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %60, %1
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = call i64 @ocs_node_frames_held(%struct.TYPE_13__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %61

14:                                               ; preds = %9
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = call i32 @ocs_lock(i32* %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = call %struct.TYPE_14__* @ocs_list_remove_head(i32* %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %4, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = icmp eq %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = call i32 @ocs_unlock(i32* %30)
  br label %61

32:                                               ; preds = %14
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = call i32 @ocs_unlock(i32* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = call i64 @ocs_node_dispatch_frame(%struct.TYPE_13__* %40, %struct.TYPE_14__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %32
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @ocs_port_owned_abort(%struct.TYPE_12__* %50, i32* %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = call i32 @ocs_hw_sequence_free(i32* %57, %struct.TYPE_14__* %58)
  br label %60

60:                                               ; preds = %55, %32
  br label %9

61:                                               ; preds = %23, %13
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @ocs_log_debug(%struct.TYPE_12__* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %64, %61
  ret i32 0
}

declare dso_local i64 @ocs_node_frames_held(%struct.TYPE_13__*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local %struct.TYPE_14__* @ocs_list_remove_head(i32*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i64 @ocs_node_dispatch_frame(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ocs_port_owned_abort(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ocs_hw_sequence_free(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_12__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
