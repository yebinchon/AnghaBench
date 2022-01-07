; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/traceroute6/extr_traceroute6.c_send_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/traceroute6/extr_traceroute6.c_send_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8* }
%struct.icmp6_hdr = type { i32, i8*, i32, i32, i32 }
%struct.sctphdr = type { i32, i32, i32, i8* }
%struct.sctp_chunkhdr = type { i8*, i32, i32 }
%struct.sctp_init_chunk = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.sctp_paramhdr = type { i8*, i8* }
%struct.tcphdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@sndsock = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_UNICAST_HOPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"setsockopt IPV6_UNICAST_HOPS\00", align 1
@port = common dso_local global i32 0, align 4
@Dst = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@useproto = common dso_local global i32 0, align 4
@outpacket = common dso_local global i64 0, align 8
@ICMP6_ECHO_REQUEST = common dso_local global i32 0, align 4
@ident = common dso_local global i32 0, align 4
@datalen = common dso_local global i64 0, align 8
@SCTP_INITIATION = common dso_local global i32 0, align 4
@SCTP_PAD = common dso_local global i32 0, align 4
@SCTP_SHUTDOWN_ACK = common dso_local global i32 0, align 4
@SCTP_PAD_CHUNK = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@Src = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown probe protocol %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"sendto\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"traceroute6: wrote %s %lu chars, ret=%d\0A\00", align 1
@hostname = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_probe(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.icmp6_hdr*, align 8
  %6 = alloca %struct.sctphdr*, align 8
  %7 = alloca %struct.sctp_chunkhdr*, align 8
  %8 = alloca %struct.sctp_init_chunk*, align 8
  %9 = alloca %struct.sctp_paramhdr*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @sndsock, align 4
  %15 = load i32, i32* @IPPROTO_IPV6, align 4
  %16 = load i32, i32* @IPV6_UNICAST_HOPS, align 4
  %17 = bitcast i32* %11 to i8*
  %18 = call i64 @setsockopt(i32 %14, i32 %15, i32 %16, i8* %17, i32 4)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i32, i32* @port, align 4
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i8* @htons(i32 %25)
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Dst, i32 0, i32 1), align 8
  %27 = load i32, i32* @useproto, align 4
  switch i32 %27, label %226 [
    i32 132, label %28
    i32 128, label %45
    i32 131, label %46
    i32 130, label %47
    i32 129, label %187
  ]

28:                                               ; preds = %22
  %29 = load i64, i64* @outpacket, align 8
  %30 = inttoptr i64 %29 to %struct.icmp6_hdr*
  store %struct.icmp6_hdr* %30, %struct.icmp6_hdr** %5, align 8
  %31 = load i32, i32* @ICMP6_ECHO_REQUEST, align 4
  %32 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %5, align 8
  %35 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %34, i32 0, i32 3
  store i32 0, i32* %35, align 4
  %36 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %36, i32 0, i32 2
  store i32 0, i32* %37, align 8
  %38 = load i32, i32* @ident, align 4
  %39 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %5, align 8
  %40 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i8* @htons(i32 %41)
  %43 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %5, align 8
  %44 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  br label %231

45:                                               ; preds = %22
  br label %231

46:                                               ; preds = %22
  br label %231

47:                                               ; preds = %22
  %48 = load i64, i64* @outpacket, align 8
  %49 = inttoptr i64 %48 to %struct.sctphdr*
  store %struct.sctphdr* %49, %struct.sctphdr** %6, align 8
  %50 = load i32, i32* @ident, align 4
  %51 = call i8* @htons(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %54 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @port, align 4
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i8* @htons(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %61 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* @datalen, align 8
  %63 = icmp sge i64 %62, 80
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %66 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  br label %78

67:                                               ; preds = %47
  %68 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %69 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %70, 16
  %72 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %73 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  %76 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %77 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %67, %64
  %79 = call i8* @htonl(i32 0)
  %80 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %81 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i64, i64* @datalen, align 8
  %83 = icmp sge i64 %82, 80
  br i1 %83, label %84, label %147

84:                                               ; preds = %78
  %85 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %86 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %85, i64 1
  %87 = bitcast %struct.sctphdr* %86 to %struct.sctp_init_chunk*
  store %struct.sctp_init_chunk* %87, %struct.sctp_init_chunk** %8, align 8
  %88 = load i32, i32* @SCTP_INITIATION, align 4
  %89 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %8, align 8
  %90 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 4
  %92 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %8, align 8
  %93 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 0, i32* %94, align 8
  %95 = load i64, i64* @datalen, align 8
  %96 = sub i64 %95, 24
  %97 = trunc i64 %96 to i32
  %98 = call i8* @htons(i32 %97)
  %99 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %8, align 8
  %100 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 8
  %102 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %103 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = shl i32 %104, 16
  %106 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %107 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %105, %108
  %110 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %8, align 8
  %111 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = call i8* @htonl(i32 1500)
  %114 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %8, align 8
  %115 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  store i8* %113, i8** %116, align 8
  %117 = call i8* @htons(i32 1)
  %118 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %8, align 8
  %119 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  store i8* %117, i8** %120, align 8
  %121 = call i8* @htons(i32 1)
  %122 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %8, align 8
  %123 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  store i8* %121, i8** %124, align 8
  %125 = call i8* @htonl(i32 0)
  %126 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %8, align 8
  %127 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i8* %125, i8** %128, align 8
  %129 = load i64, i64* @datalen, align 8
  %130 = icmp sge i64 %129, 96
  br i1 %130, label %131, label %146

131:                                              ; preds = %84
  %132 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %8, align 8
  %133 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %132, i64 1
  %134 = bitcast %struct.sctp_init_chunk* %133 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %134, %struct.sctp_paramhdr** %9, align 8
  %135 = load i32, i32* @SCTP_PAD, align 4
  %136 = call i8* @htons(i32 %135)
  %137 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %9, align 8
  %138 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load i64, i64* @datalen, align 8
  %140 = sub i64 %139, 24
  %141 = sub i64 %140, 56
  %142 = trunc i64 %141 to i32
  %143 = call i8* @htons(i32 %142)
  %144 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %9, align 8
  %145 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %131, %84
  br label %181

147:                                              ; preds = %78
  %148 = load i64, i64* @datalen, align 8
  %149 = icmp sge i64 %148, 40
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  %151 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %152 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %151, i64 1
  %153 = bitcast %struct.sctphdr* %152 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %153, %struct.sctp_chunkhdr** %7, align 8
  %154 = load i32, i32* @SCTP_SHUTDOWN_ACK, align 4
  %155 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %7, align 8
  %156 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 4
  %157 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %7, align 8
  %158 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %157, i32 0, i32 1
  store i32 0, i32* %158, align 8
  %159 = call i8* @htons(i32 4)
  %160 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %7, align 8
  %161 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %150, %147
  %163 = load i64, i64* @datalen, align 8
  %164 = icmp sge i64 %163, 56
  br i1 %164, label %165, label %180

165:                                              ; preds = %162
  %166 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %7, align 8
  %167 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %166, i64 1
  store %struct.sctp_chunkhdr* %167, %struct.sctp_chunkhdr** %7, align 8
  %168 = load i32, i32* @SCTP_PAD_CHUNK, align 4
  %169 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %7, align 8
  %170 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  %171 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %7, align 8
  %172 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %171, i32 0, i32 1
  store i32 0, i32* %172, align 8
  %173 = load i64, i64* @datalen, align 8
  %174 = sub i64 %173, 24
  %175 = sub i64 %174, 16
  %176 = trunc i64 %175 to i32
  %177 = call i8* @htons(i32 %176)
  %178 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %7, align 8
  %179 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %165, %162
  br label %181

181:                                              ; preds = %180, %146
  %182 = load i64, i64* @outpacket, align 8
  %183 = load i64, i64* @datalen, align 8
  %184 = call i8* @sctp_crc32c(i64 %182, i64 %183)
  %185 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %186 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %185, i32 0, i32 3
  store i8* %184, i8** %186, align 8
  br label %231

187:                                              ; preds = %22
  %188 = load i64, i64* @outpacket, align 8
  %189 = inttoptr i64 %188 to %struct.tcphdr*
  store %struct.tcphdr* %189, %struct.tcphdr** %10, align 8
  %190 = load i32, i32* @ident, align 4
  %191 = call i8* @htons(i32 %190)
  %192 = ptrtoint i8* %191 to i32
  %193 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %194 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @port, align 4
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %195, %196
  %198 = call i8* @htons(i32 %197)
  %199 = ptrtoint i8* %198 to i32
  %200 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %201 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %203 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 16
  %206 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %207 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %205, %208
  %210 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %211 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 4
  %212 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %213 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %212, i32 0, i32 6
  store i32 0, i32* %213, align 4
  %214 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %215 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %214, i32 0, i32 3
  store i32 5, i32* %215, align 4
  %216 = load i32, i32* @TH_SYN, align 4
  %217 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %218 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %217, i32 0, i32 5
  store i32 %216, i32* %218, align 4
  %219 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %220 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %219, i32 0, i32 4
  store i32 0, i32* %220, align 4
  %221 = load i64, i64* @outpacket, align 8
  %222 = load i64, i64* @datalen, align 8
  %223 = call i32 @tcp_chksum(i32* @Src, %struct.TYPE_7__* @Dst, i64 %221, i64 %222)
  %224 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %225 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 4
  br label %231

226:                                              ; preds = %22
  %227 = load i32, i32* @stderr, align 4
  %228 = load i32, i32* @useproto, align 4
  %229 = call i32 @fprintf(i32 %227, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %228)
  %230 = call i32 @exit(i32 1) #3
  unreachable

231:                                              ; preds = %187, %181, %46, %45, %28
  %232 = load i32, i32* @sndsock, align 4
  %233 = load i64, i64* @outpacket, align 8
  %234 = inttoptr i64 %233 to i8*
  %235 = load i64, i64* @datalen, align 8
  %236 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Dst, i32 0, i32 0), align 8
  %237 = call i32 @sendto(i32 %232, i8* %234, i64 %235, i32 0, %struct.sockaddr* bitcast (%struct.TYPE_7__* @Dst to %struct.sockaddr*), i32 %236)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %231
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* @datalen, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %257

245:                                              ; preds = %240, %231
  %246 = load i32, i32* %11, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %250

250:                                              ; preds = %248, %245
  %251 = load i8*, i8** @hostname, align 8
  %252 = load i64, i64* @datalen, align 8
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %251, i64 %252, i32 %253)
  %255 = load i32, i32* @stdout, align 4
  %256 = call i32 @fflush(i32 %255)
  br label %257

257:                                              ; preds = %250, %240
  ret void
}

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @sctp_crc32c(i64, i64) #1

declare dso_local i32 @tcp_chksum(i32*, %struct.TYPE_7__*, i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
