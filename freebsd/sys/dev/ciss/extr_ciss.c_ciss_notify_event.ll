; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, %struct.ciss_request* }
%struct.ciss_request = type { i32*, %struct.ciss_command*, i32, i32, i32 }
%struct.ciss_command = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32*, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.ciss_notify_cdb = type { i32, i32, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"can't get notify event request\00", align 1
@ciss_notify_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"acquired request %d\00", align 1
@CISS_NOTIFY_DATA_SIZE = common dso_local global i32 0, align 4
@CISS_MALLOC_CLASS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"can't get notify event request buffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CISS_HDR_ADDRESS_MODE_PERIPHERAL = common dso_local global i32 0, align 4
@CISS_CDB_TYPE_COMMAND = common dso_local global i32 0, align 4
@CISS_CDB_ATTRIBUTE_SIMPLE = common dso_local global i32 0, align 4
@CISS_CDB_DIRECTION_READ = common dso_local global i32 0, align 4
@CISS_OPCODE_READ = common dso_local global i32 0, align 4
@CISS_COMMAND_NOTIFY_ON_EVENT = common dso_local global i32 0, align 4
@CISS_FLAG_RUNNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"can't submit notify event request\00", align 1
@CISS_FLAG_NOTIFY_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"notify event submitted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*)* @ciss_notify_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_notify_event(%struct.ciss_softc* %0) #0 {
  %2 = alloca %struct.ciss_softc*, align 8
  %3 = alloca %struct.ciss_request*, align 8
  %4 = alloca %struct.ciss_command*, align 8
  %5 = alloca %struct.ciss_notify_cdb*, align 8
  %6 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %2, align 8
  %7 = call i32 @debug_called(i32 1)
  %8 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %8, i32 0, i32 1
  %10 = load %struct.ciss_request*, %struct.ciss_request** %9, align 8
  store %struct.ciss_request* %10, %struct.ciss_request** %3, align 8
  %11 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %12 = icmp eq %struct.ciss_request* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %15 = call i32 @ciss_get_request(%struct.ciss_softc* %14, %struct.ciss_request** %3)
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %134

19:                                               ; preds = %13
  %20 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %21 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %21, i32 0, i32 1
  store %struct.ciss_request* %20, %struct.ciss_request** %22, align 8
  %23 = load i32, i32* @ciss_notify_complete, align 4
  %24 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %25 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %27 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %32 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i32, i32* @CISS_NOTIFY_DATA_SIZE, align 4
  %37 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = call i32* @malloc(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %41 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = icmp eq i32* %39, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %6, align 4
  br label %134

46:                                               ; preds = %35
  %47 = load i32, i32* @CISS_NOTIFY_DATA_SIZE, align 4
  %48 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %49 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %30
  %51 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %52 = call i32 @ciss_preen_command(%struct.ciss_request* %51)
  %53 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %54 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %53, i32 0, i32 1
  %55 = load %struct.ciss_command*, %struct.ciss_command** %54, align 8
  store %struct.ciss_command* %55, %struct.ciss_command** %4, align 8
  %56 = load i32, i32* @CISS_HDR_ADDRESS_MODE_PERIPHERAL, align 4
  %57 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %58 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i32 %56, i32* %61, align 8
  %62 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %63 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %68 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %73 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 48, i32* %74, align 8
  %75 = load i32, i32* @CISS_CDB_TYPE_COMMAND, align 4
  %76 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %77 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @CISS_CDB_ATTRIBUTE_SIMPLE, align 4
  %80 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %81 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 4
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @CISS_CDB_DIRECTION_READ, align 4
  %84 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %85 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 8
  %87 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %88 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %91 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = bitcast i32* %94 to %struct.ciss_notify_cdb*
  store %struct.ciss_notify_cdb* %95, %struct.ciss_notify_cdb** %5, align 8
  %96 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %97 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @CISS_NOTIFY_DATA_SIZE, align 4
  %100 = call i32 @bzero(i32* %98, i32 %99)
  %101 = load i32, i32* @CISS_OPCODE_READ, align 4
  %102 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %103 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @CISS_COMMAND_NOTIFY_ON_EVENT, align 4
  %105 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %106 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %108 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %107, i32 0, i32 5
  store i64 0, i64* %108, align 8
  %109 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %110 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %112 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %114 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %116 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CISS_FLAG_RUNNING, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %50
  %122 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %123 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  br label %127

124:                                              ; preds = %50
  %125 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %126 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* @CISS_NOTIFY_DATA_SIZE, align 4
  %129 = call i32 @htonl(i32 %128)
  %130 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %131 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %133 = call i32 @ciss_start(%struct.ciss_request* %132)
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %127, %43, %17
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %164

137:                                              ; preds = %134
  %138 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %139 = icmp ne %struct.ciss_request* %138, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %137
  %141 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %142 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %147 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %150 = call i32 @free(i32* %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %140
  %152 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %153 = call i32 @ciss_release_request(%struct.ciss_request* %152)
  br label %154

154:                                              ; preds = %151, %137
  %155 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %156 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %155, i32 0, i32 1
  store %struct.ciss_request* null, %struct.ciss_request** %156, align 8
  %157 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i32, i32* @CISS_FLAG_NOTIFY_OK, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %161 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %171

164:                                              ; preds = %134
  %165 = call i32 (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %166 = load i32, i32* @CISS_FLAG_NOTIFY_OK, align 4
  %167 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %168 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %164, %154
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_get_request(%struct.ciss_softc*, %struct.ciss_request**) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @ciss_preen_command(%struct.ciss_request*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ciss_start(%struct.ciss_request*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
