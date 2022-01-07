; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_periodic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i64, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ciss_request = type { i32, %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"adapter heart attack in progress 0x%x/%d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ADAPTER HEARTBEAT FAILED\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"new heartbeat 0x%x\00", align 1
@ciss_nop_message_heartbeat = common dso_local global i64 0, align 8
@ciss_nop_complete = common dso_local global i32 0, align 4
@CISS_CDB_TYPE_MESSAGE = common dso_local global i32 0, align 4
@CISS_CDB_ATTRIBUTE_SIMPLE = common dso_local global i32 0, align 4
@CISS_CDB_DIRECTION_WRITE = common dso_local global i32 0, align 4
@CISS_OPCODE_MESSAGE_NOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"SENDING NOP MESSAGE FAILED\0A\00", align 1
@CISS_FLAG_NOTIFY_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"(re)starting Event Notify chain\00", align 1
@CISS_HEARTBEAT_RATE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ciss_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_periodic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_request*, align 8
  %5 = alloca %struct.ciss_command*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.ciss_request* null, %struct.ciss_request** %4, align 8
  store %struct.ciss_command* null, %struct.ciss_command** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @debug_called(i32 1)
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ciss_softc*
  store %struct.ciss_softc* %9, %struct.ciss_softc** %3, align 8
  %10 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %29)
  %31 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %40

35:                                               ; preds = %19
  %36 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %37 = call i32 @ciss_printf(%struct.ciss_softc* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %39 = call i32 @ciss_disable_adapter(%struct.ciss_softc* %38)
  br label %119

40:                                               ; preds = %19
  br label %55

41:                                               ; preds = %1
  %42 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %42, i32 0, i32 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i32, i8*, ...) @debug(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %41, %40
  %56 = load i64, i64* @ciss_nop_message_heartbeat, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %55
  %59 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %60 = call i32 @ciss_get_request(%struct.ciss_softc* %59, %struct.ciss_request** %4)
  store i32 %60, i32* %6, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %58
  %63 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %64 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %63, i32 0, i32 1
  %65 = load %struct.ciss_command*, %struct.ciss_command** %64, align 8
  store %struct.ciss_command* %65, %struct.ciss_command** %5, align 8
  %66 = load i32, i32* @ciss_nop_complete, align 4
  %67 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %68 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ciss_command*, %struct.ciss_command** %5, align 8
  %70 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load i32, i32* @CISS_CDB_TYPE_MESSAGE, align 4
  %73 = load %struct.ciss_command*, %struct.ciss_command** %5, align 8
  %74 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 5
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @CISS_CDB_ATTRIBUTE_SIMPLE, align 4
  %77 = load %struct.ciss_command*, %struct.ciss_command** %5, align 8
  %78 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @CISS_CDB_DIRECTION_WRITE, align 4
  %81 = load %struct.ciss_command*, %struct.ciss_command** %5, align 8
  %82 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 8
  %84 = load %struct.ciss_command*, %struct.ciss_command** %5, align 8
  %85 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @CISS_OPCODE_MESSAGE_NOP, align 4
  %88 = load %struct.ciss_command*, %struct.ciss_command** %5, align 8
  %89 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %87, i32* %92, align 4
  %93 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %94 = call i32 @ciss_start(%struct.ciss_request* %93)
  store i32 %94, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %62
  %97 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %98 = call i32 @ciss_printf(%struct.ciss_softc* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %62
  br label %100

100:                                              ; preds = %99, %58, %55
  %101 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %102 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CISS_FLAG_NOTIFY_OK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %110 = call i32 @ciss_notify_event(%struct.ciss_softc* %109)
  br label %111

111:                                              ; preds = %107, %100
  %112 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %113 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %112, i32 0, i32 3
  %114 = load i32, i32* @CISS_HEARTBEAT_RATE, align 4
  %115 = load i32, i32* @hz, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %118 = call i32 @callout_reset(i32* %113, i32 %116, void (i8*)* @ciss_periodic, %struct.ciss_softc* %117)
  br label %119

119:                                              ; preds = %111, %35
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*) #1

declare dso_local i32 @ciss_disable_adapter(%struct.ciss_softc*) #1

declare dso_local i32 @ciss_get_request(%struct.ciss_softc*, %struct.ciss_request**) #1

declare dso_local i32 @ciss_start(%struct.ciss_request*) #1

declare dso_local i32 @ciss_notify_event(%struct.ciss_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ciss_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
