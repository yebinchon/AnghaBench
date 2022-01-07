; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, i32, %struct.ciss_request* }
%struct.ciss_request = type { i32*, %struct.ciss_command*, i32 }
%struct.ciss_command = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32*, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.ciss_notify_cdb = type { i32, i32, i32 }

@CISS_FLAG_NOTIFY_OK = common dso_local global i32 0, align 4
@CISS_NOTIFY_DATA_SIZE = common dso_local global i32 0, align 4
@CISS_MALLOC_CLASS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can't get notify event request buffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CISS_HDR_ADDRESS_MODE_PERIPHERAL = common dso_local global i32 0, align 4
@CISS_CDB_TYPE_COMMAND = common dso_local global i32 0, align 4
@CISS_CDB_ATTRIBUTE_SIMPLE = common dso_local global i32 0, align 4
@CISS_CDB_DIRECTION_READ = common dso_local global i32 0, align 4
@CISS_OPCODE_WRITE = common dso_local global i32 0, align 4
@CISS_COMMAND_ABORT_NOTIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Abort Notify Event command failed (%d)\0A\00", align 1
@CISS_SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Abort Notify Event command failed (%s)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"cissNEA\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"Notify Event command failed to abort, adapter may wedge.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*)* @ciss_notify_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_notify_abort(%struct.ciss_softc* %0) #0 {
  %2 = alloca %struct.ciss_softc*, align 8
  %3 = alloca %struct.ciss_request*, align 8
  %4 = alloca %struct.ciss_command*, align 8
  %5 = alloca %struct.ciss_notify_cdb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %2, align 8
  %9 = call i32 @debug_called(i32 1)
  store %struct.ciss_request* null, %struct.ciss_request** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CISS_FLAG_NOTIFY_OK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %156

17:                                               ; preds = %1
  %18 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %19 = call i32 @ciss_get_request(%struct.ciss_softc* %18, %struct.ciss_request** %3)
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %156

22:                                               ; preds = %17
  %23 = load i32, i32* @CISS_NOTIFY_DATA_SIZE, align 4
  %24 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = call i32* @malloc(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %28 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = icmp eq i32* %26, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = call i32 @debug(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %6, align 4
  br label %156

33:                                               ; preds = %22
  %34 = load i32, i32* @CISS_NOTIFY_DATA_SIZE, align 4
  %35 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %36 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %38 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %37, i32 0, i32 1
  %39 = load %struct.ciss_command*, %struct.ciss_command** %38, align 8
  store %struct.ciss_command* %39, %struct.ciss_command** %4, align 8
  %40 = load i32, i32* @CISS_HDR_ADDRESS_MODE_PERIPHERAL, align 4
  %41 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %42 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32 %40, i32* %45, align 8
  %46 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %47 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %52 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %57 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 12, i32* %58, align 8
  %59 = load i32, i32* @CISS_CDB_TYPE_COMMAND, align 4
  %60 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %61 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @CISS_CDB_ATTRIBUTE_SIMPLE, align 4
  %64 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %65 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @CISS_CDB_DIRECTION_READ, align 4
  %68 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %69 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 8
  %71 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %72 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %75 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = bitcast i32* %78 to %struct.ciss_notify_cdb*
  store %struct.ciss_notify_cdb* %79, %struct.ciss_notify_cdb** %5, align 8
  %80 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %81 = call i32 @bzero(%struct.ciss_notify_cdb* %80, i32 12)
  %82 = load i32, i32* @CISS_OPCODE_WRITE, align 4
  %83 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %84 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @CISS_COMMAND_ABORT_NOTIFY, align 4
  %86 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %87 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @CISS_NOTIFY_DATA_SIZE, align 4
  %89 = call i32 @htonl(i32 %88)
  %90 = load %struct.ciss_notify_cdb*, %struct.ciss_notify_cdb** %5, align 8
  %91 = getelementptr inbounds %struct.ciss_notify_cdb, %struct.ciss_notify_cdb* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %93 = call i32 @ciss_synch_request(%struct.ciss_request* %92, i32 60000)
  store i32 %93, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %33
  %96 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %156

99:                                               ; preds = %33
  %100 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %101 = call i32 @ciss_report_request(%struct.ciss_request* %100, i32* %7, i32* %8)
  %102 = load i32, i32* %7, align 4
  switch i32 %102, label %127 [
    i32 129, label %103
    i32 130, label %104
    i32 128, label %111
  ]

103:                                              ; preds = %99
  br label %133

104:                                              ; preds = %99
  %105 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %106 = call i32 @ciss_notify_abort_bmic(%struct.ciss_softc* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %156

110:                                              ; preds = %104
  br label %133

111:                                              ; preds = %99
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @CISS_SCSI_STATUS_CHECK_CONDITION, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %117 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %116, i32 0, i32 2
  %118 = load %struct.ciss_request*, %struct.ciss_request** %117, align 8
  %119 = icmp ne %struct.ciss_request* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %122 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %121, i32 0, i32 2
  %123 = load %struct.ciss_request*, %struct.ciss_request** %122, align 8
  %124 = call i32 @ciss_release_request(%struct.ciss_request* %123)
  br label %125

125:                                              ; preds = %120, %115
  store i32 0, i32* %6, align 4
  br label %156

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %99, %126
  %128 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @ciss_name_command_status(i32 %129)
  %131 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %128, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @EIO, align 4
  store i32 %132, i32* %6, align 4
  br label %156

133:                                              ; preds = %110, %103
  br label %134

134:                                              ; preds = %154, %133
  %135 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %136 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %135, i32 0, i32 2
  %137 = load %struct.ciss_request*, %struct.ciss_request** %136, align 8
  %138 = icmp ne %struct.ciss_request* %137, null
  br i1 %138, label %139, label %155

139:                                              ; preds = %134
  %140 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %141 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %140, i32 0, i32 2
  %142 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %143 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %142, i32 0, i32 1
  %144 = load i32, i32* @PRIBIO, align 4
  %145 = load i32, i32* @hz, align 4
  %146 = mul nsw i32 %145, 5
  %147 = call i32 @msleep(%struct.ciss_request** %141, i32* %143, i32 %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @EWOULDBLOCK, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %139
  %152 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %153 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %152, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %155

154:                                              ; preds = %139
  br label %134

155:                                              ; preds = %151, %134
  br label %156

156:                                              ; preds = %155, %127, %125, %109, %95, %30, %21, %16
  %157 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %158 = icmp ne %struct.ciss_request* %157, null
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %161 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %166 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %169 = call i32 @free(i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %164, %159
  %171 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %172 = call i32 @ciss_release_request(%struct.ciss_request* %171)
  br label %173

173:                                              ; preds = %170, %156
  %174 = load i32, i32* %6, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load i32, i32* @CISS_FLAG_NOTIFY_OK, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %180 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %176, %173
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_get_request(%struct.ciss_softc*, %struct.ciss_request**) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i32 @bzero(%struct.ciss_notify_cdb*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ciss_synch_request(%struct.ciss_request*, i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, ...) #1

declare dso_local i32 @ciss_report_request(%struct.ciss_request*, i32*, i32*) #1

declare dso_local i32 @ciss_notify_abort_bmic(%struct.ciss_softc*) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

declare dso_local i32 @ciss_name_command_status(i32) #1

declare dso_local i32 @msleep(%struct.ciss_request**, i32*, i32, i8*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
