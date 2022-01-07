; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_event.c_pqisrc_acknowledge_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_event.c_pqisrc_acknowledge_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64* }
%struct.pqi_event = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }

@PQISRC_EVENT_ACK_RESP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_REQUEST_IU_ACKNOWLEDGE_VENDOR_EVENT = common dso_local global i32 0, align 4
@PQI_REQUEST_HEADER_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"wait for event acknowledge timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tmo : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.pqi_event*)* @pqisrc_acknowledge_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqisrc_acknowledge_event(%struct.TYPE_11__* %0, %struct.pqi_event* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.pqi_event*, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.pqi_event* %1, %struct.pqi_event** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i64 0
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load i32, i32* @PQISRC_EVENT_ACK_RESP_TIMEOUT, align 4
  store i32 %12, i32* %7, align 4
  %13 = call i32 @memset(%struct.TYPE_12__* %5, i32 0, i32 32)
  %14 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @PQI_REQUEST_IU_ACKNOWLEDGE_VENDOR_EVENT, align 4
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i64, i64* @PQI_REQUEST_HEADER_LENGTH, align 8
  %19 = sub i64 32, %18
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %23 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %27 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %31 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = call i32 @pqisrc_submit_cmnd(%struct.TYPE_11__* %34, %struct.TYPE_13__* %35, %struct.TYPE_12__* %5)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @COND_WAIT(i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %2
  %51 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %2
  %55 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_submit_cmnd(%struct.TYPE_11__*, %struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @COND_WAIT(i32, i32) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
