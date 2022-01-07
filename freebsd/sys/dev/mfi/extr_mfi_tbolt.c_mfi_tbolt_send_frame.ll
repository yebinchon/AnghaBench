; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_send_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i64 }
%struct.mfi_command = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.mfi_frame_header }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.mfi_frame_header = type { i64, i64, i32 }
%union.mfi_mpi2_request_descriptor = type { i32 }

@mfi_polled_cmd_timeout = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@MFI_STAT_INVALID_STATUS = common dso_local global i64 0, align 8
@MFI_FRAME_DONT_POST_IN_REPLY_QUEUE = common dso_local global i32 0, align 4
@MFI_CMD_PD_SCSI_IO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Mapping from MFI to MPT Failed \0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"DJA NA XXX SYSPDIO\0A\00", align 1
@MFI_CMD_LD_SCSI_IO = common dso_local global i64 0, align 8
@MFI_CMD_LD_READ = common dso_local global i64 0, align 8
@MFI_CMD_LD_WRITE = common dso_local global i64 0, align 8
@MFI_CMD_SCSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"LDIO Failed \0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Mapping from MFI to MPT Failed\0A\00", align 1
@MFI_ILQP = common dso_local global i32 0, align 4
@MFI_IHQP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Frame %p timed out command 0x%X\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_tbolt_send_frame(%struct.mfi_softc* %0, %struct.mfi_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.mfi_command*, align 8
  %6 = alloca %struct.mfi_frame_header*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %union.mfi_mpi2_request_descriptor*, align 8
  %9 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store %struct.mfi_command* %1, %struct.mfi_command** %5, align 8
  store %union.mfi_mpi2_request_descriptor* null, %union.mfi_mpi2_request_descriptor** %8, align 8
  %10 = load i32, i32* @mfi_polled_cmd_timeout, align 4
  %11 = mul nsw i32 %10, 1000
  store i32 %11, i32* %9, align 4
  %12 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %13 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store %struct.mfi_frame_header* %15, %struct.mfi_frame_header** %6, align 8
  %16 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %17 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %23 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %210

27:                                               ; preds = %2
  %28 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %29 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MFI_CMD_POLLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @time_uptime, align 4
  %36 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %37 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %39 = call i32 @mfi_enqueue_busy(%struct.mfi_command* %38)
  br label %49

40:                                               ; preds = %27
  %41 = load i64, i64* @MFI_STAT_INVALID_STATUS, align 8
  %42 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %43 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @MFI_FRAME_DONT_POST_IN_REPLY_QUEUE, align 4
  %45 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %46 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %40, %34
  %50 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %51 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MFI_CMD_PD_SCSI_IO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %49
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 40
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 42
  br i1 %64, label %65, label %76

65:                                               ; preds = %60, %55
  %66 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %67 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %68 = call %union.mfi_mpi2_request_descriptor* @mfi_tbolt_build_mpt_cmd(%struct.mfi_softc* %66, %struct.mfi_command* %67)
  store %union.mfi_mpi2_request_descriptor* %68, %union.mfi_mpi2_request_descriptor** %8, align 8
  %69 = icmp eq %union.mfi_mpi2_request_descriptor* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %72 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %210

75:                                               ; preds = %65
  br label %81

76:                                               ; preds = %60
  %77 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %78 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %75
  br label %128

82:                                               ; preds = %49
  %83 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %84 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MFI_CMD_LD_SCSI_IO, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %82
  %89 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %90 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MFI_CMD_LD_READ, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %96 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MFI_CMD_LD_WRITE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %94, %88, %82
  %101 = load i32, i32* @MFI_CMD_SCSI, align 4
  %102 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %103 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %107 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %108 = call %union.mfi_mpi2_request_descriptor* @mfi_build_and_issue_cmd(%struct.mfi_softc* %106, %struct.mfi_command* %107)
  store %union.mfi_mpi2_request_descriptor* %108, %union.mfi_mpi2_request_descriptor** %8, align 8
  %109 = icmp eq %union.mfi_mpi2_request_descriptor* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %100
  %111 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %112 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %210

115:                                              ; preds = %100
  br label %127

116:                                              ; preds = %94
  %117 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %118 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %119 = call %union.mfi_mpi2_request_descriptor* @mfi_tbolt_build_mpt_cmd(%struct.mfi_softc* %117, %struct.mfi_command* %118)
  store %union.mfi_mpi2_request_descriptor* %119, %union.mfi_mpi2_request_descriptor** %8, align 8
  %120 = icmp eq %union.mfi_mpi2_request_descriptor* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %123 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %210

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %115
  br label %128

128:                                              ; preds = %127, %81
  %129 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %130 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @MFI_CMD_SCSI, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load i32, i32* @MFI_FRAME_DONT_POST_IN_REPLY_QUEUE, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %139 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %135, %128
  %143 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %144 = load i32, i32* @MFI_ILQP, align 4
  %145 = load %union.mfi_mpi2_request_descriptor*, %union.mfi_mpi2_request_descriptor** %8, align 8
  %146 = bitcast %union.mfi_mpi2_request_descriptor* %145 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @MFI_WRITE4(%struct.mfi_softc* %143, i32 %144, i32 %147)
  %149 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %150 = load i32, i32* @MFI_IHQP, align 4
  %151 = load %union.mfi_mpi2_request_descriptor*, %union.mfi_mpi2_request_descriptor** %8, align 8
  %152 = bitcast %union.mfi_mpi2_request_descriptor* %151 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 32
  %155 = call i32 @MFI_WRITE4(%struct.mfi_softc* %149, i32 %150, i32 %154)
  %156 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %157 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @MFI_CMD_POLLED, align 4
  %160 = and i32 %158, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  br label %210

163:                                              ; preds = %142
  br label %164

164:                                              ; preds = %187, %163
  %165 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %166 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MFI_STAT_INVALID_STATUS, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %188

170:                                              ; preds = %164
  %171 = call i32 @DELAY(i32 1000)
  %172 = load i32, i32* %9, align 4
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp sle i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %188

177:                                              ; preds = %170
  %178 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %179 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @MFI_CMD_SCSI, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %186 = call i32 @mfi_tbolt_complete_cmd(%struct.mfi_softc* %185)
  br label %187

187:                                              ; preds = %184, %177
  br label %164

188:                                              ; preds = %176, %164
  %189 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %190 = call i32 @mfi_tbolt_complete_cmd(%struct.mfi_softc* %189)
  %191 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %192 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @MFI_STAT_INVALID_STATUS, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %188
  %197 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %198 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %6, align 8
  %201 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %202 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %201, i32 0, i32 1
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i32, i8*, ...) @device_printf(i32 %199, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), %struct.mfi_frame_header* %200, i32 %206)
  %208 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %208, i32* %3, align 4
  br label %210

209:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %196, %162, %121, %110, %70, %26
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @mfi_enqueue_busy(%struct.mfi_command*) #1

declare dso_local %union.mfi_mpi2_request_descriptor* @mfi_tbolt_build_mpt_cmd(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %union.mfi_mpi2_request_descriptor* @mfi_build_and_issue_cmd(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @MFI_WRITE4(%struct.mfi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mfi_tbolt_complete_cmd(%struct.mfi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
