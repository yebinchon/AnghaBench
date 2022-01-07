; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_sctp_PktParser.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_sctp_PktParser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32, i32, %struct.in_addr, i32 }
%struct.in_addr = type { i32 }
%struct.sctp_nat_msg = type { i32, %struct.TYPE_2__, i32, %struct.sctphdr*, %struct.ip* }
%struct.TYPE_2__ = type { %struct.sctp_paramhdr*, %struct.sctp_init_ack*, %struct.sctp_init* }
%struct.sctp_paramhdr = type { i32 }
%struct.sctp_init_ack = type { i32 }
%struct.sctp_init = type { i32 }
%struct.sctphdr = type { i64, i64, i32 }
%struct.sctp_nat_assoc = type { i8*, i32, i8* }
%struct.sctp_chunkhdr = type { i32, i32, i32 }
%struct.sctp_ipv4addr_param = type { i32 }

@SN_PARSE_ERROR_IPSHL = common dso_local global i32 0, align 4
@SN_PARSE_ERROR_PORT = common dso_local global i32 0, align 4
@SN_MIN_CHUNK_SIZE = common dso_local global i32 0, align 4
@SN_PARSE_ERROR_CHHL = common dso_local global i32 0, align 4
@SCTP_HAD_NO_TCB = common dso_local global i32 0, align 4
@SN_TO_LOCAL = common dso_local global i32 0, align 4
@SN_SCTP_OTHER = common dso_local global i32 0, align 4
@SN_SCTP_INIT = common dso_local global i32 0, align 4
@SN_PARSE_ERROR_AS_MALLOC = common dso_local global i32 0, align 4
@SN_ID = common dso_local global i8* null, align 8
@SN_NULL_TBL = common dso_local global i8* null, align 8
@SN_PARSE_OK = common dso_local global i32 0, align 4
@SN_PARSE_ERROR_VTAG = common dso_local global i32 0, align 4
@SN_PARSE_ERROR_LOOKUP = common dso_local global i32 0, align 4
@SN_SCTP_INITACK = common dso_local global i32 0, align 4
@SN_SCTP_ABORT = common dso_local global i32 0, align 4
@SN_PARSE_ERROR_LOOKUP_ABORT = common dso_local global i32 0, align 4
@SN_SCTP_SHUTACK = common dso_local global i32 0, align 4
@SN_SCTP_SHUTCOMP = common dso_local global i32 0, align 4
@SN_SCTP_ASCONF = common dso_local global i32 0, align 4
@SCTP_IPV4_ADDRESS = common dso_local global i32 0, align 4
@SN_SCTP_ASCONFACK = common dso_local global i32 0, align 4
@sysctl_initialising_chunk_proc_limit = common dso_local global i32 0, align 4
@sysctl_chunk_proc_limit = common dso_local global i32 0, align 4
@SN_PARSE_ERROR_PARTIALLOOKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i32, %struct.ip*, %struct.sctp_nat_msg*, %struct.sctp_nat_assoc**)* @sctp_PktParser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_PktParser(%struct.libalias* %0, i32 %1, %struct.ip* %2, %struct.sctp_nat_msg* %3, %struct.sctp_nat_assoc** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.libalias*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip*, align 8
  %10 = alloca %struct.sctp_nat_msg*, align 8
  %11 = alloca %struct.sctp_nat_assoc**, align 8
  %12 = alloca %struct.sctphdr*, align 8
  %13 = alloca %struct.sctp_chunkhdr*, align 8
  %14 = alloca %struct.sctp_paramhdr*, align 8
  %15 = alloca %struct.in_addr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ip* %2, %struct.ip** %9, align 8
  store %struct.sctp_nat_msg* %3, %struct.sctp_nat_msg** %10, align 8
  store %struct.sctp_nat_assoc** %4, %struct.sctp_nat_assoc*** %11, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.ip*, %struct.ip** %9, align 8
  %21 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %22 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %21, i32 0, i32 4
  store %struct.ip* %20, %struct.ip** %22, align 8
  %23 = load %struct.ip*, %struct.ip** %9, align 8
  %24 = getelementptr inbounds %struct.ip, %struct.ip* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = load %struct.ip*, %struct.ip** %9, align 8
  %28 = getelementptr inbounds %struct.ip, %struct.ip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 2
  %31 = sub nsw i32 %26, %30
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 24
  br i1 %34, label %35, label %39

35:                                               ; preds = %5
  %36 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %37 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %36, i32 0, i32 3
  store %struct.sctphdr* null, %struct.sctphdr** %37, align 8
  %38 = load i32, i32* @SN_PARSE_ERROR_IPSHL, align 4
  store i32 %38, i32* %6, align 4
  br label %558

39:                                               ; preds = %5
  %40 = load %struct.ip*, %struct.ip** %9, align 8
  %41 = call i64 @ip_next(%struct.ip* %40)
  %42 = inttoptr i64 %41 to %struct.sctphdr*
  store %struct.sctphdr* %42, %struct.sctphdr** %12, align 8
  %43 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %44 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %43, i32 0, i32 3
  store %struct.sctphdr* %42, %struct.sctphdr** %44, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 %46, 24
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %16, align 4
  %49 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %50 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %39
  %54 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %55 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %39
  %59 = load i32, i32* @SN_PARSE_ERROR_PORT, align 4
  store i32 %59, i32* %6, align 4
  br label %558

60:                                               ; preds = %53
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @SN_MIN_CHUNK_SIZE, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @SN_PARSE_ERROR_CHHL, align 4
  store i32 %65, i32* %6, align 4
  br label %558

66:                                               ; preds = %60
  %67 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %68 = call %struct.sctp_chunkhdr* @SN_SCTP_FIRSTCHUNK(%struct.sctphdr* %67)
  store %struct.sctp_chunkhdr* %68, %struct.sctp_chunkhdr** %13, align 8
  %69 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %70 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ntohs(i32 %71)
  %73 = call i32 @SCTP_SIZE32(i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @SN_MIN_CHUNK_SIZE, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %66
  %82 = load i32, i32* @SN_PARSE_ERROR_CHHL, align 4
  store i32 %82, i32* %6, align 4
  br label %558

83:                                               ; preds = %77
  %84 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %85 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SCTP_HAD_NO_TCB, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %138

90:                                               ; preds = %83
  %91 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %92 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 134
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %97 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 128
  br i1 %99, label %100, label %138

100:                                              ; preds = %95, %90
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @SN_TO_LOCAL, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load %struct.libalias*, %struct.libalias** %7, align 8
  %106 = load %struct.ip*, %struct.ip** %9, align 8
  %107 = getelementptr inbounds %struct.ip, %struct.ip* %106, i32 0, i32 2
  %108 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %109 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %112 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %115 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %107, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.sctp_nat_assoc* @FindSctpGlobalT(%struct.libalias* %105, i32 %118, i32 %110, i64 %113, i64 %116)
  %120 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  store %struct.sctp_nat_assoc* %119, %struct.sctp_nat_assoc** %120, align 8
  br label %137

121:                                              ; preds = %100
  %122 = load %struct.libalias*, %struct.libalias** %7, align 8
  %123 = load %struct.ip*, %struct.ip** %9, align 8
  %124 = getelementptr inbounds %struct.ip, %struct.ip* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %127 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %130 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %133 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call %struct.sctp_nat_assoc* @FindSctpLocalT(%struct.libalias* %122, i32 %125, i32 %128, i64 %131, i64 %134)
  %136 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  store %struct.sctp_nat_assoc* %135, %struct.sctp_nat_assoc** %136, align 8
  br label %137

137:                                              ; preds = %121, %104
  br label %180

138:                                              ; preds = %95, %83
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @SN_TO_LOCAL, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %138
  %143 = load %struct.libalias*, %struct.libalias** %7, align 8
  %144 = load %struct.ip*, %struct.ip** %9, align 8
  %145 = getelementptr inbounds %struct.ip, %struct.ip* %144, i32 0, i32 2
  %146 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %147 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %150 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %153 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %145, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call %struct.sctp_nat_assoc* @FindSctpGlobal(%struct.libalias* %143, i32 %156, i32 %148, i64 %151, i64 %154, i32* %19)
  %158 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  store %struct.sctp_nat_assoc* %157, %struct.sctp_nat_assoc** %158, align 8
  br label %179

159:                                              ; preds = %138
  %160 = load %struct.libalias*, %struct.libalias** %7, align 8
  %161 = load %struct.ip*, %struct.ip** %9, align 8
  %162 = getelementptr inbounds %struct.ip, %struct.ip* %161, i32 0, i32 2
  %163 = load %struct.ip*, %struct.ip** %9, align 8
  %164 = getelementptr inbounds %struct.ip, %struct.ip* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %167 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %170 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %173 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %162, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call %struct.sctp_nat_assoc* @FindSctpLocal(%struct.libalias* %160, i32 %176, i32 %165, i32 %168, i64 %171, i64 %174)
  %178 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  store %struct.sctp_nat_assoc* %177, %struct.sctp_nat_assoc** %178, align 8
  br label %179

179:                                              ; preds = %159, %142
  br label %180

180:                                              ; preds = %179, %137
  store i32 1, i32* %18, align 4
  %181 = load i32, i32* @SN_SCTP_OTHER, align 4
  %182 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %183 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %185 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  br label %186

186:                                              ; preds = %542, %180
  %187 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %188 = call i64 @IS_SCTP_CONTROL(%struct.sctp_chunkhdr* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %543

190:                                              ; preds = %186
  %191 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %192 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  switch i32 %193, label %485 [
    i32 131, label %194
    i32 130, label %249
    i32 134, label %278
    i32 129, label %294
    i32 128, label %314
    i32 133, label %337
    i32 132, label %454
  ]

194:                                              ; preds = %190
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = icmp ult i64 %196, 4
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @SN_PARSE_ERROR_CHHL, align 4
  store i32 %199, i32* %6, align 4
  br label %558

200:                                              ; preds = %194
  %201 = load i32, i32* @SN_SCTP_INIT, align 4
  %202 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %203 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %205 = bitcast %struct.sctp_chunkhdr* %204 to i8*
  %206 = getelementptr inbounds i8, i8* %205, i64 12
  %207 = bitcast i8* %206 to %struct.sctp_init*
  %208 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %209 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 2
  store %struct.sctp_init* %207, %struct.sctp_init** %210, align 8
  %211 = load i32, i32* %17, align 4
  %212 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %213 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  %214 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %215 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %214, align 8
  %216 = icmp eq %struct.sctp_nat_assoc* %215, null
  br i1 %216, label %217, label %247

217:                                              ; preds = %200
  %218 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %219 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %245

222:                                              ; preds = %217
  %223 = call i64 @sn_malloc(i32 24)
  %224 = inttoptr i64 %223 to %struct.sctp_nat_assoc*
  %225 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  store %struct.sctp_nat_assoc* %224, %struct.sctp_nat_assoc** %225, align 8
  %226 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %227 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %226, align 8
  %228 = icmp eq %struct.sctp_nat_assoc* %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %222
  %230 = load i32, i32* @SN_PARSE_ERROR_AS_MALLOC, align 4
  store i32 %230, i32* %6, align 4
  br label %558

231:                                              ; preds = %222
  %232 = load i8*, i8** @SN_ID, align 8
  %233 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %234 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %233, align 8
  %235 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %234, i32 0, i32 2
  store i8* %232, i8** %235, align 8
  %236 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %237 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %236, align 8
  %238 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %237, i32 0, i32 1
  %239 = call i32 @LIST_INIT(i32* %238)
  %240 = load i8*, i8** @SN_NULL_TBL, align 8
  %241 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %242 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %241, align 8
  %243 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %242, i32 0, i32 0
  store i8* %240, i8** %243, align 8
  %244 = load i32, i32* @SN_PARSE_OK, align 4
  store i32 %244, i32* %6, align 4
  br label %558

245:                                              ; preds = %217
  %246 = load i32, i32* @SN_PARSE_ERROR_VTAG, align 4
  store i32 %246, i32* %6, align 4
  br label %558

247:                                              ; preds = %200
  %248 = load i32, i32* @SN_PARSE_ERROR_LOOKUP, align 4
  store i32 %248, i32* %6, align 4
  br label %558

249:                                              ; preds = %190
  %250 = load i32, i32* %17, align 4
  %251 = sext i32 %250 to i64
  %252 = icmp ult i64 %251, 4
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = load i32, i32* @SN_PARSE_ERROR_CHHL, align 4
  store i32 %254, i32* %6, align 4
  br label %558

255:                                              ; preds = %249
  %256 = load i32, i32* @SN_SCTP_INITACK, align 4
  %257 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %258 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %260 = bitcast %struct.sctp_chunkhdr* %259 to i8*
  %261 = getelementptr inbounds i8, i8* %260, i64 12
  %262 = bitcast i8* %261 to %struct.sctp_init_ack*
  %263 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %264 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 1
  store %struct.sctp_init_ack* %262, %struct.sctp_init_ack** %265, align 8
  %266 = load i32, i32* %17, align 4
  %267 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %268 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %270 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %269, align 8
  %271 = icmp eq %struct.sctp_nat_assoc* %270, null
  br i1 %271, label %272, label %274

272:                                              ; preds = %255
  %273 = load i32, i32* @SN_PARSE_ERROR_LOOKUP, align 4
  br label %276

274:                                              ; preds = %255
  %275 = load i32, i32* @SN_PARSE_OK, align 4
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi i32 [ %273, %272 ], [ %275, %274 ]
  store i32 %277, i32* %6, align 4
  br label %558

278:                                              ; preds = %190
  %279 = load i32, i32* @SN_SCTP_ABORT, align 4
  %280 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %281 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 8
  %282 = load i32, i32* %17, align 4
  %283 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %284 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  %285 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %286 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %285, align 8
  %287 = icmp eq %struct.sctp_nat_assoc* %286, null
  br i1 %287, label %288, label %290

288:                                              ; preds = %278
  %289 = load i32, i32* @SN_PARSE_ERROR_LOOKUP_ABORT, align 4
  br label %292

290:                                              ; preds = %278
  %291 = load i32, i32* @SN_PARSE_OK, align 4
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i32 [ %289, %288 ], [ %291, %290 ]
  store i32 %293, i32* %6, align 4
  br label %558

294:                                              ; preds = %190
  %295 = load i32, i32* %17, align 4
  %296 = sext i32 %295 to i64
  %297 = icmp ult i64 %296, 4
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = load i32, i32* @SN_PARSE_ERROR_CHHL, align 4
  store i32 %299, i32* %6, align 4
  br label %558

300:                                              ; preds = %294
  %301 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %302 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @SN_SCTP_SHUTACK, align 4
  %305 = icmp sgt i32 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %300
  %307 = load i32, i32* @SN_SCTP_SHUTACK, align 4
  %308 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %309 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 8
  %310 = load i32, i32* %17, align 4
  %311 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %312 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %311, i32 0, i32 0
  store i32 %310, i32* %312, align 8
  br label %313

313:                                              ; preds = %306, %300
  br label %486

314:                                              ; preds = %190
  %315 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %316 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @SN_SCTP_SHUTCOMP, align 4
  %319 = icmp sgt i32 %317, %318
  br i1 %319, label %320, label %327

320:                                              ; preds = %314
  %321 = load i32, i32* @SN_SCTP_SHUTCOMP, align 4
  %322 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %323 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %322, i32 0, i32 2
  store i32 %321, i32* %323, align 8
  %324 = load i32, i32* %17, align 4
  %325 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %326 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 8
  br label %327

327:                                              ; preds = %320, %314
  %328 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %329 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %328, align 8
  %330 = icmp eq %struct.sctp_nat_assoc* %329, null
  br i1 %330, label %331, label %333

331:                                              ; preds = %327
  %332 = load i32, i32* @SN_PARSE_ERROR_LOOKUP, align 4
  br label %335

333:                                              ; preds = %327
  %334 = load i32, i32* @SN_PARSE_OK, align 4
  br label %335

335:                                              ; preds = %333, %331
  %336 = phi i32 [ %332, %331 ], [ %334, %333 ]
  store i32 %336, i32* %6, align 4
  br label %558

337:                                              ; preds = %190
  %338 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %339 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @SN_SCTP_ASCONF, align 4
  %342 = icmp sgt i32 %340, %341
  br i1 %342, label %343, label %453

343:                                              ; preds = %337
  %344 = load i32, i32* %17, align 4
  %345 = sext i32 %344 to i64
  %346 = icmp ult i64 %345, 8
  br i1 %346, label %347, label %349

347:                                              ; preds = %343
  %348 = load i32, i32* @SN_PARSE_ERROR_CHHL, align 4
  store i32 %348, i32* %6, align 4
  br label %558

349:                                              ; preds = %343
  %350 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %351 = bitcast %struct.sctp_chunkhdr* %350 to i8*
  %352 = getelementptr inbounds i8, i8* %351, i64 4
  %353 = bitcast i8* %352 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %353, %struct.sctp_paramhdr** %14, align 8
  %354 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %355 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @ntohs(i32 %356)
  %358 = load i32, i32* @SCTP_IPV4_ADDRESS, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %400

360:                                              ; preds = %349
  %361 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %362 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %361, align 8
  %363 = icmp eq %struct.sctp_nat_assoc* %362, null
  br i1 %363, label %364, label %388

364:                                              ; preds = %360
  %365 = load i32, i32* %8, align 4
  %366 = load i32, i32* @SN_TO_LOCAL, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %388

368:                                              ; preds = %364
  %369 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %370 = bitcast %struct.sctp_paramhdr* %369 to %struct.sctp_ipv4addr_param*
  %371 = getelementptr inbounds %struct.sctp_ipv4addr_param, %struct.sctp_ipv4addr_param* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  store i32 %372, i32* %373, align 4
  %374 = load %struct.libalias*, %struct.libalias** %7, align 8
  %375 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %376 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %379 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.sctphdr*, %struct.sctphdr** %12, align 8
  %382 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = call %struct.sctp_nat_assoc* @FindSctpGlobal(%struct.libalias* %374, i32 %385, i32 %377, i64 %380, i64 %383, i32* %19)
  %387 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  store %struct.sctp_nat_assoc* %386, %struct.sctp_nat_assoc** %387, align 8
  br label %388

388:                                              ; preds = %368, %364, %360
  %389 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %390 = bitcast %struct.sctp_paramhdr* %389 to i8*
  %391 = getelementptr inbounds i8, i8* %390, i64 4
  %392 = bitcast i8* %391 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %392, %struct.sctp_paramhdr** %14, align 8
  %393 = load i32, i32* %17, align 4
  %394 = sext i32 %393 to i64
  %395 = sub i64 %394, 4
  %396 = sub i64 %395, 4
  %397 = trunc i64 %396 to i32
  %398 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %399 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %398, i32 0, i32 0
  store i32 %397, i32* %399, align 8
  br label %418

400:                                              ; preds = %349
  %401 = load i32, i32* %17, align 4
  %402 = sext i32 %401 to i64
  %403 = icmp ult i64 %402, 8
  br i1 %403, label %404, label %406

404:                                              ; preds = %400
  %405 = load i32, i32* @SN_PARSE_ERROR_CHHL, align 4
  store i32 %405, i32* %6, align 4
  br label %558

406:                                              ; preds = %400
  %407 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %408 = bitcast %struct.sctp_paramhdr* %407 to i8*
  %409 = getelementptr inbounds i8, i8* %408, i64 4
  %410 = bitcast i8* %409 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %410, %struct.sctp_paramhdr** %14, align 8
  %411 = load i32, i32* %17, align 4
  %412 = sext i32 %411 to i64
  %413 = sub i64 %412, 4
  %414 = sub i64 %413, 4
  %415 = trunc i64 %414 to i32
  %416 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %417 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %416, i32 0, i32 0
  store i32 %415, i32* %417, align 8
  br label %418

418:                                              ; preds = %406, %388
  %419 = load i32, i32* @SN_SCTP_ASCONF, align 4
  %420 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %421 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %420, i32 0, i32 2
  store i32 %419, i32* %421, align 8
  %422 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %423 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %424 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %424, i32 0, i32 0
  store %struct.sctp_paramhdr* %422, %struct.sctp_paramhdr** %425, align 8
  %426 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %427 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %426, align 8
  %428 = icmp eq %struct.sctp_nat_assoc* %427, null
  br i1 %428, label %429, label %452

429:                                              ; preds = %418
  %430 = call i64 @sn_malloc(i32 24)
  %431 = inttoptr i64 %430 to %struct.sctp_nat_assoc*
  %432 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  store %struct.sctp_nat_assoc* %431, %struct.sctp_nat_assoc** %432, align 8
  %433 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %434 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %433, align 8
  %435 = icmp eq %struct.sctp_nat_assoc* %434, null
  br i1 %435, label %436, label %438

436:                                              ; preds = %429
  %437 = load i32, i32* @SN_PARSE_ERROR_AS_MALLOC, align 4
  store i32 %437, i32* %6, align 4
  br label %558

438:                                              ; preds = %429
  %439 = load i8*, i8** @SN_ID, align 8
  %440 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %441 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %440, align 8
  %442 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %441, i32 0, i32 2
  store i8* %439, i8** %442, align 8
  %443 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %444 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %443, align 8
  %445 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %444, i32 0, i32 1
  %446 = call i32 @LIST_INIT(i32* %445)
  %447 = load i8*, i8** @SN_NULL_TBL, align 8
  %448 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %449 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %448, align 8
  %450 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %449, i32 0, i32 0
  store i8* %447, i8** %450, align 8
  %451 = load i32, i32* @SN_PARSE_OK, align 4
  store i32 %451, i32* %6, align 4
  br label %558

452:                                              ; preds = %418
  br label %453

453:                                              ; preds = %452, %337
  br label %486

454:                                              ; preds = %190
  %455 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %456 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* @SN_SCTP_ASCONFACK, align 4
  %459 = icmp sgt i32 %457, %458
  br i1 %459, label %460, label %484

460:                                              ; preds = %454
  %461 = load i32, i32* %17, align 4
  %462 = sext i32 %461 to i64
  %463 = icmp ult i64 %462, 4
  br i1 %463, label %464, label %466

464:                                              ; preds = %460
  %465 = load i32, i32* @SN_PARSE_ERROR_CHHL, align 4
  store i32 %465, i32* %6, align 4
  br label %558

466:                                              ; preds = %460
  %467 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %468 = bitcast %struct.sctp_chunkhdr* %467 to i8*
  %469 = getelementptr inbounds i8, i8* %468, i64 4
  %470 = bitcast i8* %469 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %470, %struct.sctp_paramhdr** %14, align 8
  %471 = load i32, i32* @SN_SCTP_ASCONFACK, align 4
  %472 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %473 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %472, i32 0, i32 2
  store i32 %471, i32* %473, align 8
  %474 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %475 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %476 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %476, i32 0, i32 0
  store %struct.sctp_paramhdr* %474, %struct.sctp_paramhdr** %477, align 8
  %478 = load i32, i32* %17, align 4
  %479 = sext i32 %478 to i64
  %480 = sub i64 %479, 4
  %481 = trunc i64 %480 to i32
  %482 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %10, align 8
  %483 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %482, i32 0, i32 0
  store i32 %481, i32* %483, align 8
  br label %484

484:                                              ; preds = %466, %454
  br label %486

485:                                              ; preds = %190
  br label %486

486:                                              ; preds = %485, %484, %453, %313
  %487 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %488 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %487, align 8
  %489 = icmp eq %struct.sctp_nat_assoc* %488, null
  br i1 %489, label %490, label %496

490:                                              ; preds = %486
  %491 = load i32, i32* %18, align 4
  %492 = load i32, i32* @sysctl_initialising_chunk_proc_limit, align 4
  %493 = icmp sge i32 %491, %492
  br i1 %493, label %494, label %496

494:                                              ; preds = %490
  %495 = load i32, i32* @SN_PARSE_ERROR_LOOKUP, align 4
  store i32 %495, i32* %6, align 4
  br label %558

496:                                              ; preds = %490, %486
  %497 = load i32, i32* %17, align 4
  %498 = load i32, i32* %16, align 4
  %499 = sub nsw i32 %498, %497
  store i32 %499, i32* %16, align 4
  %500 = load i32, i32* %16, align 4
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %512

502:                                              ; preds = %496
  %503 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %504 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %503, align 8
  %505 = icmp eq %struct.sctp_nat_assoc* %504, null
  br i1 %505, label %506, label %508

506:                                              ; preds = %502
  %507 = load i32, i32* @SN_PARSE_ERROR_LOOKUP, align 4
  br label %510

508:                                              ; preds = %502
  %509 = load i32, i32* @SN_PARSE_OK, align 4
  br label %510

510:                                              ; preds = %508, %506
  %511 = phi i32 [ %507, %506 ], [ %509, %508 ]
  store i32 %511, i32* %6, align 4
  br label %558

512:                                              ; preds = %496
  %513 = load i32, i32* %16, align 4
  %514 = load i32, i32* @SN_MIN_CHUNK_SIZE, align 4
  %515 = icmp slt i32 %513, %514
  br i1 %515, label %516, label %518

516:                                              ; preds = %512
  %517 = load i32, i32* @SN_PARSE_ERROR_CHHL, align 4
  store i32 %517, i32* %6, align 4
  br label %558

518:                                              ; preds = %512
  %519 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %520 = call %struct.sctp_chunkhdr* @SN_SCTP_NEXTCHUNK(%struct.sctp_chunkhdr* %519)
  store %struct.sctp_chunkhdr* %520, %struct.sctp_chunkhdr** %13, align 8
  %521 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %13, align 8
  %522 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 4
  %524 = call i32 @ntohs(i32 %523)
  %525 = call i32 @SCTP_SIZE32(i32 %524)
  store i32 %525, i32* %17, align 4
  %526 = load i32, i32* %17, align 4
  %527 = load i32, i32* @SN_MIN_CHUNK_SIZE, align 4
  %528 = icmp slt i32 %526, %527
  br i1 %528, label %533, label %529

529:                                              ; preds = %518
  %530 = load i32, i32* %17, align 4
  %531 = load i32, i32* %16, align 4
  %532 = icmp sgt i32 %530, %531
  br i1 %532, label %533, label %535

533:                                              ; preds = %529, %518
  %534 = load i32, i32* @SN_PARSE_ERROR_CHHL, align 4
  store i32 %534, i32* %6, align 4
  br label %558

535:                                              ; preds = %529
  %536 = load i32, i32* %18, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %18, align 4
  %538 = load i32, i32* @sysctl_chunk_proc_limit, align 4
  %539 = icmp sgt i32 %537, %538
  br i1 %539, label %540, label %542

540:                                              ; preds = %535
  %541 = load i32, i32* @SN_PARSE_OK, align 4
  store i32 %541, i32* %6, align 4
  br label %558

542:                                              ; preds = %535
  br label %186

543:                                              ; preds = %186
  %544 = load %struct.sctp_nat_assoc**, %struct.sctp_nat_assoc*** %11, align 8
  %545 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %544, align 8
  %546 = icmp eq %struct.sctp_nat_assoc* %545, null
  br i1 %546, label %547, label %556

547:                                              ; preds = %543
  %548 = load i32, i32* %19, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %552

550:                                              ; preds = %547
  %551 = load i32, i32* @SN_PARSE_ERROR_PARTIALLOOKUP, align 4
  br label %554

552:                                              ; preds = %547
  %553 = load i32, i32* @SN_PARSE_ERROR_LOOKUP, align 4
  br label %554

554:                                              ; preds = %552, %550
  %555 = phi i32 [ %551, %550 ], [ %553, %552 ]
  store i32 %555, i32* %6, align 4
  br label %558

556:                                              ; preds = %543
  %557 = load i32, i32* @SN_PARSE_OK, align 4
  store i32 %557, i32* %6, align 4
  br label %558

558:                                              ; preds = %556, %554, %540, %533, %516, %510, %494, %464, %438, %436, %404, %347, %335, %298, %292, %276, %253, %247, %245, %231, %229, %198, %81, %64, %58, %35
  %559 = load i32, i32* %6, align 4
  ret i32 %559
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local %struct.sctp_chunkhdr* @SN_SCTP_FIRSTCHUNK(%struct.sctphdr*) #1

declare dso_local i32 @SCTP_SIZE32(i32) #1

declare dso_local %struct.sctp_nat_assoc* @FindSctpGlobalT(%struct.libalias*, i32, i32, i64, i64) #1

declare dso_local %struct.sctp_nat_assoc* @FindSctpLocalT(%struct.libalias*, i32, i32, i64, i64) #1

declare dso_local %struct.sctp_nat_assoc* @FindSctpGlobal(%struct.libalias*, i32, i32, i64, i64, i32*) #1

declare dso_local %struct.sctp_nat_assoc* @FindSctpLocal(%struct.libalias*, i32, i32, i32, i64, i64) #1

declare dso_local i64 @IS_SCTP_CONTROL(%struct.sctp_chunkhdr*) #1

declare dso_local i64 @sn_malloc(i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local %struct.sctp_chunkhdr* @SN_SCTP_NEXTCHUNK(%struct.sctp_chunkhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
