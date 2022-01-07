; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_TxAbortErrorM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_TxAbortErrorM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.sctp_nat_msg = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_nat_assoc = type { i32, i32, i64, i64 }
%struct.ip = type { i32, i32, i32, i32, i32, i32, i64, i32, i8*, i64, i32 }
%struct.sctphdr = type { i64, i64, i8*, i8* }
%struct.sctp_chunkhdr = type { i32, i8*, i32 }
%struct.sctp_error_cause = type { i8*, i8* }

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SN_TX_ABORT = common dso_local global i32 0, align 4
@SCTP_ABORT_ASSOCIATION = common dso_local global i32 0, align 4
@SCTP_OPERATION_ERROR = common dso_local global i32 0, align 4
@SCTP_HAD_NO_TCB = common dso_local global i32 0, align 4
@SN_TO_LOCAL = common dso_local global i32 0, align 4
@SN_LOG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s %s 0x%x (->%s:%u vtag=0x%x crc=0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Sending\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Replying\00", align 1
@SN_TX_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ErrorM\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"AbortM\00", align 1
@SCTP_MIDDLEBOX_FLAG = common dso_local global i32 0, align 4
@SCTP_MISSING_NAT = common dso_local global i32 0, align 4
@SCTP_NAT_TABLE_COLLISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*, %struct.sctp_nat_msg*, %struct.sctp_nat_assoc*, i32, i32)* @TxAbortErrorM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TxAbortErrorM(%struct.libalias* %0, %struct.sctp_nat_msg* %1, %struct.sctp_nat_assoc* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.libalias*, align 8
  %7 = alloca %struct.sctp_nat_msg*, align 8
  %8 = alloca %struct.sctp_nat_assoc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ip*, align 8
  %18 = alloca %struct.sctphdr*, align 8
  %19 = alloca %struct.sctp_chunkhdr*, align 8
  %20 = alloca %struct.sctp_error_cause*, align 8
  store %struct.libalias* %0, %struct.libalias** %6, align 8
  store %struct.sctp_nat_msg* %1, %struct.sctp_nat_msg** %7, align 8
  store %struct.sctp_nat_assoc* %2, %struct.sctp_nat_assoc** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 72, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 64, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %25 = load i32, i32* %12, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %29 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  %32 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %33 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @ntohs(i8* %36)
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 16
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 %46, 16
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %40, %5
  %50 = bitcast i8* %28 to %struct.ip*
  store %struct.ip* %50, %struct.ip** %17, align 8
  %51 = load %struct.ip*, %struct.ip** %17, align 8
  %52 = bitcast %struct.ip* %51 to i8*
  %53 = getelementptr inbounds i8, i8* %52, i64 64
  %54 = bitcast i8* %53 to %struct.sctphdr*
  store %struct.sctphdr* %54, %struct.sctphdr** %18, align 8
  %55 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %56 = bitcast %struct.sctphdr* %55 to i8*
  %57 = getelementptr inbounds i8, i8* %56, i64 32
  %58 = bitcast i8* %57 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %58, %struct.sctp_chunkhdr** %19, align 8
  %59 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %19, align 8
  %60 = bitcast %struct.sctp_chunkhdr* %59 to i8*
  %61 = getelementptr inbounds i8, i8* %60, i64 24
  %62 = bitcast i8* %61 to %struct.sctp_error_cause*
  store %struct.sctp_error_cause* %62, %struct.sctp_error_cause** %20, align 8
  %63 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %64 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ip*, %struct.ip** %17, align 8
  %69 = getelementptr inbounds %struct.ip, %struct.ip* %68, i32 0, i32 10
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ip*, %struct.ip** %17, align 8
  %71 = getelementptr inbounds %struct.ip, %struct.ip* %70, i32 0, i32 0
  store i32 5, i32* %71, align 8
  %72 = load %struct.ip*, %struct.ip** %17, align 8
  %73 = getelementptr inbounds %struct.ip, %struct.ip* %72, i32 0, i32 9
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i8* @htons(i32 %74)
  %76 = load %struct.ip*, %struct.ip** %17, align 8
  %77 = getelementptr inbounds %struct.ip, %struct.ip* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %79 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ip*, %struct.ip** %17, align 8
  %84 = getelementptr inbounds %struct.ip, %struct.ip* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ip*, %struct.ip** %17, align 8
  %86 = getelementptr inbounds %struct.ip, %struct.ip* %85, i32 0, i32 6
  store i64 0, i64* %86, align 8
  %87 = load %struct.ip*, %struct.ip** %17, align 8
  %88 = getelementptr inbounds %struct.ip, %struct.ip* %87, i32 0, i32 1
  store i32 255, i32* %88, align 4
  %89 = load i32, i32* @IPPROTO_SCTP, align 4
  %90 = load %struct.ip*, %struct.ip** %17, align 8
  %91 = getelementptr inbounds %struct.ip, %struct.ip* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @SN_TX_ABORT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %49
  %97 = load i32, i32* @SCTP_ABORT_ASSOCIATION, align 4
  br label %100

98:                                               ; preds = %49
  %99 = load i32, i32* @SCTP_OPERATION_ERROR, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %19, align 8
  %103 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %19, align 8
  %105 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %104, i32 0, i32 0
  store i32 2, i32* %105, align 8
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %100
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, 131
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 177, i32 176
  %114 = call i8* @htons(i32 %113)
  %115 = load %struct.sctp_error_cause*, %struct.sctp_error_cause** %20, align 8
  %116 = getelementptr inbounds %struct.sctp_error_cause, %struct.sctp_error_cause* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = call i8* @htons(i32 16)
  %118 = load %struct.sctp_error_cause*, %struct.sctp_error_cause** %20, align 8
  %119 = getelementptr inbounds %struct.sctp_error_cause, %struct.sctp_error_cause* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = call i8* @htons(i32 40)
  %121 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %19, align 8
  %122 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  br label %127

123:                                              ; preds = %100
  %124 = call i8* @htons(i32 24)
  %125 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %19, align 8
  %126 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %123, %108
  %128 = load i32, i32* %9, align 4
  switch i32 %128, label %175 [
    i32 131, label %129
    i32 129, label %142
    i32 128, label %158
    i32 130, label %166
  ]

129:                                              ; preds = %127
  %130 = load i32, i32* @SCTP_HAD_NO_TCB, align 4
  %131 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %19, align 8
  %132 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %136 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %135, i32 0, i32 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %141 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  br label %175

142:                                              ; preds = %127
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @SN_TO_LOCAL, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %148 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  br label %154

150:                                              ; preds = %142
  %151 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %152 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  br label %154

154:                                              ; preds = %150, %146
  %155 = phi i64 [ %149, %146 ], [ %153, %150 ]
  %156 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %157 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  br label %175

158:                                              ; preds = %127
  %159 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %160 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %159, i32 0, i32 1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %165 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  br label %175

166:                                              ; preds = %127
  %167 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %168 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %174 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %127, %166, %158, %154, %129
  %176 = load i32, i32* %9, align 4
  %177 = icmp eq i32 %176, 128
  br i1 %177, label %178, label %227

178:                                              ; preds = %175
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @SN_TO_LOCAL, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %184 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %183, i32 0, i32 0
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  br label %192

188:                                              ; preds = %178
  %189 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %190 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  br label %192

192:                                              ; preds = %188, %182
  %193 = phi i32 [ %187, %182 ], [ %191, %188 ]
  %194 = load %struct.ip*, %struct.ip** %17, align 8
  %195 = getelementptr inbounds %struct.ip, %struct.ip* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @SN_TO_LOCAL, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %192
  %200 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %201 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  br label %209

203:                                              ; preds = %192
  %204 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %205 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %204, i32 0, i32 0
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  br label %209

209:                                              ; preds = %203, %199
  %210 = phi i32 [ %202, %199 ], [ %208, %203 ]
  %211 = load %struct.ip*, %struct.ip** %17, align 8
  %212 = getelementptr inbounds %struct.ip, %struct.ip* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %214 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %213, i32 0, i32 1
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %219 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %218, i32 0, i32 3
  store i8* %217, i8** %219, align 8
  %220 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %221 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %220, i32 0, i32 1
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %226 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %225, i32 0, i32 2
  store i8* %224, i8** %226, align 8
  br label %256

227:                                              ; preds = %175
  %228 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %229 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %228, i32 0, i32 0
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.ip*, %struct.ip** %17, align 8
  %234 = getelementptr inbounds %struct.ip, %struct.ip* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 8
  %235 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %236 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %235, i32 0, i32 0
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.ip*, %struct.ip** %17, align 8
  %241 = getelementptr inbounds %struct.ip, %struct.ip* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %243 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %242, i32 0, i32 1
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %248 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %247, i32 0, i32 3
  store i8* %246, i8** %248, align 8
  %249 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %250 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %249, i32 0, i32 1
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %255 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %254, i32 0, i32 2
  store i8* %253, i8** %255, align 8
  br label %256

256:                                              ; preds = %227, %209
  %257 = load %struct.ip*, %struct.ip** %17, align 8
  %258 = call i32 @in_cksum_hdr(%struct.ip* %257)
  %259 = load %struct.ip*, %struct.ip** %17, align 8
  %260 = getelementptr inbounds %struct.ip, %struct.ip* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 4
  %261 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %262 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %261, i32 0, i32 0
  store i64 0, i64* %262, align 8
  %263 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %264 = bitcast %struct.sctphdr* %263 to i8*
  %265 = load i32, i32* %11, align 4
  %266 = call i32 @calculate_crc32c(i32 -1, i8* %264, i32 %265)
  %267 = call i64 @local_sctp_finalize_crc32(i32 %266)
  %268 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %269 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %268, i32 0, i32 0
  store i64 %267, i64* %269, align 8
  %270 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %7, align 8
  %271 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %270, i32 0, i32 0
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %271, align 8
  %273 = load %struct.ip*, %struct.ip** %17, align 8
  %274 = load i32, i32* %12, align 4
  %275 = call i32 @memcpy(%struct.TYPE_8__* %272, %struct.ip* %273, i32 %274)
  %276 = load i32, i32* @SN_LOG_EVENT, align 4
  %277 = load i32, i32* %9, align 4
  %278 = icmp eq i32 %277, 128
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @SN_TX_ERROR, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  %285 = zext i1 %284 to i64
  %286 = select i1 %284, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %287 = load i32, i32* %13, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %256
  %290 = load %struct.sctp_error_cause*, %struct.sctp_error_cause** %20, align 8
  %291 = getelementptr inbounds %struct.sctp_error_cause, %struct.sctp_error_cause* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @ntohs(i8* %292)
  br label %295

294:                                              ; preds = %256
  br label %295

295:                                              ; preds = %294, %289
  %296 = phi i32 [ %293, %289 ], [ 0, %294 ]
  %297 = load %struct.ip*, %struct.ip** %17, align 8
  %298 = getelementptr inbounds %struct.ip, %struct.ip* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @INET_NTOA_BUF(i8* %31)
  %301 = call i32 @inet_ntoa_r(i32 %299, i32 %300)
  %302 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %303 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %302, i32 0, i32 2
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @ntohs(i8* %304)
  %306 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %307 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @ntohl(i64 %308)
  %310 = load %struct.sctphdr*, %struct.sctphdr** %18, align 8
  %311 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @ntohl(i64 %312)
  %314 = call i32 @SctpAliasLog(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %280, i8* %286, i32 %296, i32 %301, i32 %305, i32 %309, i32 %313)
  %315 = call i32 @SN_LOG(i32 %276, i32 %314)
  %316 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %316)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ntohs(i8*) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @in_cksum_hdr(%struct.ip*) #2

declare dso_local i64 @local_sctp_finalize_crc32(i32) #2

declare dso_local i32 @calculate_crc32c(i32, i8*, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.ip*, i32) #2

declare dso_local i32 @SN_LOG(i32, i32) #2

declare dso_local i32 @SctpAliasLog(i8*, i8*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @inet_ntoa_r(i32, i32) #2

declare dso_local i32 @INET_NTOA_BUF(i8*) #2

declare dso_local i32 @ntohl(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
