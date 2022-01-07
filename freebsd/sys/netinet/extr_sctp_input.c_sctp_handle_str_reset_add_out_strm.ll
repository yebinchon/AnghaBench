; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_str_reset_add_out_strm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_str_reset_add_out_strm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.sctp_association }
%struct.sctp_association = type { i32, i32, i32, i8**, i64 }
%struct.sctp_tmit_chunk = type { i32 }
%struct.sctp_stream_reset_add_strm = type { i32, i32 }

@SCTP_ENABLE_CHANGE_ASSOC_REQ = common dso_local global i32 0, align 4
@SCTP_STREAM_RESET_RESULT_DENIED = common dso_local global i8* null, align 8
@SCTP_STREAM_RESET_RESULT_ERR_IN_PROGRESS = common dso_local global i8* null, align 8
@SCTP_STREAM_RESET_RESULT_PERFORMED = common dso_local global i8* null, align 8
@SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_tmit_chunk*, %struct.sctp_stream_reset_add_strm*)* @sctp_handle_str_reset_add_out_strm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_handle_str_reset_add_out_strm(%struct.sctp_tcb* %0, %struct.sctp_tmit_chunk* %1, %struct.sctp_stream_reset_add_strm* %2) #0 {
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sctp_tmit_chunk*, align 8
  %6 = alloca %struct.sctp_stream_reset_add_strm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sctp_tmit_chunk* %1, %struct.sctp_tmit_chunk** %5, align 8
  store %struct.sctp_stream_reset_add_strm* %2, %struct.sctp_stream_reset_add_strm** %6, align 8
  %11 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %11, i32 0, i32 0
  store %struct.sctp_association* %12, %struct.sctp_association** %9, align 8
  %13 = load %struct.sctp_stream_reset_add_strm*, %struct.sctp_stream_reset_add_strm** %6, align 8
  %14 = getelementptr inbounds %struct.sctp_stream_reset_add_strm, %struct.sctp_stream_reset_add_strm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohl(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sctp_stream_reset_add_strm*, %struct.sctp_stream_reset_add_strm** %6, align 8
  %18 = getelementptr inbounds %struct.sctp_stream_reset_add_strm, %struct.sctp_stream_reset_add_strm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ntohs(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %117

26:                                               ; preds = %3
  %27 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 3
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %34 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %34, i32 0, i32 3
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  store i8* %32, i8** %37, align 8
  %38 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %39 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SCTP_ENABLE_CHANGE_ASSOC_REQ, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %26
  %45 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_DENIED, align 8
  %46 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %47 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %46, i32 0, i32 3
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* %45, i8** %49, align 8
  br label %103

50:                                               ; preds = %26
  %51 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %52 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_ERR_IN_PROGRESS, align 8
  %58 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %59 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %59, i32 0, i32 3
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  store i8* %57, i8** %62, align 8
  br label %102

63:                                               ; preds = %50
  %64 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %65 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %10, align 4
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 65536
  br i1 %74, label %75, label %94

75:                                               ; preds = %63
  %76 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_PERFORMED, align 8
  %77 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %78 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %78, i32 0, i32 3
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  store i8* %76, i8** %81, align 8
  %82 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i64 @sctp_send_str_reset_req(%struct.sctp_tcb* %82, i32 0, i32* null, i32 0, i32 0, i32 1, i64 %83, i32 0, i32 1)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %75
  %87 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_DENIED, align 8
  %88 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %89 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %89, i32 0, i32 3
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  store i8* %87, i8** %92, align 8
  br label %93

93:                                               ; preds = %86, %75
  br label %101

94:                                               ; preds = %63
  %95 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_DENIED, align 8
  %96 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %97 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %97, i32 0, i32 3
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  store i8* %95, i8** %100, align 8
  br label %101

101:                                              ; preds = %94, %93
  br label %102

102:                                              ; preds = %101, %56
  br label %103

103:                                              ; preds = %102, %44
  %104 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %107 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %107, i32 0, i32 3
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk* %104, i32 %105, i8* %111)
  %113 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %114 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %156

117:                                              ; preds = %3
  %118 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %119 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %117
  %125 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %128 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %127, i32 0, i32 3
  %129 = load i8**, i8*** %128, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk* %125, i32 %126, i8* %131)
  br label %155

133:                                              ; preds = %117
  %134 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %135 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 2
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  %141 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %5, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %144 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %143, i32 0, i32 3
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk* %141, i32 %142, i8* %147)
  br label %154

149:                                              ; preds = %133
  %150 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO, align 8
  %153 = call i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk* %150, i32 %151, i8* %152)
  br label %154

154:                                              ; preds = %149, %140
  br label %155

155:                                              ; preds = %154, %124
  br label %156

156:                                              ; preds = %155, %103
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @sctp_send_str_reset_req(%struct.sctp_tcb*, i32, i32*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
