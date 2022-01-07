; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_sport_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_sport_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

@OCS_XPORT_PORT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PORT offline,.. skipping\0A\00", align 1
@KNOB_ROLE_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"sport is not NULL, skipping\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_scsi_sport_deleted(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OCS_XPORT_PORT_STATUS, align 4
  %22 = call i32 @ocs_xport_status(i32 %20, i32 %21, %struct.TYPE_9__* %5)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = call i32 @ocs_log_debug(%struct.TYPE_10__* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %53

29:                                               ; preds = %14
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @KNOB_ROLE_NONE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = call i32 @ocs_log_debug(%struct.TYPE_10__* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %53

45:                                               ; preds = %35
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = call i32 @ocs_sport_vport_alloc(i32 %48, %struct.TYPE_13__* %51)
  br label %53

53:                                               ; preds = %13, %26, %42, %45, %29
  ret void
}

declare dso_local i32 @ocs_xport_status(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @ocs_sport_vport_alloc(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
