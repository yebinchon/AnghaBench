; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c__ocs_scsi_io_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c__ocs_scsi_io_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"freeing io 0x%p %s\0A\00", align 1
@OCS_EVT_NODE_ACTIVE_IO_LIST_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @_ocs_scsi_io_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ocs_scsi_io_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ocs_assert(i32 %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @scsi_io_trace(%struct.TYPE_10__* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %20, i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = call i32 @ocs_io_busy(%struct.TYPE_10__* %25)
  %27 = call i32 @ocs_assert(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = call i32 @ocs_lock(i32* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = call i32 @ocs_list_remove(i32* %32, %struct.TYPE_10__* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = call i64 @ocs_list_empty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %1
  %45 = phi i1 [ false, %1 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = call i32 @ocs_unlock(i32* %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = load i32, i32* @OCS_EVT_NODE_ACTIVE_IO_LIST_EMPTY, align 4
  %55 = call i32 @ocs_node_post_event(%struct.TYPE_9__* %53, i32 %54, i32* null)
  br label %56

56:                                               ; preds = %52, %44
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %58, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = call i32 @ocs_io_free(i32* %59, %struct.TYPE_10__* %60)
  ret void
}

declare dso_local i32 @ocs_assert(i32) #1

declare dso_local i32 @scsi_io_trace(%struct.TYPE_10__*, i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ocs_io_busy(%struct.TYPE_10__*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_list_remove(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @ocs_list_empty(i32*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i32 @ocs_node_post_event(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @ocs_io_free(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
