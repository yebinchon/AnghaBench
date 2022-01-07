; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_report_luns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_report_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_lun_report = type { i8* }
%struct.ciss_softc = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ciss_request = type { i32, i32, %struct.ciss_lun_report*, %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.ciss_report_cdb = type { i32, i8* }

@CISS_MALLOC_CLASS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can't allocate memory for lun report\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CISS_REQ_DATAIN = common dso_local global i32 0, align 4
@CISS_HDR_ADDRESS_MODE_PERIPHERAL = common dso_local global i32 0, align 4
@CISS_CDB_TYPE_COMMAND = common dso_local global i32 0, align 4
@CISS_CDB_ATTRIBUTE_SIMPLE = common dso_local global i32 0, align 4
@CISS_CDB_DIRECTION_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"error sending %d LUN command (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"WARNING: more units than driver limit (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"error detecting logical drive configuration (%s)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ciss_lun_report* (%struct.ciss_softc*, i32, i32)* @ciss_report_luns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ciss_lun_report* @ciss_report_luns(%struct.ciss_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ciss_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ciss_request*, align 8
  %8 = alloca %struct.ciss_command*, align 8
  %9 = alloca %struct.ciss_report_cdb*, align 8
  %10 = alloca %struct.ciss_lun_report*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %13, align 4
  %14 = call i32 @debug_called(i32 1)
  store %struct.ciss_request* null, %struct.ciss_request** %7, align 8
  store %struct.ciss_lun_report* null, %struct.ciss_lun_report** %10, align 8
  %15 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %16 = call i32 @ciss_get_request(%struct.ciss_softc* %15, %struct.ciss_request** %7)
  store i32 %16, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %135

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = add i64 8, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.ciss_lun_report* @malloc(i32 %25, i32 %26, i32 %29)
  store %struct.ciss_lun_report* %30, %struct.ciss_lun_report** %10, align 8
  %31 = icmp eq %struct.ciss_lun_report* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %34 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %13, align 4
  br label %135

36:                                               ; preds = %19
  %37 = load %struct.ciss_request*, %struct.ciss_request** %7, align 8
  %38 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %37, i32 0, i32 3
  %39 = load %struct.ciss_command*, %struct.ciss_command** %38, align 8
  store %struct.ciss_command* %39, %struct.ciss_command** %8, align 8
  %40 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %10, align 8
  %41 = load %struct.ciss_request*, %struct.ciss_request** %7, align 8
  %42 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %41, i32 0, i32 2
  store %struct.ciss_lun_report* %40, %struct.ciss_lun_report** %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.ciss_request*, %struct.ciss_request** %7, align 8
  %45 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @CISS_REQ_DATAIN, align 4
  %47 = load %struct.ciss_request*, %struct.ciss_request** %7, align 8
  %48 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @CISS_HDR_ADDRESS_MODE_PERIPHERAL, align 4
  %50 = load %struct.ciss_command*, %struct.ciss_command** %8, align 8
  %51 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 %49, i32* %54, align 8
  %55 = load %struct.ciss_command*, %struct.ciss_command** %8, align 8
  %56 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.ciss_command*, %struct.ciss_command** %8, align 8
  %61 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.ciss_command*, %struct.ciss_command** %8, align 8
  %66 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 16, i32* %67, align 8
  %68 = load i32, i32* @CISS_CDB_TYPE_COMMAND, align 4
  %69 = load %struct.ciss_command*, %struct.ciss_command** %8, align 8
  %70 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 5
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @CISS_CDB_ATTRIBUTE_SIMPLE, align 4
  %73 = load %struct.ciss_command*, %struct.ciss_command** %8, align 8
  %74 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @CISS_CDB_DIRECTION_READ, align 4
  %77 = load %struct.ciss_command*, %struct.ciss_command** %8, align 8
  %78 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  %80 = load %struct.ciss_command*, %struct.ciss_command** %8, align 8
  %81 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i32 30, i32* %82, align 4
  %83 = load %struct.ciss_command*, %struct.ciss_command** %8, align 8
  %84 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = bitcast i32* %87 to %struct.ciss_report_cdb*
  store %struct.ciss_report_cdb* %88, %struct.ciss_report_cdb** %9, align 8
  %89 = load %struct.ciss_report_cdb*, %struct.ciss_report_cdb** %9, align 8
  %90 = call i32 @bzero(%struct.ciss_report_cdb* %89, i32 16)
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.ciss_report_cdb*, %struct.ciss_report_cdb** %9, align 8
  %93 = getelementptr inbounds %struct.ciss_report_cdb, %struct.ciss_report_cdb* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i8* @htonl(i32 %94)
  %96 = load %struct.ciss_report_cdb*, %struct.ciss_report_cdb** %9, align 8
  %97 = getelementptr inbounds %struct.ciss_report_cdb, %struct.ciss_report_cdb* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = call i8* @htonl(i32 %101)
  %103 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %10, align 8
  %104 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.ciss_request*, %struct.ciss_request** %7, align 8
  %106 = call i32 @ciss_synch_request(%struct.ciss_request* %105, i32 60000)
  store i32 %106, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %36
  %109 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111)
  br label %135

113:                                              ; preds = %36
  %114 = load %struct.ciss_request*, %struct.ciss_request** %7, align 8
  %115 = call i32 @ciss_report_request(%struct.ciss_request* %114, i32* %11, i32* null)
  %116 = load i32, i32* %11, align 4
  switch i32 %116, label %126 [
    i32 128, label %117
    i32 129, label %117
    i32 130, label %118
  ]

117:                                              ; preds = %113, %113
  br label %132

118:                                              ; preds = %113
  %119 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %120 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %121 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  br label %132

126:                                              ; preds = %113
  %127 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @ciss_name_command_status(i32 %128)
  %130 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %127, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EIO, align 4
  store i32 %131, i32* %13, align 4
  br label %135

132:                                              ; preds = %118, %117
  %133 = load %struct.ciss_request*, %struct.ciss_request** %7, align 8
  %134 = call i32 @ciss_release_request(%struct.ciss_request* %133)
  store %struct.ciss_request* null, %struct.ciss_request** %7, align 8
  br label %135

135:                                              ; preds = %132, %126, %108, %32, %18
  %136 = load %struct.ciss_request*, %struct.ciss_request** %7, align 8
  %137 = icmp ne %struct.ciss_request* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.ciss_request*, %struct.ciss_request** %7, align 8
  %140 = call i32 @ciss_release_request(%struct.ciss_request* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %10, align 8
  %146 = icmp ne %struct.ciss_lun_report* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %10, align 8
  %149 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %150 = call i32 @free(%struct.ciss_lun_report* %148, i32 %149)
  store %struct.ciss_lun_report* null, %struct.ciss_lun_report** %10, align 8
  br label %151

151:                                              ; preds = %147, %144, %141
  %152 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %10, align 8
  ret %struct.ciss_lun_report* %152
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_get_request(%struct.ciss_softc*, %struct.ciss_request**) #1

declare dso_local %struct.ciss_lun_report* @malloc(i32, i32, i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, ...) #1

declare dso_local i32 @bzero(%struct.ciss_report_cdb*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @ciss_synch_request(%struct.ciss_request*, i32) #1

declare dso_local i32 @ciss_report_request(%struct.ciss_request*, i32*, i32*) #1

declare dso_local i32 @ciss_name_command_status(i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

declare dso_local i32 @free(%struct.ciss_lun_report*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
