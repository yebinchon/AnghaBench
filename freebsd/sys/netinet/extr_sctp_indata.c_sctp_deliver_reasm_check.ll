; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_deliver_reasm_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_deliver_reasm_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sctp_association = type { i64, i64, i32 }
%struct.sctp_stream_in = type { i64, i64, i32, i32 }
%struct.sctp_queued_to_read = type { i64, i64, i64, i64, i64, i32, i32, i64, i32, i64, i32, i32 }

@SCTP_PARTIAL_DELIVERY_SHIFT = common dso_local global i32 0, align 4
@SCTP_DEBUG_XXX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Looking at control: %p e(%d) ssn: %u top_fsn: %u inc_fsn: %u -uo\0A\00", align 1
@next_instrm = common dso_local global i32 0, align 4
@sctps_reasmusrmsgs = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Looking at control: %p e(%d) ssn: %u top_fsn: %u inc_fsn: %u (lastdel: %u)- o\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"Looking at control: %p e(%d) ssn: %u top_fsn: %u inc_fsn: %u (nxtdel: %u)- o\0A\00", align 1
@SCTP_DATA_NOT_FRAG = common dso_local global i32 0, align 4
@SCTP_ON_ORDERED = common dso_local global i64 0, align 8
@SCTP_ON_UNORDERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*, %struct.sctp_association*, %struct.sctp_stream_in*, i32)* @sctp_deliver_reasm_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_deliver_reasm_check(%struct.sctp_tcb* %0, %struct.sctp_association* %1, %struct.sctp_stream_in* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_stream_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_queued_to_read*, align 8
  %11 = alloca %struct.sctp_queued_to_read*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %7, align 8
  store %struct.sctp_stream_in* %2, %struct.sctp_stream_in** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sctp_queued_to_read* null, %struct.sctp_queued_to_read** %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %17 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %4
  %21 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %22 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @SCTP_SB_LIMIT_RCV(%struct.TYPE_4__* %23)
  %25 = load i32, i32* @SCTP_PARTIAL_DELIVERY_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %28 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @min(i32 %26, i64 %31)
  store i64 %32, i64* %13, align 8
  br label %39

33:                                               ; preds = %4
  %34 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %35 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %13, align 8
  br label %39

39:                                               ; preds = %33, %20
  %40 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %41 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %40, i32 0, i32 3
  %42 = call %struct.sctp_queued_to_read* @TAILQ_FIRST(i32* %41)
  store %struct.sctp_queued_to_read* %42, %struct.sctp_queued_to_read** %10, align 8
  %43 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %44 = icmp ne %struct.sctp_queued_to_read* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %47 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %52 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %53 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %54 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @sctp_handle_old_unordered_data(%struct.sctp_tcb* %51, %struct.sctp_association* %52, %struct.sctp_stream_in* %53, %struct.sctp_queued_to_read* %54, i64 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %166

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %45, %39
  %62 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %63 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %496

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %163, %67
  %69 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %70 = icmp ne %struct.sctp_queued_to_read* %69, null
  br i1 %70, label %71, label %165

71:                                               ; preds = %68
  %72 = load i32, i32* @SCTP_DEBUG_XXX, align 4
  %73 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %74 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %75 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %78 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %81 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %80, i32 0, i32 11
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %84 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, %struct.sctp_queued_to_read*, i64, i64, i32, i32, ...) @SCTPDBG(i32 %72, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.sctp_queued_to_read* %73, i64 %76, i64 %79, i32 %82, i32 %85)
  %87 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %88 = load i32, i32* @next_instrm, align 4
  %89 = call %struct.sctp_queued_to_read* @TAILQ_NEXT(%struct.sctp_queued_to_read* %87, i32 %88)
  store %struct.sctp_queued_to_read* %89, %struct.sctp_queued_to_read** %11, align 8
  %90 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %91 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %131

94:                                               ; preds = %71
  %95 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %96 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load i32, i32* @sctps_reasmusrmsgs, align 4
  %101 = call i32 @SCTP_STAT_INCR_COUNTER64(i32 %100)
  %102 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %103 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %102, i32 0, i32 3
  %104 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %105 = load i32, i32* @next_instrm, align 4
  %106 = call i32 @TAILQ_REMOVE(i32* %103, %struct.sctp_queued_to_read* %104, i32 %105)
  %107 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %108 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %99, %94
  %110 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %111 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %116 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %115, i32 0, i32 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %119 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %120 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %121 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %125 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %129 = call i32 @sctp_add_to_readq(%struct.TYPE_3__* %117, %struct.sctp_tcb* %118, %struct.sctp_queued_to_read* %119, i32* %123, i64 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %114, %109
  br label %163

131:                                              ; preds = %71
  %132 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %133 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %13, align 8
  %136 = icmp sge i64 %134, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %131
  %138 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %139 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %137
  %143 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %144 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %143, i32 0, i32 0
  store i64 1, i64* %144, align 8
  %145 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %146 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %145, i32 0, i32 5
  store i32 1, i32* %146, align 8
  %147 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %148 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %147, i32 0, i32 1
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %151 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %152 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %153 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %157 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %161 = call i32 @sctp_add_to_readq(%struct.TYPE_3__* %149, %struct.sctp_tcb* %150, %struct.sctp_queued_to_read* %151, i32* %155, i64 %158, i32 %159, i32 %160)
  br label %165

162:                                              ; preds = %137, %131
  br label %163

163:                                              ; preds = %162, %130
  %164 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %11, align 8
  store %struct.sctp_queued_to_read* %164, %struct.sctp_queued_to_read** %10, align 8
  br label %68

165:                                              ; preds = %142, %68
  br label %166

166:                                              ; preds = %165, %59
  %167 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %168 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %167, i32 0, i32 2
  %169 = call %struct.sctp_queued_to_read* @TAILQ_FIRST(i32* %168)
  store %struct.sctp_queued_to_read* %169, %struct.sctp_queued_to_read** %10, align 8
  %170 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %171 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  store i32 0, i32* %5, align 4
  br label %496

175:                                              ; preds = %166
  %176 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %177 = icmp eq %struct.sctp_queued_to_read* %176, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* %14, align 4
  store i32 %179, i32* %5, align 4
  br label %496

180:                                              ; preds = %175
  %181 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %182 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %185 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %188 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @SCTP_MID_EQ(i64 %183, i64 %186, i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %295

192:                                              ; preds = %180
  %193 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %194 = load i32, i32* @next_instrm, align 4
  %195 = call %struct.sctp_queued_to_read* @TAILQ_NEXT(%struct.sctp_queued_to_read* %193, i32 %194)
  store %struct.sctp_queued_to_read* %195, %struct.sctp_queued_to_read** %11, align 8
  %196 = load i32, i32* @SCTP_DEBUG_XXX, align 4
  %197 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %198 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %199 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %202 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %205 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %208 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %207, i32 0, i32 10
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %211 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i32 (i32, i8*, %struct.sctp_queued_to_read*, i64, i64, i32, i32, ...) @SCTPDBG(i32 %196, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), %struct.sctp_queued_to_read* %197, i64 %200, i64 %203, i32 %206, i32 %209, i64 %212)
  %214 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %215 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %294

218:                                              ; preds = %192
  %219 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %220 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %256

223:                                              ; preds = %218
  %224 = load i32, i32* @sctps_reasmusrmsgs, align 4
  %225 = call i32 @SCTP_STAT_INCR_COUNTER64(i32 %224)
  %226 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %227 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %226, i32 0, i32 2
  %228 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %229 = load i32, i32* @next_instrm, align 4
  %230 = call i32 @TAILQ_REMOVE(i32* %227, %struct.sctp_queued_to_read* %228, i32 %229)
  %231 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %232 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %235 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp sge i64 %233, %236
  br i1 %237, label %238, label %246

238:                                              ; preds = %223
  %239 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %240 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %243 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = sub nsw i64 %244, %241
  store i64 %245, i64* %243, align 8
  br label %249

246:                                              ; preds = %223
  %247 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %248 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %247, i32 0, i32 1
  store i64 0, i64* %248, align 8
  br label %249

249:                                              ; preds = %246, %238
  %250 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %251 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @sctp_ucount_decr(i32 %252)
  %254 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %255 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %254, i32 0, i32 2
  store i64 0, i64* %255, align 8
  br label %256

256:                                              ; preds = %249, %218
  %257 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %258 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %256
  %262 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %263 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %268 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %267, i32 0, i32 5
  store i32 0, i32* %268, align 8
  %269 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %270 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %269, i32 0, i32 0
  store i64 0, i64* %270, align 8
  br label %271

271:                                              ; preds = %266, %261, %256
  %272 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %273 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %292

276:                                              ; preds = %271
  %277 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %278 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %277, i32 0, i32 1
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %278, align 8
  %280 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %281 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %282 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %283 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %282, i32 0, i32 0
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %287 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %291 = call i32 @sctp_add_to_readq(%struct.TYPE_3__* %279, %struct.sctp_tcb* %280, %struct.sctp_queued_to_read* %281, i32* %285, i64 %288, i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %276, %271
  %293 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %11, align 8
  store %struct.sctp_queued_to_read* %293, %struct.sctp_queued_to_read** %10, align 8
  br label %294

294:                                              ; preds = %292, %192
  br label %295

295:                                              ; preds = %294, %180
  %296 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %297 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  store i32 0, i32* %5, align 4
  br label %496

301:                                              ; preds = %295
  br label %302

302:                                              ; preds = %489, %301
  %303 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %304 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %305, 1
  store i64 %306, i64* %12, align 8
  %307 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %308 = icmp ne %struct.sctp_queued_to_read* %307, null
  br i1 %308, label %309, label %493

309:                                              ; preds = %302
  %310 = load i32, i32* @SCTP_DEBUG_XXX, align 4
  %311 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %312 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %313 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %316 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %319 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %318, i32 0, i32 11
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %322 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %321, i32 0, i32 10
  %323 = load i32, i32* %322, align 8
  %324 = load i64, i64* %12, align 8
  %325 = call i32 (i32, i8*, %struct.sctp_queued_to_read*, i64, i64, i32, i32, ...) @SCTPDBG(i32 %310, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), %struct.sctp_queued_to_read* %311, i64 %314, i64 %317, i32 %320, i32 %323, i64 %324)
  %326 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %327 = load i32, i32* @next_instrm, align 4
  %328 = call %struct.sctp_queued_to_read* @TAILQ_NEXT(%struct.sctp_queued_to_read* %326, i32 %327)
  store %struct.sctp_queued_to_read* %328, %struct.sctp_queued_to_read** %11, align 8
  %329 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %330 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %333 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* %12, align 8
  %336 = call i64 @SCTP_MID_EQ(i64 %331, i64 %334, i64 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %492

338:                                              ; preds = %309
  %339 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %340 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %339, i32 0, i32 9
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %492

343:                                              ; preds = %338
  %344 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %345 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %389

348:                                              ; preds = %343
  %349 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %350 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %386

353:                                              ; preds = %348
  %354 = load i32, i32* @sctps_reasmusrmsgs, align 4
  %355 = call i32 @SCTP_STAT_INCR_COUNTER64(i32 %354)
  %356 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %357 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %356, i32 0, i32 2
  %358 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %359 = load i32, i32* @next_instrm, align 4
  %360 = call i32 @TAILQ_REMOVE(i32* %357, %struct.sctp_queued_to_read* %358, i32 %359)
  %361 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %362 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %365 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %364, i32 0, i32 4
  %366 = load i64, i64* %365, align 8
  %367 = icmp sge i64 %363, %366
  br i1 %367, label %368, label %376

368:                                              ; preds = %353
  %369 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %370 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %369, i32 0, i32 4
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %373 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = sub nsw i64 %374, %371
  store i64 %375, i64* %373, align 8
  br label %379

376:                                              ; preds = %353
  %377 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %378 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %377, i32 0, i32 1
  store i64 0, i64* %378, align 8
  br label %379

379:                                              ; preds = %376, %368
  %380 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %381 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = call i32 @sctp_ucount_decr(i32 %382)
  %384 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %385 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %384, i32 0, i32 2
  store i64 0, i64* %385, align 8
  br label %386

386:                                              ; preds = %379, %348
  %387 = load i32, i32* %14, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %14, align 4
  br label %389

389:                                              ; preds = %386, %343
  %390 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %391 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 4
  %393 = ashr i32 %392, 8
  %394 = load i32, i32* @SCTP_DATA_NOT_FRAG, align 4
  %395 = and i32 %393, %394
  %396 = load i32, i32* @SCTP_DATA_NOT_FRAG, align 4
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %404

398:                                              ; preds = %389
  %399 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %400 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %401 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %400, i32 0, i32 8
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @sctp_mark_non_revokable(%struct.sctp_association* %399, i32 %402)
  br label %423

404:                                              ; preds = %389
  %405 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %406 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %409, label %422

409:                                              ; preds = %404
  %410 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %411 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %410, i32 0, i32 4
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* %13, align 8
  %414 = icmp slt i64 %412, %413
  br i1 %414, label %420, label %415

415:                                              ; preds = %409
  %416 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %417 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %415, %409
  br label %494

421:                                              ; preds = %415
  br label %422

422:                                              ; preds = %421, %404
  br label %423

423:                                              ; preds = %422, %398
  %424 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %425 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %433

428:                                              ; preds = %423
  %429 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %430 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %429, i32 0, i32 7
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 0
  br label %433

433:                                              ; preds = %428, %423
  %434 = phi i1 [ false, %423 ], [ %432, %428 ]
  %435 = zext i1 %434 to i32
  store i32 %435, i32* %15, align 4
  %436 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %437 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %436, i32 0, i32 3
  %438 = load i64, i64* %437, align 8
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %440, label %483

440:                                              ; preds = %433
  %441 = load i32, i32* %15, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %467, label %443

443:                                              ; preds = %440
  %444 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %445 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %444, i32 0, i32 1
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %448 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %447, i32 0, i32 4
  %449 = load i64, i64* %448, align 8
  %450 = icmp sge i64 %446, %449
  br i1 %450, label %451, label %459

451:                                              ; preds = %443
  %452 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %453 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %452, i32 0, i32 4
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %456 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = sub nsw i64 %457, %454
  store i64 %458, i64* %456, align 8
  br label %462

459:                                              ; preds = %443
  %460 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %461 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %460, i32 0, i32 1
  store i64 0, i64* %461, align 8
  br label %462

462:                                              ; preds = %459, %451
  %463 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %464 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %463, i32 0, i32 0
  store i64 1, i64* %464, align 8
  %465 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %466 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %465, i32 0, i32 5
  store i32 1, i32* %466, align 8
  br label %467

467:                                              ; preds = %462, %440
  %468 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %469 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %468, i32 0, i32 1
  %470 = load %struct.TYPE_3__*, %struct.TYPE_3__** %469, align 8
  %471 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %472 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %473 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %474 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %473, i32 0, i32 0
  %475 = load %struct.TYPE_4__*, %struct.TYPE_4__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 0
  %477 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %10, align 8
  %478 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = load i32, i32* %9, align 4
  %481 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %482 = call i32 @sctp_add_to_readq(%struct.TYPE_3__* %470, %struct.sctp_tcb* %471, %struct.sctp_queued_to_read* %472, i32* %476, i64 %479, i32 %480, i32 %481)
  br label %483

483:                                              ; preds = %467, %433
  %484 = load i64, i64* %12, align 8
  %485 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %8, align 8
  %486 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %485, i32 0, i32 1
  store i64 %484, i64* %486, align 8
  %487 = load i32, i32* %15, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %491

489:                                              ; preds = %483
  %490 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %11, align 8
  store %struct.sctp_queued_to_read* %490, %struct.sctp_queued_to_read** %10, align 8
  br label %302

491:                                              ; preds = %483
  br label %492

492:                                              ; preds = %491, %338, %309
  br label %493

493:                                              ; preds = %492, %302
  br label %494

494:                                              ; preds = %493, %420
  %495 = load i32, i32* %14, align 4
  store i32 %495, i32* %5, align 4
  br label %496

496:                                              ; preds = %494, %300, %178, %174, %66
  %497 = load i32, i32* %5, align 4
  ret i32 %497
}

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @SCTP_SB_LIMIT_RCV(%struct.TYPE_4__*) #1

declare dso_local %struct.sctp_queued_to_read* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @sctp_handle_old_unordered_data(%struct.sctp_tcb*, %struct.sctp_association*, %struct.sctp_stream_in*, %struct.sctp_queued_to_read*, i64, i32) #1

declare dso_local i32 @SCTPDBG(i32, i8*, %struct.sctp_queued_to_read*, i64, i64, i32, i32, ...) #1

declare dso_local %struct.sctp_queued_to_read* @TAILQ_NEXT(%struct.sctp_queued_to_read*, i32) #1

declare dso_local i32 @SCTP_STAT_INCR_COUNTER64(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sctp_queued_to_read*, i32) #1

declare dso_local i32 @sctp_add_to_readq(%struct.TYPE_3__*, %struct.sctp_tcb*, %struct.sctp_queued_to_read*, i32*, i64, i32, i32) #1

declare dso_local i64 @SCTP_MID_EQ(i64, i64, i64) #1

declare dso_local i32 @sctp_ucount_decr(i32) #1

declare dso_local i32 @sctp_mark_non_revokable(%struct.sctp_association*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
