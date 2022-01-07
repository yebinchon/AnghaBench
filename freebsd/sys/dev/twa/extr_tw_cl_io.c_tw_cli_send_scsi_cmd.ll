; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_send_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_send_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i32, i32, i32, %struct.tw_cli_ctlr_context*, %struct.tw_cl_command_packet*, i32 }
%struct.tw_cli_ctlr_context = type { i32, i32, i32, i32, i64 }
%struct.tw_cl_command_packet = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.tw_cl_command_9k }
%struct.tw_cl_command_9k = type { i32, i32*, i64, i8*, i64, i8*, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tw_cl_sg_desc64 = type { i8*, i32 }
%struct.tw_cl_sg_desc32 = type { i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_OSL_EBUSY = common dso_local global i64 0, align 8
@TW_CL_TRUE = common dso_local global i64 0, align 8
@TW_CLI_SECTOR_SIZE = common dso_local global i32 0, align 4
@TWA_FW_CMD_EXECUTE_SCSI = common dso_local global i32 0, align 4
@TW_CL_64BIT_ADDRESSES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to start SCSI command\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"request = %p, error = %d\00", align 1
@TW_OSL_EIO = common dso_local global i64 0, align 8
@TW_OSL_ESUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tw_cli_send_scsi_cmd(%struct.tw_cli_req_context* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tw_cli_req_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tw_cl_command_packet*, align 8
  %7 = alloca %struct.tw_cl_command_9k*, align 8
  %8 = alloca %struct.tw_cli_ctlr_context*, align 8
  %9 = alloca i64, align 8
  store %struct.tw_cli_req_context* %0, %struct.tw_cli_req_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %11 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %10, i32 0, i32 3
  %12 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %11, align 8
  store %struct.tw_cli_ctlr_context* %12, %struct.tw_cli_ctlr_context** %8, align 8
  %13 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %14 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (...) @tw_osl_cur_func()
  %17 = call i32 (i32, i32, i32, i8*, ...) @tw_cli_dbg_printf(i32 4, i32 %15, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %19 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @TW_OSL_EBUSY, align 8
  store i64 %23, i64* %3, align 8
  br label %155

24:                                               ; preds = %2
  %25 = load i64, i64* @TW_CL_TRUE, align 8
  %26 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %27 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  %28 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %29 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %32 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %34 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %37 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %39 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TW_CLI_SECTOR_SIZE, align 4
  %42 = call i32 @tw_osl_memzero(i32 %40, i32 %41)
  %43 = load i32, i32* @TW_CLI_SECTOR_SIZE, align 4
  %44 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %45 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %47 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %46, i32 0, i32 4
  %48 = load %struct.tw_cl_command_packet*, %struct.tw_cl_command_packet** %47, align 8
  store %struct.tw_cl_command_packet* %48, %struct.tw_cl_command_packet** %6, align 8
  %49 = load %struct.tw_cl_command_packet*, %struct.tw_cl_command_packet** %6, align 8
  %50 = getelementptr inbounds %struct.tw_cl_command_packet, %struct.tw_cl_command_packet* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 128, i32* %52, align 8
  %53 = load %struct.tw_cl_command_packet*, %struct.tw_cl_command_packet** %6, align 8
  %54 = getelementptr inbounds %struct.tw_cl_command_packet, %struct.tw_cl_command_packet* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store %struct.tw_cl_command_9k* %55, %struct.tw_cl_command_9k** %7, align 8
  %56 = load i32, i32* @TWA_FW_CMD_EXECUTE_SCSI, align 4
  %57 = call i32 @BUILD_RES__OPCODE(i32 0, i32 %56)
  %58 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %59 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %61 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %63 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @TW_CL_SWAP16(i32 %64)
  %66 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %67 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %69 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %71 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %70, i32 0, i32 0
  store i32 16, i32* %71, align 8
  %72 = call i8* @TW_CL_SWAP16(i32 1)
  %73 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %74 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %76 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %75, i32 0, i32 3
  %77 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %76, align 8
  %78 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TW_CL_64BIT_ADDRESSES, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %24
  %84 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %85 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @TW_CL_SWAP64(i32 %86)
  %88 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %89 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.tw_cl_sg_desc64*
  %92 = getelementptr inbounds %struct.tw_cl_sg_desc64, %struct.tw_cl_sg_desc64* %91, i64 0
  %93 = getelementptr inbounds %struct.tw_cl_sg_desc64, %struct.tw_cl_sg_desc64* %92, i32 0, i32 1
  store i32 %87, i32* %93, align 8
  %94 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %95 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @TW_CL_SWAP32(i32 %96)
  %98 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %99 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.tw_cl_sg_desc64*
  %102 = getelementptr inbounds %struct.tw_cl_sg_desc64, %struct.tw_cl_sg_desc64* %101, i64 0
  %103 = getelementptr inbounds %struct.tw_cl_sg_desc64, %struct.tw_cl_sg_desc64* %102, i32 0, i32 0
  store i8* %97, i8** %103, align 8
  br label %125

104:                                              ; preds = %24
  %105 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %106 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @TW_CL_SWAP32(i32 %107)
  %109 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %110 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.tw_cl_sg_desc32*
  %113 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %112, i64 0
  %114 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %113, i32 0, i32 1
  store i8* %108, i8** %114, align 8
  %115 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %116 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @TW_CL_SWAP32(i32 %117)
  %119 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %120 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to %struct.tw_cl_sg_desc32*
  %123 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %122, i64 0
  %124 = getelementptr inbounds %struct.tw_cl_sg_desc32, %struct.tw_cl_sg_desc32* %123, i32 0, i32 0
  store i8* %118, i8** %124, align 8
  br label %125

125:                                              ; preds = %104, %83
  %126 = load i64, i64* %5, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %129 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %127, i32* %131, align 4
  %132 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %7, align 8
  %133 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  store i32 128, i32* %135, align 4
  %136 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %137 = call i64 @tw_cli_submit_cmd(%struct.tw_cli_req_context* %136)
  store i64 %137, i64* %9, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %125
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* @TW_OSL_EBUSY, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %145 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (...) @tw_osl_cur_func()
  %148 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call i32 (i32, i32, i32, i8*, ...) @tw_cli_dbg_printf(i32 1, i32 %146, i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.tw_cli_req_context* %148, i64 %149)
  %151 = load i64, i64* @TW_OSL_EIO, align 8
  store i64 %151, i64* %3, align 8
  br label %155

152:                                              ; preds = %139
  br label %153

153:                                              ; preds = %152, %125
  %154 = load i64, i64* @TW_OSL_ESUCCESS, align 8
  store i64 %154, i64* %3, align 8
  br label %155

155:                                              ; preds = %153, %143, %22
  %156 = load i64, i64* %3, align 8
  ret i64 %156
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @tw_osl_memzero(i32, i32) #1

declare dso_local i32 @BUILD_RES__OPCODE(i32, i32) #1

declare dso_local i8* @TW_CL_SWAP16(i32) #1

declare dso_local i32 @TW_CL_SWAP64(i32) #1

declare dso_local i8* @TW_CL_SWAP32(i32) #1

declare dso_local i64 @tw_cli_submit_cmd(%struct.tw_cli_req_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
