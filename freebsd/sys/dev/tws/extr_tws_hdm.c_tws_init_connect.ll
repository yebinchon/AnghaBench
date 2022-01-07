; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_init_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_init_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { %struct.TYPE_9__, %struct.TYPE_8__, i64, %struct.tws_request* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i64, i64, i32 }
%struct.tws_request = type { i64, i64, i32, i32, %struct.TYPE_7__*, i32*, i32, i32, i32*, i32*, i32, i64, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.tws_cmd_init_connect }
%struct.tws_cmd_init_connect = type { i32, i64, i64, i64, i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@TWS_REQ_TYPE_INTERNAL_CMD = common dso_local global i64 0, align 8
@TWS_DIR_UNKNOWN = common dso_local global i32 0, align 4
@TWS_REQ_RET_INVALID = common dso_local global i32 0, align 4
@TWS_REQ_STATE_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"no requests\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@TWS_FW_CMD_INIT_CONNECTION = common dso_local global i32 0, align 4
@TWS_BIT_EXTEND = common dso_local global i32 0, align 4
@tws_use_32bit_sgls = common dso_local global i32 0, align 4
@TWS_64BIT_SG_ADDRESSES = common dso_local global i32 0, align 4
@TWS_CURRENT_FW_SRL = common dso_local global i32 0, align 4
@TWS_INVALID_REQID = common dso_local global i64 0, align 8
@TWS_REQ_STATE_FREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"unexpected req_id \00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"INITCONNECT FAILED\00", align 1
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_init_connect(%struct.tws_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tws_request*, align 8
  %7 = alloca %struct.tws_cmd_init_connect*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i64 %11)
  %13 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %14 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %13, i32 0, i32 3
  %15 = load %struct.tws_request*, %struct.tws_request** %14, align 8
  %16 = load i64, i64* @TWS_REQ_TYPE_INTERNAL_CMD, align 8
  %17 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %15, i64 %16
  store %struct.tws_request* %17, %struct.tws_request** %6, align 8
  %18 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %19 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %18, i32 0, i32 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = call i32 @bzero(%struct.TYPE_10__* %21, i32 4)
  %23 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %24 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %23, i32 0, i32 12
  store i32* null, i32** %24, align 8
  %25 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %26 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %25, i32 0, i32 11
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* @TWS_REQ_TYPE_INTERNAL_CMD, align 8
  %28 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %29 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @TWS_DIR_UNKNOWN, align 4
  %31 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %32 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @TWS_REQ_RET_INVALID, align 4
  %34 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %35 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %37 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %36, i32 0, i32 9
  store i32* null, i32** %37, align 8
  %38 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %39 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %38, i32 0, i32 8
  store i32* null, i32** %39, align 8
  %40 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %41 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %40, i32 0, i32 7
  %42 = call i32 @callout_stop(i32* %41)
  %43 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %44 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %43, i32 0, i32 5
  store i32* null, i32** %44, align 8
  %45 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %46 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %45, i32 0, i32 6
  store i32 0, i32* %46, align 8
  %47 = load i32, i32* @TWS_REQ_STATE_BUSY, align 4
  %48 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %49 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %51 = icmp eq %struct.tws_request* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %54 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0, i64 0)
  %55 = load i32, i32* @FAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %172

56:                                               ; preds = %2
  %57 = call i32 @tws_swap16(i32 48879)
  %58 = call i32 @tws_swap32(i32 -559038737)
  %59 = call i32 @tws_swap64(i32 -559038737)
  %60 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %61 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %60, i32 0, i32 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store %struct.tws_cmd_init_connect* %65, %struct.tws_cmd_init_connect** %7, align 8
  %66 = load i32, i32* @TWS_FW_CMD_INIT_CONNECTION, align 4
  %67 = call i32 @BUILD_RES__OPCODE(i32 0, i32 %66)
  %68 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %69 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %71 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %70, i32 0, i32 0
  store i32 6, i32* %71, align 8
  %72 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %73 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %76 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %79 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %78, i32 0, i32 7
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* @TWS_BIT_EXTEND, align 4
  %81 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %82 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %86 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %56
  %90 = load i32, i32* @tws_use_32bit_sgls, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @TWS_64BIT_SG_ADDRESSES, align 4
  %94 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %95 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %89, %56
  %99 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %100 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %99, i32 0, i32 0
  store i32 6, i32* %100, align 8
  %101 = load i32, i32* @TWS_CURRENT_FW_SRL, align 4
  %102 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %103 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 5
  store i32 %101, i32* %104, align 8
  %105 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %106 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %105, i32 0, i32 4
  store i32 %101, i32* %106, align 8
  %107 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %108 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %107, i32 0, i32 5
  store i64 0, i64* %108, align 8
  %109 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %110 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  store i64 0, i64* %111, align 8
  %112 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %113 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %115 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %118 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %120 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %121 = call i32 @tws_submit_command(%struct.tws_softc* %119, %struct.tws_request* %120)
  %122 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %123 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %125 = call i64 @tws_poll4_response(%struct.tws_softc* %124, i32* %9)
  store i64 %125, i64* %8, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* @TWS_INVALID_REQID, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %162

129:                                              ; preds = %98
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %132 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %130, %133
  br i1 %134, label %135, label %162

135:                                              ; preds = %129
  %136 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %137 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %140 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 8
  %142 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %143 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %146 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  store i64 %144, i64* %147, align 8
  %148 = load %struct.tws_cmd_init_connect*, %struct.tws_cmd_init_connect** %7, align 8
  %149 = getelementptr inbounds %struct.tws_cmd_init_connect, %struct.tws_cmd_init_connect* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %152 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  store i64 %150, i64* %153, align 8
  %154 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %155 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* @TWS_REQ_STATE_FREE, align 4
  %160 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %161 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  br label %170

162:                                              ; preds = %129, %98
  %163 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %164 = load i64, i64* %8, align 8
  %165 = call i32 @TWS_TRACE(%struct.tws_softc* %163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %164, i32 0)
  %166 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %167 = load i64, i64* %8, align 8
  %168 = call i32 @TWS_TRACE(%struct.tws_softc* %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %167, i32 0)
  %169 = load i32, i32* @FAILURE, align 4
  store i32 %169, i32* %3, align 4
  br label %172

170:                                              ; preds = %135
  %171 = load i32, i32* @SUCCESS, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %162, %52
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i64) #1

declare dso_local i32 @bzero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @tws_swap16(i32) #1

declare dso_local i32 @tws_swap32(i32) #1

declare dso_local i32 @tws_swap64(i32) #1

declare dso_local i32 @BUILD_RES__OPCODE(i32, i32) #1

declare dso_local i32 @tws_submit_command(%struct.tws_softc*, %struct.tws_request*) #1

declare dso_local i64 @tws_poll4_response(%struct.tws_softc*, i32*) #1

declare dso_local i32 @TWS_TRACE(%struct.tws_softc*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
