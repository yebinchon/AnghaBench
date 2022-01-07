; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_event.c_pqisrc_ack_all_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_event.c_pqisrc_ack_all_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_event = type { i32 }
%struct.TYPE_4__ = type { %struct.pqi_event* }

@.str = private unnamed_addr constant [5 x i8] c" IN\0A\00", align 1
@PQI_NUM_SUPPORTED_EVENTS = common dso_local global i32 0, align 4
@PQI_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c" Failed to Re-Scan devices\0A \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pqisrc_ack_all_events(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_event*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.pqi_event*, %struct.pqi_event** %10, align 8
  %12 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %11, i64 0
  store %struct.pqi_event* %12, %struct.pqi_event** %4, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %31, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PQI_NUM_SUPPORTED_EVENTS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %19 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %24 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %27 = call i32 @pqisrc_acknowledge_event(%struct.TYPE_4__* %25, %struct.pqi_event* %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %30 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %29, i32 1
  store %struct.pqi_event* %30, %struct.pqi_event** %4, align 8
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %13

34:                                               ; preds = %13
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = call i64 @pqisrc_rescan_devices(%struct.TYPE_4__* %35)
  %37 = load i64, i64* @PQI_STATUS_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @DBG_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_acknowledge_event(%struct.TYPE_4__*, %struct.pqi_event*) #1

declare dso_local i64 @pqisrc_rescan_devices(%struct.TYPE_4__*) #1

declare dso_local i32 @DBG_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
