; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_hptmv_event_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_hptmv_event_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i32 }

@EVENT_CONNECT = common dso_local global i64 0, align 8
@SATA_EVENT_CHANNEL_CONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"RR18xx [%d,%d]: device connected event received\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@hptmv_handle_event_connect = common dso_local global i32 0, align 4
@EVENT_DISCONNECT = common dso_local global i64 0, align 8
@SATA_EVENT_CHANNEL_DISCONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"RR18xx [%d,%d]: device disconnected event received \0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"RR18xx: illegal value for param1(%d) at connect/disconnect event, host=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"RR18xx: DEVICE error event received, pci cause reg=%x,  don't how to handle this\0A\00", align 1
@MV_TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"RR18xx[%d]: unknown event type (%d)\0A\00", align 1
@MV_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i64, i64)* @hptmv_event_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptmv_event_notify(%struct.TYPE_7__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %10, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %77 [
    i32 128, label %16
    i32 129, label %72
  ]

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @EVENT_CONNECT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load i32, i32* @SATA_EVENT_CHANNEL_CONNECTED, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %22, i32* %27, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KdPrint(i8* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* @hz, align 4
  %37 = mul nsw i32 10, %36
  %38 = load i32, i32* @hptmv_handle_event_connect, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = call i32 @callout_reset(i32* %35, i32 %37, i32 %38, %struct.TYPE_8__* %39)
  br label %71

41:                                               ; preds = %16
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @EVENT_DISCONNECT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i32, i32* @SATA_EVENT_CHANNEL_DISCONNECTED, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %46, i32* %51, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @KdPrint(i8* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i32, i32* @FALSE, align 4
  %61 = call i32 @device_change(%struct.TYPE_8__* %58, i64 %59, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = call i32 @hptmv_handle_event_disconnect(%struct.TYPE_8__* %62)
  br label %70

64:                                               ; preds = %41
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @MV_ERROR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i64 %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %45
  br label %71

71:                                               ; preds = %70, %21
  br label %85

72:                                               ; preds = %4
  %73 = load i64, i64* %8, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @KdPrint(i8* %74)
  %76 = load i32, i32* @MV_TRUE, align 4
  store i32 %76, i32* %5, align 4
  br label %87

77:                                               ; preds = %4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @MV_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %81, i32 %82)
  %84 = load i32, i32* @MV_FALSE, align 4
  store i32 %84, i32* %5, align 4
  br label %87

85:                                               ; preds = %71
  %86 = load i32, i32* @MV_TRUE, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %77, %72
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @device_change(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @hptmv_handle_event_disconnect(%struct.TYPE_8__*) #1

declare dso_local i32 @MV_ERROR(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
