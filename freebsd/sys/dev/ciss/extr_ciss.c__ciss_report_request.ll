; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c__ciss_report_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c__ciss_report_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_request = type { i32, %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64* }
%struct.ciss_error_info = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@CISS_HDR_HOST_TAG_ERROR = common dso_local global i32 0, align 4
@CISS_CMD_STATUS_DATA_OVERRUN = common dso_local global i32 0, align 4
@CISS_CMD_STATUS_DATA_UNDERRUN = common dso_local global i32 0, align 4
@CISS_OPCODE_REPORT_LOGICAL_LUNS = common dso_local global i64 0, align 8
@CISS_OPCODE_REPORT_PHYSICAL_LUNS = common dso_local global i64 0, align 8
@INQUIRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"ignoring irrelevant under/overrun error\00", align 1
@SCSI_STATUS_OK = common dso_local global i32 0, align 4
@CISS_CMD_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CISS_CMD_STATUS_TARGET_STATUS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"command status 0x%x (%s) scsi status 0x%x\0A\00", align 1
@CISS_CMD_STATUS_INVALID_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"invalid command, offense size %d at %d, value 0x%x, function %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_request*, i32*, i32*, i8*)* @_ciss_report_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ciss_report_request(%struct.ciss_request* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ciss_request*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ciss_command*, align 8
  %11 = alloca %struct.ciss_error_info*, align 8
  store %struct.ciss_request* %0, %struct.ciss_request** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = call i32 @debug_called(i32 2)
  %13 = load %struct.ciss_request*, %struct.ciss_request** %6, align 8
  %14 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %13, i32 0, i32 1
  %15 = load %struct.ciss_command*, %struct.ciss_command** %14, align 8
  store %struct.ciss_command* %15, %struct.ciss_command** %10, align 8
  %16 = load %struct.ciss_command*, %struct.ciss_command** %10, align 8
  %17 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = bitcast i32* %19 to %struct.ciss_error_info*
  store %struct.ciss_error_info* %20, %struct.ciss_error_info** %11, align 8
  %21 = load %struct.ciss_command*, %struct.ciss_command** %10, align 8
  %22 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CISS_HDR_HOST_TAG_ERROR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %4
  %29 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %30 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CISS_CMD_STATUS_DATA_OVERRUN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %36 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CISS_CMD_STATUS_DATA_UNDERRUN, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %34, %28
  %41 = load %struct.ciss_command*, %struct.ciss_command** %10, align 8
  %42 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CISS_OPCODE_REPORT_LOGICAL_LUNS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %67, label %49

49:                                               ; preds = %40
  %50 = load %struct.ciss_command*, %struct.ciss_command** %10, align 8
  %51 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CISS_OPCODE_REPORT_PHYSICAL_LUNS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = load %struct.ciss_command*, %struct.ciss_command** %10, align 8
  %60 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @INQUIRY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %58, %49, %40
  %68 = load i32, i32* @CISS_HDR_HOST_TAG_ERROR, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ciss_command*, %struct.ciss_command** %10, align 8
  %71 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %69
  store i32 %74, i32* %72, align 8
  %75 = call i32 @debug(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %67, %58, %34, %4
  %77 = load %struct.ciss_command*, %struct.ciss_command** %10, align 8
  %78 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CISS_HDR_HOST_TAG_ERROR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %76
  %85 = load i32*, i32** %8, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @SCSI_STATUS_OK, align 4
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32*, i32** %7, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @CISS_CMD_STATUS_SUCCESS, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %90
  store i32 0, i32* %5, align 4
  br label %169

97:                                               ; preds = %76
  %98 = load i32*, i32** %7, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %102 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32*, i32** %8, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %110 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CISS_CMD_STATUS_TARGET_STATUS, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %116 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  br label %121

119:                                              ; preds = %108
  %120 = load i32*, i32** %8, align 8
  store i32 -1, i32* %120, align 4
  br label %121

121:                                              ; preds = %119, %114
  br label %122

122:                                              ; preds = %121, %105
  %123 = load i64, i64* @bootverbose, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %122
  %126 = load %struct.ciss_request*, %struct.ciss_request** %6, align 8
  %127 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %130 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %133 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ciss_name_command_status(i32 %134)
  %136 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %137 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, i32, i32, i32, ...) @ciss_printf(i32 %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %125, %122
  %141 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %142 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @CISS_CMD_STATUS_INVALID_COMMAND, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %140
  %147 = load %struct.ciss_request*, %struct.ciss_request** %6, align 8
  %148 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %151 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %156 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ciss_error_info*, %struct.ciss_error_info** %11, align 8
  %161 = getelementptr inbounds %struct.ciss_error_info, %struct.ciss_error_info* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i8*, i8** %9, align 8
  %166 = call i32 (i32, i8*, i32, i32, i32, ...) @ciss_printf(i32 %149, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %154, i32 %159, i32 %164, i8* %165)
  br label %167

167:                                              ; preds = %146, %140
  br label %168

168:                                              ; preds = %167
  store i32 1, i32* %5, align 4
  br label %169

169:                                              ; preds = %168, %96
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i32 @ciss_printf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ciss_name_command_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
