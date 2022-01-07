; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_send_generic_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_send_generic_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }
%struct.tws_request = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tws_cmd_generic }
%struct.tws_cmd_generic = type { i32, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@TWS_REQ_TYPE_INTERNAL_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"no requests\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@tws_cmd_complete = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_send_generic_cmd(%struct.tws_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tws_request*, align 8
  %7 = alloca %struct.tws_cmd_generic*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %9 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tws_softc* %9, i32 %10)
  %12 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %13 = load i32, i32* @TWS_REQ_TYPE_INTERNAL_CMD, align 4
  %14 = call %struct.tws_request* @tws_get_request(%struct.tws_softc* %12, i32 %13)
  store %struct.tws_request* %14, %struct.tws_request** %6, align 8
  %15 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %16 = icmp eq %struct.tws_request* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %19 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.tws_softc* null, i32 0)
  %20 = load i32, i32* @FAILURE, align 4
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %23 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.tws_cmd_generic* %27, %struct.tws_cmd_generic** %7, align 8
  %28 = load %struct.tws_cmd_generic*, %struct.tws_cmd_generic** %7, align 8
  %29 = call i32 @bzero(%struct.tws_cmd_generic* %28, i32 48)
  %30 = load i32, i32* @tws_cmd_complete, align 4
  %31 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %32 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @BUILD_RES__OPCODE(i32 0, i32 %33)
  %35 = load %struct.tws_cmd_generic*, %struct.tws_cmd_generic** %7, align 8
  %36 = getelementptr inbounds %struct.tws_cmd_generic, %struct.tws_cmd_generic* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tws_cmd_generic*, %struct.tws_cmd_generic** %7, align 8
  %38 = getelementptr inbounds %struct.tws_cmd_generic, %struct.tws_cmd_generic* %37, i32 0, i32 0
  store i32 2, i32* %38, align 8
  %39 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %40 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tws_cmd_generic*, %struct.tws_cmd_generic** %7, align 8
  %43 = getelementptr inbounds %struct.tws_cmd_generic, %struct.tws_cmd_generic* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.tws_cmd_generic*, %struct.tws_cmd_generic** %7, align 8
  %45 = getelementptr inbounds %struct.tws_cmd_generic, %struct.tws_cmd_generic* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.tws_cmd_generic*, %struct.tws_cmd_generic** %7, align 8
  %47 = getelementptr inbounds %struct.tws_cmd_generic, %struct.tws_cmd_generic* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.tws_cmd_generic*, %struct.tws_cmd_generic** %7, align 8
  %49 = getelementptr inbounds %struct.tws_cmd_generic, %struct.tws_cmd_generic* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.tws_cmd_generic*, %struct.tws_cmd_generic** %7, align 8
  %51 = getelementptr inbounds %struct.tws_cmd_generic, %struct.tws_cmd_generic* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %53 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %54 = call i32 @tws_submit_command(%struct.tws_softc* %52, %struct.tws_request* %53)
  %55 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %56 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @SUCCESS, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %21, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, %struct.tws_softc*, i32) #1

declare dso_local %struct.tws_request* @tws_get_request(%struct.tws_softc*, i32) #1

declare dso_local i32 @bzero(%struct.tws_cmd_generic*, i32) #1

declare dso_local i32 @BUILD_RES__OPCODE(i32, i32) #1

declare dso_local i32 @tws_submit_command(%struct.tws_softc*, %struct.tws_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
