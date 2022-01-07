; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_submit_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_submit_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i32, i64, i64, i64, %struct.tw_cli_ctlr_context* }
%struct.tw_cli_ctlr_context = type { i64, i32, i32, %struct.tw_cl_ctlr_handle* }
%struct.tw_cl_ctlr_handle = type { i32 }
%struct.tw_cl_req_packet = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CL_DEVICE_ID_9K_E = common dso_local global i64 0, align 8
@TW_CL_DEVICE_ID_9K_SA = common dso_local global i64 0, align 8
@TWA_COMMAND_QUEUE_OFFSET_LOW = common dso_local global i32 0, align 4
@TWA_STATUS_COMMAND_QUEUE_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Cmd queue full\00", align 1
@TW_CLI_REQ_FLAGS_INTERNAL = common dso_local global i32 0, align 4
@TW_CL_REQ_RETRY_ON_BUSY = common dso_local global i32 0, align 4
@TW_CLI_REQ_STATE_PENDING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"pending internal/ioctl request\00", align 1
@TW_CLI_PENDING_Q = common dso_local global i32 0, align 4
@TWA_CONTROL_UNMASK_COMMAND_INTERRUPT = common dso_local global i32 0, align 4
@TW_OSL_EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Submitting command\00", align 1
@TW_CLI_REQ_STATE_BUSY = common dso_local global i64 0, align 8
@TW_CLI_BUSY_Q = common dso_local global i32 0, align 4
@TWA_COMMAND_QUEUE_OFFSET_HIGH = common dso_local global i32 0, align 4
@TW_CL_64BIT_ADDRESSES = common dso_local global i32 0, align 4
@TWA_COMMAND_QUEUE_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_submit_cmd(%struct.tw_cli_req_context* %0) #0 {
  %2 = alloca %struct.tw_cli_req_context*, align 8
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tw_cl_req_packet*, align 8
  store %struct.tw_cli_req_context* %0, %struct.tw_cli_req_context** %2, align 8
  %8 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %9 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %8, i32 0, i32 4
  %10 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %9, align 8
  store %struct.tw_cli_ctlr_context* %10, %struct.tw_cli_ctlr_context** %3, align 8
  %11 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %12 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %11, i32 0, i32 3
  %13 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %12, align 8
  store %struct.tw_cl_ctlr_handle* %13, %struct.tw_cl_ctlr_handle** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %15 = call i32 (...) @tw_osl_cur_func()
  %16 = call i32 @tw_cli_dbg_printf(i32 10, %struct.tw_cl_ctlr_handle* %14, i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %18 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %19 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @tw_osl_get_lock(%struct.tw_cl_ctlr_handle* %17, i32 %20)
  %22 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %23 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TW_CL_DEVICE_ID_9K_E, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %29 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TW_CL_DEVICE_ID_9K_SA, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27, %1
  %34 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %35 = load i32, i32* @TWA_COMMAND_QUEUE_OFFSET_LOW, align 4
  %36 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %37 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @tw_osl_write_reg(%struct.tw_cl_ctlr_handle* %34, i32 %35, i32 %40, i32 4)
  br label %42

42:                                               ; preds = %33, %27
  %43 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %44 = call i32 @TW_CLI_READ_STATUS_REGISTER(%struct.tw_cl_ctlr_handle* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TWA_STATUS_COMMAND_QUEUE_FULL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %42
  %50 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %51 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.tw_cl_req_packet*
  store %struct.tw_cl_req_packet* %53, %struct.tw_cl_req_packet** %7, align 8
  %54 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %55 = call i32 (...) @tw_osl_cur_func()
  %56 = call i32 @tw_cli_dbg_printf(i32 7, %struct.tw_cl_ctlr_handle* %54, i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %58 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @TW_CLI_REQ_FLAGS_INTERNAL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %49
  %64 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %7, align 8
  %65 = icmp ne %struct.tw_cl_req_packet* %64, null
  br i1 %65, label %66, label %95

66:                                               ; preds = %63
  %67 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %7, align 8
  %68 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TW_CL_REQ_RETRY_ON_BUSY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %66, %49
  %74 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %75 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TW_CLI_REQ_STATE_PENDING, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %81 = call i32 (...) @tw_osl_cur_func()
  %82 = call i32 @tw_cli_dbg_printf(i32 2, %struct.tw_cl_ctlr_handle* %80, i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i64, i64* @TW_CLI_REQ_STATE_PENDING, align 8
  %84 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %85 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %87 = load i32, i32* @TW_CLI_PENDING_Q, align 4
  %88 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %86, i32 %87)
  %89 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %90 = load i32, i32* @TWA_CONTROL_UNMASK_COMMAND_INTERRUPT, align 4
  %91 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle* %89, i32 %90)
  br label %94

92:                                               ; preds = %73
  %93 = load i32, i32* @TW_OSL_EBUSY, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %79
  br label %97

95:                                               ; preds = %66, %63
  %96 = load i32, i32* @TW_OSL_EBUSY, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %94
  br label %165

98:                                               ; preds = %42
  %99 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %100 = call i32 (...) @tw_osl_cur_func()
  %101 = call i32 @tw_cli_dbg_printf(i32 10, %struct.tw_cl_ctlr_handle* %99, i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i64, i64* @TW_CLI_REQ_STATE_BUSY, align 8
  %103 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %104 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %106 = load i32, i32* @TW_CLI_BUSY_Q, align 4
  %107 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %105, i32 %106)
  %108 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %109 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TW_CL_DEVICE_ID_9K_E, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %98
  %114 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %115 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TW_CL_DEVICE_ID_9K_SA, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %113, %98
  %120 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %121 = load i32, i32* @TWA_COMMAND_QUEUE_OFFSET_HIGH, align 4
  %122 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %123 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = ashr i32 %126, 32
  %128 = call i32 @tw_osl_write_reg(%struct.tw_cl_ctlr_handle* %120, i32 %121, i32 %127, i32 4)
  br label %164

129:                                              ; preds = %113
  %130 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %131 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @TW_CL_64BIT_ADDRESSES, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %129
  %137 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %138 = load i32, i32* @TWA_COMMAND_QUEUE_OFFSET_LOW, align 4
  %139 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %140 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, 4
  %143 = trunc i64 %142 to i32
  %144 = call i32 @tw_osl_write_reg(%struct.tw_cl_ctlr_handle* %137, i32 %138, i32 %143, i32 4)
  %145 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %146 = load i32, i32* @TWA_COMMAND_QUEUE_OFFSET_HIGH, align 4
  %147 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %148 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, 4
  %151 = trunc i64 %150 to i32
  %152 = ashr i32 %151, 32
  %153 = call i32 @tw_osl_write_reg(%struct.tw_cl_ctlr_handle* %145, i32 %146, i32 %152, i32 4)
  br label %163

154:                                              ; preds = %129
  %155 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %156 = load i32, i32* @TWA_COMMAND_QUEUE_OFFSET, align 4
  %157 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %2, align 8
  %158 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, 4
  %161 = trunc i64 %160 to i32
  %162 = call i32 @tw_osl_write_reg(%struct.tw_cl_ctlr_handle* %155, i32 %156, i32 %161, i32 4)
  br label %163

163:                                              ; preds = %154, %136
  br label %164

164:                                              ; preds = %163, %119
  br label %165

165:                                              ; preds = %164, %97
  %166 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %167 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %168 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @tw_osl_free_lock(%struct.tw_cl_ctlr_handle* %166, i32 %169)
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @tw_cli_dbg_printf(i32, %struct.tw_cl_ctlr_handle*, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @tw_osl_get_lock(%struct.tw_cl_ctlr_handle*, i32) #1

declare dso_local i32 @tw_osl_write_reg(%struct.tw_cl_ctlr_handle*, i32, i32, i32) #1

declare dso_local i32 @TW_CLI_READ_STATUS_REGISTER(%struct.tw_cl_ctlr_handle*) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i32) #1

declare dso_local i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle*, i32) #1

declare dso_local i32 @tw_osl_free_lock(%struct.tw_cl_ctlr_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
