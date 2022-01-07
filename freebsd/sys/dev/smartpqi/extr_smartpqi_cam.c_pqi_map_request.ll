; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_pqi_map_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_pqi_map_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %union.ccb*, %struct.TYPE_10__* }
%union.ccb = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_CMD_MAPPED = common dso_local global i32 0, align 4
@pqi_request_map_helper = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"bus_dmamap_load_ccb failed = %d count = %d\0A\00", align 1
@REQUEST_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"OUT error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @pqi_map_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_map_request(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.ccb*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 6
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %13 = load %union.ccb*, %union.ccb** %12, align 8
  store %union.ccb* %13, %union.ccb** %6, align 8
  %14 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PQI_CMD_MAPPED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

22:                                               ; preds = %1
  %23 = load i32, i32* @PQI_CMD_MAPPED, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %22
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %union.ccb*, %union.ccb** %6, align 8
  %41 = load i32, i32* @pqi_request_map_helper, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call i32 @bus_dmamap_load_ccb(i32 %36, i32 %39, %union.ccb* %40, i32 %41, %struct.TYPE_9__* %42, i32 0)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %32
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @DBG_ERR_BTL(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %32
  br label %64

57:                                               ; preds = %22
  %58 = load i32, i32* @REQUEST_PENDING, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = call i32 @pqisrc_build_send_io(%struct.TYPE_10__* %61, %struct.TYPE_9__* %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %57, %56
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %46, %21
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @DBG_ERR_BTL(i32, i8*, i32, i32) #1

declare dso_local i32 @pqisrc_build_send_io(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
