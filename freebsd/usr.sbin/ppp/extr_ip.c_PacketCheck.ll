; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ip.c_PacketCheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ip.c_PacketCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.filter }
%struct.filter = type { i8*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tcphdr = type { i32, i32, i32, i32, i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.icmp = type { i32 }
%struct.icmp6_hdr = type { i32 }
%struct.ncpaddr = type { i32 }
%struct.ip6_hdr = type { i32, i32, i32, i32 }
%struct.ip = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@PacketCheck.TcpFlags = internal constant [6 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"FIN\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SYN\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"RST\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"PSH\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"URG\00", align 1
@LogTCPIP = common dso_local global i32 0, align 4
@LogDNS = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IP_OFFMASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"ICMP: %s:%d ---> \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%s (%d/%d)\00", align 1
@IPTOS_LOWDELAY = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"UDP: %s:%d ---> \00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"%s:%d (%d/%d)\00", align 1
@OPT_FILTERDECAP = common dso_local global i32 0, align 4
@HDLC_ADDR = common dso_local global i8 0, align 1
@HDLC_UI = common dso_local global i8 0, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c" contains \00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"compressed VJ\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"uncompressed VJ\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Multi-link\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Individual link CCP\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"CCP\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"IPCP\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"LCP\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"PAP\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"CBCP\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"LQR\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"CHAP\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c" - %s data\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"GRE: %s ---> \00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"OSPF: %s ---> \00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"IPv6: %s ---> \00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"IPIP: %s ---> \00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"ESP: %s ---> \00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"%s, spi %p\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"AH: %s ---> \00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"IGMP: %s:%d ---> \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"TCP: %s:%d ---> \00", align 1
@TH_FIN = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"  seq:%lx  ack:%lx (%d/%d)\00", align 1
@TH_SYN = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [10 x i8] c" MSS = %d\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c" pri:%d\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"<%d>: %s ---> \00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"%s (%d)\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"%s - BLOCKED\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"%s - NO KEEPALIVE\0A\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"%s - (timeout = %d / ALIVE = %d secs)\0A\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"%s - (timeout = %d secs)\0A\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PacketCheck(%struct.bundle* %0, i64 %1, i8* %2, i32 %3, %struct.filter* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bundle*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.filter*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [200 x i8], align 16
  %17 = alloca %struct.tcphdr*, align 8
  %18 = alloca %struct.udphdr*, align 8
  %19 = alloca %struct.icmp*, align 8
  %20 = alloca %struct.icmp6_hdr*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.ncpaddr, align 4
  %23 = alloca %struct.ncpaddr, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca %struct.ip6_hdr*, align 8
  %36 = alloca %struct.ip*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.filter* %4, %struct.filter** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %41 = load i32, i32* @LogTCPIP, align 4
  %42 = call i64 @log_IsKept(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %7
  %45 = load i32, i32* @LogDNS, align 4
  %46 = call i64 @log_IsKept(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44, %7
  %49 = load %struct.filter*, %struct.filter** %13, align 8
  %50 = icmp ne %struct.filter* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.filter*, %struct.filter** %13, align 8
  %53 = getelementptr inbounds %struct.filter, %struct.filter* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i1 [ true, %48 ], [ %55, %51 ]
  br label %58

58:                                               ; preds = %56, %44
  %59 = phi i1 [ false, %44 ], [ %57, %56 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %29, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %28, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @AF_INET6, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load i8*, i8** %11, align 8
  %66 = bitcast i8* %65 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %66, %struct.ip6_hdr** %35, align 8
  %67 = load %struct.ip6_hdr*, %struct.ip6_hdr** %35, align 8
  %68 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %67, i32 0, i32 3
  %69 = call i32 @ncpaddr_setip6(%struct.ncpaddr* %22, i32* %68)
  %70 = load %struct.ip6_hdr*, %struct.ip6_hdr** %35, align 8
  %71 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %70, i32 0, i32 2
  %72 = call i32 @ncpaddr_setip6(%struct.ncpaddr* %23, i32* %71)
  %73 = load %struct.ip6_hdr*, %struct.ip6_hdr** %35, align 8
  %74 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ntohs(i32 %75)
  store i32 %76, i32* %31, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 16
  store i8* %78, i8** %21, align 8
  %79 = load %struct.ip6_hdr*, %struct.ip6_hdr** %35, align 8
  %80 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %24, align 4
  store i64 0, i64* %34, align 8
  store i32 0, i32* %32, align 4
  br label %121

82:                                               ; preds = %58
  %83 = load i8*, i8** %11, align 8
  %84 = bitcast i8* %83 to %struct.ip*
  store %struct.ip* %84, %struct.ip** %36, align 8
  %85 = load %struct.ip*, %struct.ip** %36, align 8
  %86 = getelementptr inbounds %struct.ip, %struct.ip* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ncpaddr_setip4(%struct.ncpaddr* %22, i32 %87)
  %89 = load %struct.ip*, %struct.ip** %36, align 8
  %90 = getelementptr inbounds %struct.ip, %struct.ip* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ncpaddr_setip4(%struct.ncpaddr* %23, i32 %91)
  %93 = load %struct.ip*, %struct.ip** %36, align 8
  %94 = getelementptr inbounds %struct.ip, %struct.ip* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ntohs(i32 %95)
  %97 = load %struct.ip*, %struct.ip** %36, align 8
  %98 = getelementptr inbounds %struct.ip, %struct.ip* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 2
  %101 = sub nsw i32 %96, %100
  store i32 %101, i32* %31, align 4
  %102 = load i8*, i8** %11, align 8
  %103 = load %struct.ip*, %struct.ip** %36, align 8
  %104 = getelementptr inbounds %struct.ip, %struct.ip* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %102, i64 %107
  store i8* %108, i8** %21, align 8
  %109 = load %struct.ip*, %struct.ip** %36, align 8
  %110 = getelementptr inbounds %struct.ip, %struct.ip* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %24, align 4
  %112 = load %struct.ip*, %struct.ip** %36, align 8
  %113 = getelementptr inbounds %struct.ip, %struct.ip* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %34, align 8
  %115 = load %struct.ip*, %struct.ip** %36, align 8
  %116 = getelementptr inbounds %struct.ip, %struct.ip* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ntohs(i32 %117)
  %119 = load i32, i32* @IP_OFFMASK, align 4
  %120 = and i32 %118, %119
  store i32 %120, i32* %32, align 4
  br label %121

121:                                              ; preds = %82, %64
  store %struct.udphdr* null, %struct.udphdr** %18, align 8
  %122 = load i32, i32* %29, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %179

124:                                              ; preds = %121
  %125 = load i32, i32* %33, align 4
  %126 = zext i32 %125 to i64
  %127 = icmp ult i64 %126, 200
  br i1 %127, label %128, label %179

128:                                              ; preds = %124
  %129 = load i8*, i8** %14, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %133 = load i32, i32* %33, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i32, i32* %33, align 4
  %137 = zext i32 %136 to i64
  %138 = sub i64 200, %137
  %139 = trunc i64 %138 to i32
  %140 = load i8*, i8** %14, align 8
  %141 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %135, i32 %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %140)
  br label %169

142:                                              ; preds = %128
  %143 = load %struct.filter*, %struct.filter** %13, align 8
  %144 = icmp ne %struct.filter* %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %147 = load i32, i32* %33, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i32, i32* %33, align 4
  %151 = zext i32 %150 to i64
  %152 = sub i64 200, %151
  %153 = trunc i64 %152 to i32
  %154 = load %struct.filter*, %struct.filter** %13, align 8
  %155 = getelementptr inbounds %struct.filter, %struct.filter* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %149, i32 %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %156)
  br label %168

158:                                              ; preds = %142
  %159 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %160 = load i32, i32* %33, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* %33, align 4
  %164 = zext i32 %163 to i64
  %165 = sub i64 200, %164
  %166 = trunc i64 %165 to i32
  %167 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %162, i32 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %168

168:                                              ; preds = %158, %145
  br label %169

169:                                              ; preds = %168, %131
  %170 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %171 = load i32, i32* %33, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = call i64 @strlen(i8* %173)
  %175 = load i32, i32* %33, align 4
  %176 = zext i32 %175 to i64
  %177 = add nsw i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %33, align 4
  br label %179

179:                                              ; preds = %169, %124, %121
  %180 = load i32, i32* %24, align 4
  switch i32 %180, label %1168 [
    i32 147, label %181
    i32 146, label %239
    i32 140, label %297
    i32 148, label %492
    i32 142, label %541
    i32 143, label %590
    i32 144, label %675
    i32 149, label %773
    i32 150, label %821
    i32 145, label %870
    i32 141, label %927
  ]

181:                                              ; preds = %179
  %182 = load i32, i32* %29, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %238

184:                                              ; preds = %181
  %185 = load i32, i32* %33, align 4
  %186 = zext i32 %185 to i64
  %187 = icmp ult i64 %186, 200
  br i1 %187, label %188, label %238

188:                                              ; preds = %184
  %189 = load i32, i32* %31, align 4
  %190 = sext i32 %189 to i64
  %191 = sub i64 %190, 4
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %26, align 4
  %193 = load i8*, i8** %21, align 8
  %194 = bitcast i8* %193 to %struct.icmp*
  store %struct.icmp* %194, %struct.icmp** %19, align 8
  %195 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %196 = load i32, i32* %33, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i32, i32* %33, align 4
  %200 = zext i32 %199 to i64
  %201 = sub i64 200, %200
  %202 = trunc i64 %201 to i32
  %203 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %204 = load %struct.icmp*, %struct.icmp** %19, align 8
  %205 = getelementptr inbounds %struct.icmp, %struct.icmp* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %198, i32 %202, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %203, i32 %206)
  %208 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %209 = load i32, i32* %33, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = call i64 @strlen(i8* %211)
  %213 = load i32, i32* %33, align 4
  %214 = zext i32 %213 to i64
  %215 = add nsw i64 %214, %212
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %33, align 4
  %217 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %218 = load i32, i32* %33, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i32, i32* %33, align 4
  %222 = zext i32 %221 to i64
  %223 = sub i64 200, %222
  %224 = trunc i64 %223 to i32
  %225 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* %12, align 4
  %228 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %220, i32 %224, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %225, i32 %226, i32 %227)
  %229 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %230 = load i32, i32* %33, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = call i64 @strlen(i8* %232)
  %234 = load i32, i32* %33, align 4
  %235 = zext i32 %234 to i64
  %236 = add nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %33, align 4
  br label %238

238:                                              ; preds = %188, %184, %181
  br label %1221

239:                                              ; preds = %179
  %240 = load i32, i32* %29, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %296

242:                                              ; preds = %239
  %243 = load i32, i32* %33, align 4
  %244 = zext i32 %243 to i64
  %245 = icmp ult i64 %244, 200
  br i1 %245, label %246, label %296

246:                                              ; preds = %242
  %247 = load i32, i32* %31, align 4
  %248 = sext i32 %247 to i64
  %249 = sub i64 %248, 4
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %26, align 4
  %251 = load i8*, i8** %21, align 8
  %252 = bitcast i8* %251 to %struct.icmp6_hdr*
  store %struct.icmp6_hdr* %252, %struct.icmp6_hdr** %20, align 8
  %253 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %254 = load i32, i32* %33, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = load i32, i32* %33, align 4
  %258 = zext i32 %257 to i64
  %259 = sub i64 200, %258
  %260 = trunc i64 %259 to i32
  %261 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %262 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %20, align 8
  %263 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %256, i32 %260, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %261, i32 %264)
  %266 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %267 = load i32, i32* %33, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = call i64 @strlen(i8* %269)
  %271 = load i32, i32* %33, align 4
  %272 = zext i32 %271 to i64
  %273 = add nsw i64 %272, %270
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %33, align 4
  %275 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %276 = load i32, i32* %33, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = load i32, i32* %33, align 4
  %280 = zext i32 %279 to i64
  %281 = sub i64 200, %280
  %282 = trunc i64 %281 to i32
  %283 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %284 = load i32, i32* %26, align 4
  %285 = load i32, i32* %12, align 4
  %286 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %278, i32 %282, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %283, i32 %284, i32 %285)
  %287 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %288 = load i32, i32* %33, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  %291 = call i64 @strlen(i8* %290)
  %292 = load i32, i32* %33, align 4
  %293 = zext i32 %292 to i64
  %294 = add nsw i64 %293, %291
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %33, align 4
  br label %296

296:                                              ; preds = %246, %242, %239
  br label %1221

297:                                              ; preds = %179
  %298 = load i8*, i8** %21, align 8
  %299 = bitcast i8* %298 to %struct.udphdr*
  store %struct.udphdr* %299, %struct.udphdr** %18, align 8
  %300 = load i64, i64* %34, align 8
  %301 = load i64, i64* @IPTOS_LOWDELAY, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %314

303:                                              ; preds = %297
  %304 = load %struct.bundle*, %struct.bundle** %9, align 8
  %305 = getelementptr inbounds %struct.bundle, %struct.bundle* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %303
  %312 = load i32, i32* %28, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %28, align 4
  br label %314

314:                                              ; preds = %311, %303, %297
  %315 = load i32, i32* %32, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %333, label %317

317:                                              ; preds = %314
  %318 = load %struct.bundle*, %struct.bundle** %9, align 8
  %319 = getelementptr inbounds %struct.bundle, %struct.bundle* %318, i32 0, i32 1
  %320 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %321 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @ntohs(i32 %322)
  %324 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %325 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @ntohs(i32 %326)
  %328 = call i32 @ncp_IsUrgentUdpPort(%struct.TYPE_10__* %319, i32 %323, i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %317
  %331 = load i32, i32* %28, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %28, align 4
  br label %333

333:                                              ; preds = %330, %317, %314
  %334 = load i32, i32* %29, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %393

336:                                              ; preds = %333
  %337 = load i32, i32* %33, align 4
  %338 = zext i32 %337 to i64
  %339 = icmp ult i64 %338, 200
  br i1 %339, label %340, label %393

340:                                              ; preds = %336
  %341 = load i32, i32* %31, align 4
  %342 = sext i32 %341 to i64
  %343 = sub i64 %342, 8
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %26, align 4
  %345 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %346 = load i32, i32* %33, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds i8, i8* %345, i64 %347
  %349 = load i32, i32* %33, align 4
  %350 = zext i32 %349 to i64
  %351 = sub i64 200, %350
  %352 = trunc i64 %351 to i32
  %353 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %354 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %355 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @ntohs(i32 %356)
  %358 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %348, i32 %352, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %353, i32 %357)
  %359 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %360 = load i32, i32* %33, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds i8, i8* %359, i64 %361
  %363 = call i64 @strlen(i8* %362)
  %364 = load i32, i32* %33, align 4
  %365 = zext i32 %364 to i64
  %366 = add nsw i64 %365, %363
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %33, align 4
  %368 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %369 = load i32, i32* %33, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %368, i64 %370
  %372 = load i32, i32* %33, align 4
  %373 = zext i32 %372 to i64
  %374 = sub i64 200, %373
  %375 = trunc i64 %374 to i32
  %376 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %377 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %378 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @ntohs(i32 %379)
  %381 = load i32, i32* %26, align 4
  %382 = load i32, i32* %12, align 4
  %383 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %371, i32 %375, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %376, i32 %380, i32 %381, i32 %382)
  %384 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %385 = load i32, i32* %33, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds i8, i8* %384, i64 %386
  %388 = call i64 @strlen(i8* %387)
  %389 = load i32, i32* %33, align 4
  %390 = zext i32 %389 to i64
  %391 = add nsw i64 %390, %388
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %33, align 4
  br label %393

393:                                              ; preds = %340, %336, %333
  %394 = load %struct.bundle*, %struct.bundle** %9, align 8
  %395 = load i32, i32* @OPT_FILTERDECAP, align 4
  %396 = call i32 @Enabled(%struct.bundle* %394, i32 %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %491

398:                                              ; preds = %393
  %399 = load i8*, i8** %21, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 8
  %401 = load i8, i8* %400, align 1
  %402 = zext i8 %401 to i32
  %403 = load i8, i8* @HDLC_ADDR, align 1
  %404 = zext i8 %403 to i32
  %405 = icmp eq i32 %402, %404
  br i1 %405, label %406, label %491

406:                                              ; preds = %398
  %407 = load i8*, i8** %21, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 9
  %409 = load i8, i8* %408, align 1
  %410 = zext i8 %409 to i32
  %411 = load i8, i8* @HDLC_UI, align 1
  %412 = zext i8 %411 to i32
  %413 = icmp eq i32 %410, %412
  br i1 %413, label %414, label %491

414:                                              ; preds = %406
  %415 = load i8*, i8** %21, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 8
  %417 = getelementptr inbounds i8, i8* %416, i64 2
  %418 = call i32 @memcpy(i32* %37, i8* %417, i32 4)
  store i8* null, i8** %38, align 8
  %419 = load i32, i32* %37, align 4
  %420 = call i32 @ntohs(i32 %419)
  switch i32 %420, label %467 [
    i32 135, label %421
    i32 128, label %456
    i32 129, label %457
    i32 131, label %458
    i32 136, label %459
    i32 137, label %460
    i32 134, label %461
    i32 133, label %462
    i32 130, label %463
    i32 139, label %464
    i32 132, label %465
    i32 138, label %466
  ]

421:                                              ; preds = %414
  %422 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %423 = load i32, i32* %33, align 4
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %422, i64 %424
  %426 = load i32, i32* %33, align 4
  %427 = zext i32 %426 to i64
  %428 = sub i64 200, %427
  %429 = trunc i64 %428 to i32
  %430 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %425, i32 %429, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %431 = load %struct.bundle*, %struct.bundle** %9, align 8
  %432 = load i64, i64* @AF_INET, align 8
  %433 = load i8*, i8** %21, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 8
  %435 = getelementptr inbounds i8, i8* %434, i64 4
  %436 = load i32, i32* %12, align 4
  %437 = sext i32 %436 to i64
  %438 = load i8*, i8** %21, align 8
  %439 = load i8*, i8** %11, align 8
  %440 = ptrtoint i8* %438 to i64
  %441 = ptrtoint i8* %439 to i64
  %442 = sub i64 %440, %441
  %443 = sub nsw i64 %437, %442
  %444 = sub i64 %443, 8
  %445 = sub i64 %444, 4
  %446 = trunc i64 %445 to i32
  %447 = load %struct.filter*, %struct.filter** %13, align 8
  %448 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %449 = load i32*, i32** %15, align 8
  %450 = call i32 @PacketCheck(%struct.bundle* %431, i64 %432, i8* %435, i32 %446, %struct.filter* %447, i8* %448, i32* %449)
  store i32 %450, i32* %30, align 4
  %451 = load i32, i32* %30, align 4
  %452 = icmp ne i32 %451, -2
  br i1 %452, label %453, label %455

453:                                              ; preds = %421
  %454 = load i32, i32* %30, align 4
  store i32 %454, i32* %8, align 4
  br label %1327

455:                                              ; preds = %421
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %38, align 8
  br label %467

456:                                              ; preds = %414
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %38, align 8
  br label %467

457:                                              ; preds = %414
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8** %38, align 8
  br label %467

458:                                              ; preds = %414
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8** %38, align 8
  br label %467

459:                                              ; preds = %414
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8** %38, align 8
  br label %467

460:                                              ; preds = %414
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** %38, align 8
  br label %467

461:                                              ; preds = %414
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8** %38, align 8
  br label %467

462:                                              ; preds = %414
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8** %38, align 8
  br label %467

463:                                              ; preds = %414
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8** %38, align 8
  br label %467

464:                                              ; preds = %414
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %38, align 8
  br label %467

465:                                              ; preds = %414
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8** %38, align 8
  br label %467

466:                                              ; preds = %414
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8** %38, align 8
  br label %467

467:                                              ; preds = %414, %466, %465, %464, %463, %462, %461, %460, %459, %458, %457, %456, %455
  %468 = load i8*, i8** %38, align 8
  %469 = icmp ne i8* %468, null
  br i1 %469, label %470, label %490

470:                                              ; preds = %467
  %471 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %472 = load i32, i32* %33, align 4
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds i8, i8* %471, i64 %473
  %475 = load i32, i32* %33, align 4
  %476 = zext i32 %475 to i64
  %477 = sub i64 200, %476
  %478 = trunc i64 %477 to i32
  %479 = load i8*, i8** %38, align 8
  %480 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %474, i32 %478, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8* %479)
  %481 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %482 = load i32, i32* %33, align 4
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds i8, i8* %481, i64 %483
  %485 = call i64 @strlen(i8* %484)
  %486 = load i32, i32* %33, align 4
  %487 = zext i32 %486 to i64
  %488 = add nsw i64 %487, %485
  %489 = trunc i64 %488 to i32
  store i32 %489, i32* %33, align 4
  br label %490

490:                                              ; preds = %470, %467
  br label %491

491:                                              ; preds = %490, %406, %398, %393
  br label %1221

492:                                              ; preds = %179
  %493 = load i32, i32* %29, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %540

495:                                              ; preds = %492
  %496 = load i32, i32* %33, align 4
  %497 = zext i32 %496 to i64
  %498 = icmp ult i64 %497, 200
  br i1 %498, label %499, label %540

499:                                              ; preds = %495
  %500 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %501 = load i32, i32* %33, align 4
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds i8, i8* %500, i64 %502
  %504 = load i32, i32* %33, align 4
  %505 = zext i32 %504 to i64
  %506 = sub i64 200, %505
  %507 = trunc i64 %506 to i32
  %508 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %509 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %503, i32 %507, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %508)
  %510 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %511 = load i32, i32* %33, align 4
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds i8, i8* %510, i64 %512
  %514 = call i64 @strlen(i8* %513)
  %515 = load i32, i32* %33, align 4
  %516 = zext i32 %515 to i64
  %517 = add nsw i64 %516, %514
  %518 = trunc i64 %517 to i32
  store i32 %518, i32* %33, align 4
  %519 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %520 = load i32, i32* %33, align 4
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds i8, i8* %519, i64 %521
  %523 = load i32, i32* %33, align 4
  %524 = zext i32 %523 to i64
  %525 = sub i64 200, %524
  %526 = trunc i64 %525 to i32
  %527 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %528 = load i32, i32* %31, align 4
  %529 = load i32, i32* %12, align 4
  %530 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %522, i32 %526, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %527, i32 %528, i32 %529)
  %531 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %532 = load i32, i32* %33, align 4
  %533 = zext i32 %532 to i64
  %534 = getelementptr inbounds i8, i8* %531, i64 %533
  %535 = call i64 @strlen(i8* %534)
  %536 = load i32, i32* %33, align 4
  %537 = zext i32 %536 to i64
  %538 = add nsw i64 %537, %535
  %539 = trunc i64 %538 to i32
  store i32 %539, i32* %33, align 4
  br label %540

540:                                              ; preds = %499, %495, %492
  br label %1221

541:                                              ; preds = %179
  %542 = load i32, i32* %29, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %589

544:                                              ; preds = %541
  %545 = load i32, i32* %33, align 4
  %546 = zext i32 %545 to i64
  %547 = icmp ult i64 %546, 200
  br i1 %547, label %548, label %589

548:                                              ; preds = %544
  %549 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %550 = load i32, i32* %33, align 4
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds i8, i8* %549, i64 %551
  %553 = load i32, i32* %33, align 4
  %554 = zext i32 %553 to i64
  %555 = sub i64 200, %554
  %556 = trunc i64 %555 to i32
  %557 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %558 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %552, i32 %556, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8* %557)
  %559 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %560 = load i32, i32* %33, align 4
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds i8, i8* %559, i64 %561
  %563 = call i64 @strlen(i8* %562)
  %564 = load i32, i32* %33, align 4
  %565 = zext i32 %564 to i64
  %566 = add nsw i64 %565, %563
  %567 = trunc i64 %566 to i32
  store i32 %567, i32* %33, align 4
  %568 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %569 = load i32, i32* %33, align 4
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds i8, i8* %568, i64 %570
  %572 = load i32, i32* %33, align 4
  %573 = zext i32 %572 to i64
  %574 = sub i64 200, %573
  %575 = trunc i64 %574 to i32
  %576 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %577 = load i32, i32* %31, align 4
  %578 = load i32, i32* %12, align 4
  %579 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %571, i32 %575, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %576, i32 %577, i32 %578)
  %580 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %581 = load i32, i32* %33, align 4
  %582 = zext i32 %581 to i64
  %583 = getelementptr inbounds i8, i8* %580, i64 %582
  %584 = call i64 @strlen(i8* %583)
  %585 = load i32, i32* %33, align 4
  %586 = zext i32 %585 to i64
  %587 = add nsw i64 %586, %584
  %588 = trunc i64 %587 to i32
  store i32 %588, i32* %33, align 4
  br label %589

589:                                              ; preds = %548, %544, %541
  br label %1221

590:                                              ; preds = %179
  %591 = load i32, i32* %29, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %638

593:                                              ; preds = %590
  %594 = load i32, i32* %33, align 4
  %595 = zext i32 %594 to i64
  %596 = icmp ult i64 %595, 200
  br i1 %596, label %597, label %638

597:                                              ; preds = %593
  %598 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %599 = load i32, i32* %33, align 4
  %600 = zext i32 %599 to i64
  %601 = getelementptr inbounds i8, i8* %598, i64 %600
  %602 = load i32, i32* %33, align 4
  %603 = zext i32 %602 to i64
  %604 = sub i64 200, %603
  %605 = trunc i64 %604 to i32
  %606 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %607 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %601, i32 %605, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* %606)
  %608 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %609 = load i32, i32* %33, align 4
  %610 = zext i32 %609 to i64
  %611 = getelementptr inbounds i8, i8* %608, i64 %610
  %612 = call i64 @strlen(i8* %611)
  %613 = load i32, i32* %33, align 4
  %614 = zext i32 %613 to i64
  %615 = add nsw i64 %614, %612
  %616 = trunc i64 %615 to i32
  store i32 %616, i32* %33, align 4
  %617 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %618 = load i32, i32* %33, align 4
  %619 = zext i32 %618 to i64
  %620 = getelementptr inbounds i8, i8* %617, i64 %619
  %621 = load i32, i32* %33, align 4
  %622 = zext i32 %621 to i64
  %623 = sub i64 200, %622
  %624 = trunc i64 %623 to i32
  %625 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %626 = load i32, i32* %31, align 4
  %627 = load i32, i32* %12, align 4
  %628 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %620, i32 %624, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %625, i32 %626, i32 %627)
  %629 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %630 = load i32, i32* %33, align 4
  %631 = zext i32 %630 to i64
  %632 = getelementptr inbounds i8, i8* %629, i64 %631
  %633 = call i64 @strlen(i8* %632)
  %634 = load i32, i32* %33, align 4
  %635 = zext i32 %634 to i64
  %636 = add nsw i64 %635, %633
  %637 = trunc i64 %636 to i32
  store i32 %637, i32* %33, align 4
  br label %638

638:                                              ; preds = %597, %593, %590
  %639 = load %struct.bundle*, %struct.bundle** %9, align 8
  %640 = load i32, i32* @OPT_FILTERDECAP, align 4
  %641 = call i32 @Enabled(%struct.bundle* %639, i32 %640)
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %674

643:                                              ; preds = %638
  %644 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %645 = load i32, i32* %33, align 4
  %646 = zext i32 %645 to i64
  %647 = getelementptr inbounds i8, i8* %644, i64 %646
  %648 = load i32, i32* %33, align 4
  %649 = zext i32 %648 to i64
  %650 = sub i64 200, %649
  %651 = trunc i64 %650 to i32
  %652 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %647, i32 %651, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %653 = load %struct.bundle*, %struct.bundle** %9, align 8
  %654 = load i64, i64* @AF_INET6, align 8
  %655 = load i8*, i8** %21, align 8
  %656 = load i32, i32* %12, align 4
  %657 = sext i32 %656 to i64
  %658 = load i8*, i8** %21, align 8
  %659 = load i8*, i8** %11, align 8
  %660 = ptrtoint i8* %658 to i64
  %661 = ptrtoint i8* %659 to i64
  %662 = sub i64 %660, %661
  %663 = sub nsw i64 %657, %662
  %664 = trunc i64 %663 to i32
  %665 = load %struct.filter*, %struct.filter** %13, align 8
  %666 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %667 = load i32*, i32** %15, align 8
  %668 = call i32 @PacketCheck(%struct.bundle* %653, i64 %654, i8* %655, i32 %664, %struct.filter* %665, i8* %666, i32* %667)
  store i32 %668, i32* %30, align 4
  %669 = load i32, i32* %30, align 4
  %670 = icmp ne i32 %669, -2
  br i1 %670, label %671, label %673

671:                                              ; preds = %643
  %672 = load i32, i32* %30, align 4
  store i32 %672, i32* %8, align 4
  br label %1327

673:                                              ; preds = %643
  br label %674

674:                                              ; preds = %673, %638
  br label %1221

675:                                              ; preds = %179
  %676 = load i32, i32* %29, align 4
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %721

678:                                              ; preds = %675
  %679 = load i32, i32* %33, align 4
  %680 = zext i32 %679 to i64
  %681 = icmp ult i64 %680, 200
  br i1 %681, label %682, label %721

682:                                              ; preds = %678
  %683 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %684 = load i32, i32* %33, align 4
  %685 = zext i32 %684 to i64
  %686 = getelementptr inbounds i8, i8* %683, i64 %685
  %687 = load i32, i32* %33, align 4
  %688 = zext i32 %687 to i64
  %689 = sub i64 200, %688
  %690 = trunc i64 %689 to i32
  %691 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %692 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %686, i32 %690, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* %691)
  %693 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %694 = load i32, i32* %33, align 4
  %695 = zext i32 %694 to i64
  %696 = getelementptr inbounds i8, i8* %693, i64 %695
  %697 = call i64 @strlen(i8* %696)
  %698 = load i32, i32* %33, align 4
  %699 = zext i32 %698 to i64
  %700 = add nsw i64 %699, %697
  %701 = trunc i64 %700 to i32
  store i32 %701, i32* %33, align 4
  %702 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %703 = load i32, i32* %33, align 4
  %704 = zext i32 %703 to i64
  %705 = getelementptr inbounds i8, i8* %702, i64 %704
  %706 = load i32, i32* %33, align 4
  %707 = zext i32 %706 to i64
  %708 = sub i64 200, %707
  %709 = trunc i64 %708 to i32
  %710 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %711 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %705, i32 %709, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %710)
  %712 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %713 = load i32, i32* %33, align 4
  %714 = zext i32 %713 to i64
  %715 = getelementptr inbounds i8, i8* %712, i64 %714
  %716 = call i64 @strlen(i8* %715)
  %717 = load i32, i32* %33, align 4
  %718 = zext i32 %717 to i64
  %719 = add nsw i64 %718, %716
  %720 = trunc i64 %719 to i32
  store i32 %720, i32* %33, align 4
  br label %721

721:                                              ; preds = %682, %678, %675
  %722 = load %struct.bundle*, %struct.bundle** %9, align 8
  %723 = load i32, i32* @OPT_FILTERDECAP, align 4
  %724 = call i32 @Enabled(%struct.bundle* %722, i32 %723)
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %772

726:                                              ; preds = %721
  %727 = load i8*, i8** %21, align 8
  %728 = bitcast i8* %727 to %struct.ip*
  %729 = getelementptr inbounds %struct.ip, %struct.ip* %728, i32 0, i32 2
  %730 = load i32, i32* %729, align 8
  %731 = icmp eq i32 %730, 4
  br i1 %731, label %732, label %772

732:                                              ; preds = %726
  %733 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %734 = load i32, i32* %33, align 4
  %735 = zext i32 %734 to i64
  %736 = getelementptr inbounds i8, i8* %733, i64 %735
  %737 = load i32, i32* %33, align 4
  %738 = zext i32 %737 to i64
  %739 = sub i64 200, %738
  %740 = trunc i64 %739 to i32
  %741 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %736, i32 %740, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %742 = load %struct.bundle*, %struct.bundle** %9, align 8
  %743 = load i64, i64* @AF_INET, align 8
  %744 = load i8*, i8** %21, align 8
  %745 = load i32, i32* %12, align 4
  %746 = sext i32 %745 to i64
  %747 = load i8*, i8** %21, align 8
  %748 = load i8*, i8** %11, align 8
  %749 = ptrtoint i8* %747 to i64
  %750 = ptrtoint i8* %748 to i64
  %751 = sub i64 %749, %750
  %752 = sub nsw i64 %746, %751
  %753 = trunc i64 %752 to i32
  %754 = load %struct.filter*, %struct.filter** %13, align 8
  %755 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %756 = load i32*, i32** %15, align 8
  %757 = call i32 @PacketCheck(%struct.bundle* %742, i64 %743, i8* %744, i32 %753, %struct.filter* %754, i8* %755, i32* %756)
  store i32 %757, i32* %30, align 4
  %758 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %759 = load i32, i32* %33, align 4
  %760 = zext i32 %759 to i64
  %761 = getelementptr inbounds i8, i8* %758, i64 %760
  %762 = call i64 @strlen(i8* %761)
  %763 = load i32, i32* %33, align 4
  %764 = zext i32 %763 to i64
  %765 = add nsw i64 %764, %762
  %766 = trunc i64 %765 to i32
  store i32 %766, i32* %33, align 4
  %767 = load i32, i32* %30, align 4
  %768 = icmp ne i32 %767, -2
  br i1 %768, label %769, label %771

769:                                              ; preds = %732
  %770 = load i32, i32* %30, align 4
  store i32 %770, i32* %8, align 4
  br label %1327

771:                                              ; preds = %732
  br label %772

772:                                              ; preds = %771, %726, %721
  br label %1221

773:                                              ; preds = %179
  %774 = load i32, i32* %29, align 4
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %820

776:                                              ; preds = %773
  %777 = load i32, i32* %33, align 4
  %778 = zext i32 %777 to i64
  %779 = icmp ult i64 %778, 200
  br i1 %779, label %780, label %820

780:                                              ; preds = %776
  %781 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %782 = load i32, i32* %33, align 4
  %783 = zext i32 %782 to i64
  %784 = getelementptr inbounds i8, i8* %781, i64 %783
  %785 = load i32, i32* %33, align 4
  %786 = zext i32 %785 to i64
  %787 = sub i64 200, %786
  %788 = trunc i64 %787 to i32
  %789 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %790 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %784, i32 %788, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* %789)
  %791 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %792 = load i32, i32* %33, align 4
  %793 = zext i32 %792 to i64
  %794 = getelementptr inbounds i8, i8* %791, i64 %793
  %795 = call i64 @strlen(i8* %794)
  %796 = load i32, i32* %33, align 4
  %797 = zext i32 %796 to i64
  %798 = add nsw i64 %797, %795
  %799 = trunc i64 %798 to i32
  store i32 %799, i32* %33, align 4
  %800 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %801 = load i32, i32* %33, align 4
  %802 = zext i32 %801 to i64
  %803 = getelementptr inbounds i8, i8* %800, i64 %802
  %804 = load i32, i32* %33, align 4
  %805 = zext i32 %804 to i64
  %806 = sub i64 200, %805
  %807 = trunc i64 %806 to i32
  %808 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %809 = load i8*, i8** %21, align 8
  %810 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %803, i32 %807, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8* %808, i8* %809)
  %811 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %812 = load i32, i32* %33, align 4
  %813 = zext i32 %812 to i64
  %814 = getelementptr inbounds i8, i8* %811, i64 %813
  %815 = call i64 @strlen(i8* %814)
  %816 = load i32, i32* %33, align 4
  %817 = zext i32 %816 to i64
  %818 = add nsw i64 %817, %815
  %819 = trunc i64 %818 to i32
  store i32 %819, i32* %33, align 4
  br label %820

820:                                              ; preds = %780, %776, %773
  br label %1221

821:                                              ; preds = %179
  %822 = load i32, i32* %29, align 4
  %823 = icmp ne i32 %822, 0
  br i1 %823, label %824, label %869

824:                                              ; preds = %821
  %825 = load i32, i32* %33, align 4
  %826 = zext i32 %825 to i64
  %827 = icmp ult i64 %826, 200
  br i1 %827, label %828, label %869

828:                                              ; preds = %824
  %829 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %830 = load i32, i32* %33, align 4
  %831 = zext i32 %830 to i64
  %832 = getelementptr inbounds i8, i8* %829, i64 %831
  %833 = load i32, i32* %33, align 4
  %834 = zext i32 %833 to i64
  %835 = sub i64 200, %834
  %836 = trunc i64 %835 to i32
  %837 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %838 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %832, i32 %836, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* %837)
  %839 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %840 = load i32, i32* %33, align 4
  %841 = zext i32 %840 to i64
  %842 = getelementptr inbounds i8, i8* %839, i64 %841
  %843 = call i64 @strlen(i8* %842)
  %844 = load i32, i32* %33, align 4
  %845 = zext i32 %844 to i64
  %846 = add nsw i64 %845, %843
  %847 = trunc i64 %846 to i32
  store i32 %847, i32* %33, align 4
  %848 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %849 = load i32, i32* %33, align 4
  %850 = zext i32 %849 to i64
  %851 = getelementptr inbounds i8, i8* %848, i64 %850
  %852 = load i32, i32* %33, align 4
  %853 = zext i32 %852 to i64
  %854 = sub i64 200, %853
  %855 = trunc i64 %854 to i32
  %856 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %857 = load i8*, i8** %21, align 8
  %858 = getelementptr inbounds i8, i8* %857, i64 8
  %859 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %851, i32 %855, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8* %856, i8* %858)
  %860 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %861 = load i32, i32* %33, align 4
  %862 = zext i32 %861 to i64
  %863 = getelementptr inbounds i8, i8* %860, i64 %862
  %864 = call i64 @strlen(i8* %863)
  %865 = load i32, i32* %33, align 4
  %866 = zext i32 %865 to i64
  %867 = add nsw i64 %866, %864
  %868 = trunc i64 %867 to i32
  store i32 %868, i32* %33, align 4
  br label %869

869:                                              ; preds = %828, %824, %821
  br label %1221

870:                                              ; preds = %179
  %871 = load i32, i32* %29, align 4
  %872 = icmp ne i32 %871, 0
  br i1 %872, label %873, label %926

873:                                              ; preds = %870
  %874 = load i32, i32* %33, align 4
  %875 = zext i32 %874 to i64
  %876 = icmp ult i64 %875, 200
  br i1 %876, label %877, label %926

877:                                              ; preds = %873
  %878 = load i8*, i8** %21, align 8
  %879 = bitcast i8* %878 to %struct.udphdr*
  store %struct.udphdr* %879, %struct.udphdr** %18, align 8
  %880 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %881 = load i32, i32* %33, align 4
  %882 = zext i32 %881 to i64
  %883 = getelementptr inbounds i8, i8* %880, i64 %882
  %884 = load i32, i32* %33, align 4
  %885 = zext i32 %884 to i64
  %886 = sub i64 200, %885
  %887 = trunc i64 %886 to i32
  %888 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %889 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %890 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %889, i32 0, i32 1
  %891 = load i32, i32* %890, align 4
  %892 = call i32 @ntohs(i32 %891)
  %893 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %883, i32 %887, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8* %888, i32 %892)
  %894 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %895 = load i32, i32* %33, align 4
  %896 = zext i32 %895 to i64
  %897 = getelementptr inbounds i8, i8* %894, i64 %896
  %898 = call i64 @strlen(i8* %897)
  %899 = load i32, i32* %33, align 4
  %900 = zext i32 %899 to i64
  %901 = add nsw i64 %900, %898
  %902 = trunc i64 %901 to i32
  store i32 %902, i32* %33, align 4
  %903 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %904 = load i32, i32* %33, align 4
  %905 = zext i32 %904 to i64
  %906 = getelementptr inbounds i8, i8* %903, i64 %905
  %907 = load i32, i32* %33, align 4
  %908 = zext i32 %907 to i64
  %909 = sub i64 200, %908
  %910 = trunc i64 %909 to i32
  %911 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %912 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %913 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %912, i32 0, i32 0
  %914 = load i32, i32* %913, align 4
  %915 = call i32 @ntohs(i32 %914)
  %916 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %906, i32 %910, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* %911, i32 %915)
  %917 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %918 = load i32, i32* %33, align 4
  %919 = zext i32 %918 to i64
  %920 = getelementptr inbounds i8, i8* %917, i64 %919
  %921 = call i64 @strlen(i8* %920)
  %922 = load i32, i32* %33, align 4
  %923 = zext i32 %922 to i64
  %924 = add nsw i64 %923, %921
  %925 = trunc i64 %924 to i32
  store i32 %925, i32* %33, align 4
  br label %926

926:                                              ; preds = %877, %873, %870
  br label %1221

927:                                              ; preds = %179
  %928 = load i8*, i8** %21, align 8
  %929 = bitcast i8* %928 to %struct.tcphdr*
  store %struct.tcphdr* %929, %struct.tcphdr** %17, align 8
  %930 = load i64, i64* %34, align 8
  %931 = load i64, i64* @IPTOS_LOWDELAY, align 8
  %932 = icmp eq i64 %930, %931
  br i1 %932, label %933, label %944

933:                                              ; preds = %927
  %934 = load %struct.bundle*, %struct.bundle** %9, align 8
  %935 = getelementptr inbounds %struct.bundle, %struct.bundle* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %935, i32 0, i32 0
  %937 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %936, i32 0, i32 0
  %938 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %937, i32 0, i32 0
  %939 = load i32, i32* %938, align 8
  %940 = icmp ne i32 %939, 0
  br i1 %940, label %941, label %944

941:                                              ; preds = %933
  %942 = load i32, i32* %28, align 4
  %943 = add nsw i32 %942, 1
  store i32 %943, i32* %28, align 4
  br label %944

944:                                              ; preds = %941, %933, %927
  %945 = load i32, i32* %32, align 4
  %946 = icmp ne i32 %945, 0
  br i1 %946, label %963, label %947

947:                                              ; preds = %944
  %948 = load %struct.bundle*, %struct.bundle** %9, align 8
  %949 = getelementptr inbounds %struct.bundle, %struct.bundle* %948, i32 0, i32 1
  %950 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %951 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %950, i32 0, i32 5
  %952 = load i32, i32* %951, align 4
  %953 = call i32 @ntohs(i32 %952)
  %954 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %955 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %954, i32 0, i32 4
  %956 = load i32, i32* %955, align 4
  %957 = call i32 @ntohs(i32 %956)
  %958 = call i32 @ncp_IsUrgentTcpPort(%struct.TYPE_10__* %949, i32 %953, i32 %957)
  %959 = icmp ne i32 %958, 0
  br i1 %959, label %960, label %963

960:                                              ; preds = %947
  %961 = load i32, i32* %28, align 4
  %962 = add nsw i32 %961, 1
  store i32 %962, i32* %28, align 4
  br label %976

963:                                              ; preds = %947, %944
  %964 = load i32, i32* %32, align 4
  %965 = icmp ne i32 %964, 0
  br i1 %965, label %975, label %966

966:                                              ; preds = %963
  %967 = load %struct.bundle*, %struct.bundle** %9, align 8
  %968 = getelementptr inbounds %struct.bundle, %struct.bundle* %967, i32 0, i32 1
  %969 = load i32, i32* %31, align 4
  %970 = call i32 @ncp_IsUrgentTcpLen(%struct.TYPE_10__* %968, i32 %969)
  %971 = icmp ne i32 %970, 0
  br i1 %971, label %972, label %975

972:                                              ; preds = %966
  %973 = load i32, i32* %28, align 4
  %974 = add nsw i32 %973, 1
  store i32 %974, i32* %28, align 4
  br label %975

975:                                              ; preds = %972, %966, %963
  br label %976

976:                                              ; preds = %975, %960
  %977 = load i32, i32* %29, align 4
  %978 = icmp ne i32 %977, 0
  br i1 %978, label %979, label %1167

979:                                              ; preds = %976
  %980 = load i32, i32* %33, align 4
  %981 = zext i32 %980 to i64
  %982 = icmp ult i64 %981, 200
  br i1 %982, label %983, label %1167

983:                                              ; preds = %979
  %984 = load i32, i32* %31, align 4
  %985 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %986 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %985, i32 0, i32 0
  %987 = load i32, i32* %986, align 4
  %988 = shl i32 %987, 2
  %989 = sub nsw i32 %984, %988
  store i32 %989, i32* %26, align 4
  %990 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %991 = load i32, i32* %33, align 4
  %992 = zext i32 %991 to i64
  %993 = getelementptr inbounds i8, i8* %990, i64 %992
  %994 = load i32, i32* %33, align 4
  %995 = zext i32 %994 to i64
  %996 = sub i64 200, %995
  %997 = trunc i64 %996 to i32
  %998 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %999 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %1000 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %999, i32 0, i32 5
  %1001 = load i32, i32* %1000, align 4
  %1002 = call i32 @ntohs(i32 %1001)
  %1003 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %993, i32 %997, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* %998, i32 %1002)
  %1004 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1005 = load i32, i32* %33, align 4
  %1006 = zext i32 %1005 to i64
  %1007 = getelementptr inbounds i8, i8* %1004, i64 %1006
  %1008 = call i64 @strlen(i8* %1007)
  %1009 = load i32, i32* %33, align 4
  %1010 = zext i32 %1009 to i64
  %1011 = add nsw i64 %1010, %1008
  %1012 = trunc i64 %1011 to i32
  store i32 %1012, i32* %33, align 4
  %1013 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1014 = load i32, i32* %33, align 4
  %1015 = zext i32 %1014 to i64
  %1016 = getelementptr inbounds i8, i8* %1013, i64 %1015
  %1017 = load i32, i32* %33, align 4
  %1018 = zext i32 %1017 to i64
  %1019 = sub i64 200, %1018
  %1020 = trunc i64 %1019 to i32
  %1021 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %1022 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %1023 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %1022, i32 0, i32 4
  %1024 = load i32, i32* %1023, align 4
  %1025 = call i32 @ntohs(i32 %1024)
  %1026 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %1016, i32 %1020, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* %1021, i32 %1025)
  %1027 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1028 = load i32, i32* %33, align 4
  %1029 = zext i32 %1028 to i64
  %1030 = getelementptr inbounds i8, i8* %1027, i64 %1029
  %1031 = call i64 @strlen(i8* %1030)
  %1032 = load i32, i32* %33, align 4
  %1033 = zext i32 %1032 to i64
  %1034 = add nsw i64 %1033, %1031
  %1035 = trunc i64 %1034 to i32
  store i32 %1035, i32* %33, align 4
  store i32 0, i32* %27, align 4
  %1036 = load i32, i32* @TH_FIN, align 4
  store i32 %1036, i32* %25, align 4
  br label %1037

1037:                                             ; preds = %1073, %983
  %1038 = load i32, i32* %25, align 4
  %1039 = icmp ne i32 %1038, 64
  br i1 %1039, label %1040, label %1076

1040:                                             ; preds = %1037
  %1041 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %1042 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %1041, i32 0, i32 1
  %1043 = load i32, i32* %1042, align 4
  %1044 = load i32, i32* %25, align 4
  %1045 = and i32 %1043, %1044
  %1046 = icmp ne i32 %1045, 0
  br i1 %1046, label %1047, label %1070

1047:                                             ; preds = %1040
  %1048 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1049 = load i32, i32* %33, align 4
  %1050 = zext i32 %1049 to i64
  %1051 = getelementptr inbounds i8, i8* %1048, i64 %1050
  %1052 = load i32, i32* %33, align 4
  %1053 = zext i32 %1052 to i64
  %1054 = sub i64 200, %1053
  %1055 = trunc i64 %1054 to i32
  %1056 = load i32, i32* %27, align 4
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds [6 x i8*], [6 x i8*]* @PacketCheck.TcpFlags, i64 0, i64 %1057
  %1059 = load i8*, i8** %1058, align 8
  %1060 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %1051, i32 %1055, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i8* %1059)
  %1061 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1062 = load i32, i32* %33, align 4
  %1063 = zext i32 %1062 to i64
  %1064 = getelementptr inbounds i8, i8* %1061, i64 %1063
  %1065 = call i64 @strlen(i8* %1064)
  %1066 = load i32, i32* %33, align 4
  %1067 = zext i32 %1066 to i64
  %1068 = add nsw i64 %1067, %1065
  %1069 = trunc i64 %1068 to i32
  store i32 %1069, i32* %33, align 4
  br label %1070

1070:                                             ; preds = %1047, %1040
  %1071 = load i32, i32* %27, align 4
  %1072 = add nsw i32 %1071, 1
  store i32 %1072, i32* %27, align 4
  br label %1073

1073:                                             ; preds = %1070
  %1074 = load i32, i32* %25, align 4
  %1075 = shl i32 %1074, 1
  store i32 %1075, i32* %25, align 4
  br label %1037

1076:                                             ; preds = %1037
  %1077 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1078 = load i32, i32* %33, align 4
  %1079 = zext i32 %1078 to i64
  %1080 = getelementptr inbounds i8, i8* %1077, i64 %1079
  %1081 = load i32, i32* %33, align 4
  %1082 = zext i32 %1081 to i64
  %1083 = sub i64 200, %1082
  %1084 = trunc i64 %1083 to i32
  %1085 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %1086 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %1085, i32 0, i32 3
  %1087 = load i32, i32* %1086, align 4
  %1088 = call i32 @ntohl(i32 %1087)
  %1089 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %1090 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %1089, i32 0, i32 2
  %1091 = load i32, i32* %1090, align 4
  %1092 = call i32 @ntohl(i32 %1091)
  %1093 = load i32, i32* %26, align 4
  %1094 = load i32, i32* %12, align 4
  %1095 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %1080, i32 %1084, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i32 %1088, i32 %1092, i32 %1093, i32 %1094)
  %1096 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1097 = load i32, i32* %33, align 4
  %1098 = zext i32 %1097 to i64
  %1099 = getelementptr inbounds i8, i8* %1096, i64 %1098
  %1100 = call i64 @strlen(i8* %1099)
  %1101 = load i32, i32* %33, align 4
  %1102 = zext i32 %1101 to i64
  %1103 = add nsw i64 %1102, %1100
  %1104 = trunc i64 %1103 to i32
  store i32 %1104, i32* %33, align 4
  %1105 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %1106 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %1105, i32 0, i32 1
  %1107 = load i32, i32* %1106, align 4
  %1108 = load i32, i32* @TH_SYN, align 4
  %1109 = and i32 %1107, %1108
  %1110 = icmp ne i32 %1109, 0
  br i1 %1110, label %1111, label %1147

1111:                                             ; preds = %1076
  %1112 = load i32, i32* %12, align 4
  %1113 = icmp sgt i32 %1112, 40
  br i1 %1113, label %1114, label %1147

1114:                                             ; preds = %1111
  %1115 = load i8*, i8** %21, align 8
  %1116 = getelementptr inbounds i8, i8* %1115, i64 20
  %1117 = bitcast i8* %1116 to i32*
  store i32* %1117, i32** %39, align 8
  %1118 = load i32*, i32** %39, align 8
  %1119 = getelementptr inbounds i32, i32* %1118, i64 0
  %1120 = load i32, i32* %1119, align 4
  %1121 = call i32 @ntohs(i32 %1120)
  %1122 = icmp eq i32 %1121, 516
  br i1 %1122, label %1123, label %1146

1123:                                             ; preds = %1114
  %1124 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1125 = load i32, i32* %33, align 4
  %1126 = zext i32 %1125 to i64
  %1127 = getelementptr inbounds i8, i8* %1124, i64 %1126
  %1128 = load i32, i32* %33, align 4
  %1129 = zext i32 %1128 to i64
  %1130 = sub i64 200, %1129
  %1131 = trunc i64 %1130 to i32
  %1132 = load i32*, i32** %39, align 8
  %1133 = getelementptr inbounds i32, i32* %1132, i64 1
  %1134 = load i32, i32* %1133, align 4
  %1135 = call i32 @ntohs(i32 %1134)
  %1136 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %1127, i32 %1131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i32 %1135)
  %1137 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1138 = load i32, i32* %33, align 4
  %1139 = zext i32 %1138 to i64
  %1140 = getelementptr inbounds i8, i8* %1137, i64 %1139
  %1141 = call i64 @strlen(i8* %1140)
  %1142 = load i32, i32* %33, align 4
  %1143 = zext i32 %1142 to i64
  %1144 = add nsw i64 %1143, %1141
  %1145 = trunc i64 %1144 to i32
  store i32 %1145, i32* %33, align 4
  br label %1146

1146:                                             ; preds = %1123, %1114
  br label %1147

1147:                                             ; preds = %1146, %1111, %1076
  %1148 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1149 = load i32, i32* %33, align 4
  %1150 = zext i32 %1149 to i64
  %1151 = getelementptr inbounds i8, i8* %1148, i64 %1150
  %1152 = load i32, i32* %33, align 4
  %1153 = zext i32 %1152 to i64
  %1154 = sub i64 200, %1153
  %1155 = trunc i64 %1154 to i32
  %1156 = load i32, i32* %28, align 4
  %1157 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %1151, i32 %1155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i32 %1156)
  %1158 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1159 = load i32, i32* %33, align 4
  %1160 = zext i32 %1159 to i64
  %1161 = getelementptr inbounds i8, i8* %1158, i64 %1160
  %1162 = call i64 @strlen(i8* %1161)
  %1163 = load i32, i32* %33, align 4
  %1164 = zext i32 %1163 to i64
  %1165 = add nsw i64 %1164, %1162
  %1166 = trunc i64 %1165 to i32
  store i32 %1166, i32* %33, align 4
  br label %1167

1167:                                             ; preds = %1147, %979, %976
  br label %1221

1168:                                             ; preds = %179
  %1169 = load i8*, i8** %14, align 8
  %1170 = icmp ne i8* %1169, null
  br i1 %1170, label %1171, label %1172

1171:                                             ; preds = %1168
  store i32 -2, i32* %8, align 4
  br label %1327

1172:                                             ; preds = %1168
  %1173 = load i32, i32* %29, align 4
  %1174 = icmp ne i32 %1173, 0
  br i1 %1174, label %1175, label %1220

1175:                                             ; preds = %1172
  %1176 = load i32, i32* %33, align 4
  %1177 = zext i32 %1176 to i64
  %1178 = icmp ult i64 %1177, 200
  br i1 %1178, label %1179, label %1220

1179:                                             ; preds = %1175
  %1180 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1181 = load i32, i32* %33, align 4
  %1182 = zext i32 %1181 to i64
  %1183 = getelementptr inbounds i8, i8* %1180, i64 %1182
  %1184 = load i32, i32* %33, align 4
  %1185 = zext i32 %1184 to i64
  %1186 = sub i64 200, %1185
  %1187 = trunc i64 %1186 to i32
  %1188 = load i32, i32* %24, align 4
  %1189 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %22)
  %1190 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %1183, i32 %1187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i32 %1188, i8* %1189)
  %1191 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1192 = load i32, i32* %33, align 4
  %1193 = zext i32 %1192 to i64
  %1194 = getelementptr inbounds i8, i8* %1191, i64 %1193
  %1195 = call i64 @strlen(i8* %1194)
  %1196 = load i32, i32* %33, align 4
  %1197 = zext i32 %1196 to i64
  %1198 = add nsw i64 %1197, %1195
  %1199 = trunc i64 %1198 to i32
  store i32 %1199, i32* %33, align 4
  %1200 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1201 = load i32, i32* %33, align 4
  %1202 = zext i32 %1201 to i64
  %1203 = getelementptr inbounds i8, i8* %1200, i64 %1202
  %1204 = load i32, i32* %33, align 4
  %1205 = zext i32 %1204 to i64
  %1206 = sub i64 200, %1205
  %1207 = trunc i64 %1206 to i32
  %1208 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %23)
  %1209 = load i32, i32* %12, align 4
  %1210 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %1203, i32 %1207, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8* %1208, i32 %1209)
  %1211 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1212 = load i32, i32* %33, align 4
  %1213 = zext i32 %1212 to i64
  %1214 = getelementptr inbounds i8, i8* %1211, i64 %1213
  %1215 = call i64 @strlen(i8* %1214)
  %1216 = load i32, i32* %33, align 4
  %1217 = zext i32 %1216 to i64
  %1218 = add nsw i64 %1217, %1215
  %1219 = trunc i64 %1218 to i32
  store i32 %1219, i32* %33, align 4
  br label %1220

1220:                                             ; preds = %1179, %1175, %1172
  br label %1221

1221:                                             ; preds = %1220, %1167, %926, %869, %820, %772, %674, %589, %540, %491, %296, %238
  %1222 = load %struct.filter*, %struct.filter** %13, align 8
  %1223 = icmp ne %struct.filter* %1222, null
  br i1 %1223, label %1224, label %1239

1224:                                             ; preds = %1221
  %1225 = load i8*, i8** %11, align 8
  %1226 = load i64, i64* %10, align 8
  %1227 = load %struct.filter*, %struct.filter** %13, align 8
  %1228 = load i32*, i32** %15, align 8
  %1229 = call i64 @FilterCheck(i8* %1225, i64 %1226, %struct.filter* %1227, i32* %1228)
  %1230 = icmp ne i64 %1229, 0
  br i1 %1230, label %1231, label %1239

1231:                                             ; preds = %1224
  %1232 = load i32, i32* %29, align 4
  %1233 = icmp ne i32 %1232, 0
  br i1 %1233, label %1234, label %1238

1234:                                             ; preds = %1231
  %1235 = load i32, i32* @LogTCPIP, align 4
  %1236 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1237 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %1235, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8* %1236)
  br label %1238

1238:                                             ; preds = %1234, %1231
  store i32 -1, i32* %30, align 4
  br label %1303

1239:                                             ; preds = %1224, %1221
  %1240 = load i32, i32* %29, align 4
  %1241 = icmp ne i32 %1240, 0
  br i1 %1241, label %1242, label %1301

1242:                                             ; preds = %1239
  %1243 = load i32, i32* @LogTCPIP, align 4
  %1244 = call i64 @log_IsKept(i32 %1243)
  %1245 = icmp ne i64 %1244, 0
  br i1 %1245, label %1246, label %1301

1246:                                             ; preds = %1242
  store i32 0, i32* %40, align 4
  %1247 = load %struct.filter*, %struct.filter** %13, align 8
  %1248 = icmp ne %struct.filter* %1247, null
  br i1 %1248, label %1249, label %1261

1249:                                             ; preds = %1246
  %1250 = load i8*, i8** %11, align 8
  %1251 = load i64, i64* %10, align 8
  %1252 = load %struct.bundle*, %struct.bundle** %9, align 8
  %1253 = getelementptr inbounds %struct.bundle, %struct.bundle* %1252, i32 0, i32 0
  %1254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1253, i32 0, i32 0
  %1255 = call i64 @FilterCheck(i8* %1250, i64 %1251, %struct.filter* %1254, i32* %40)
  %1256 = icmp ne i64 %1255, 0
  br i1 %1256, label %1257, label %1261

1257:                                             ; preds = %1249
  %1258 = load i32, i32* @LogTCPIP, align 4
  %1259 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1260 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %1258, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i8* %1259)
  br label %1300

1261:                                             ; preds = %1249, %1246
  %1262 = load i32*, i32** %15, align 8
  %1263 = icmp ne i32* %1262, null
  br i1 %1263, label %1264, label %1299

1264:                                             ; preds = %1261
  %1265 = load i32*, i32** %15, align 8
  %1266 = load i32, i32* %1265, align 4
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1268, label %1271

1268:                                             ; preds = %1264
  %1269 = load i32, i32* %40, align 4
  %1270 = load i32*, i32** %15, align 8
  store i32 %1269, i32* %1270, align 4
  br label %1271

1271:                                             ; preds = %1268, %1264
  %1272 = load i32*, i32** %15, align 8
  %1273 = load i32, i32* %1272, align 4
  %1274 = icmp ne i32 %1273, 0
  br i1 %1274, label %1275, label %1294

1275:                                             ; preds = %1271
  %1276 = load i32*, i32** %15, align 8
  %1277 = load i32, i32* %1276, align 4
  %1278 = load i32, i32* %40, align 4
  %1279 = icmp ne i32 %1277, %1278
  br i1 %1279, label %1280, label %1287

1280:                                             ; preds = %1275
  %1281 = load i32, i32* @LogTCPIP, align 4
  %1282 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1283 = load i32*, i32** %15, align 8
  %1284 = load i32, i32* %1283, align 4
  %1285 = load i32, i32* %40, align 4
  %1286 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %1281, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), i8* %1282, i32 %1284, i32 %1285)
  br label %1293

1287:                                             ; preds = %1275
  %1288 = load i32, i32* @LogTCPIP, align 4
  %1289 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1290 = load i32*, i32** %15, align 8
  %1291 = load i32, i32* %1290, align 4
  %1292 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %1288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0), i8* %1289, i32 %1291)
  br label %1293

1293:                                             ; preds = %1287, %1280
  br label %1298

1294:                                             ; preds = %1271
  %1295 = load i32, i32* @LogTCPIP, align 4
  %1296 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %1297 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %1295, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8* %1296)
  br label %1298

1298:                                             ; preds = %1294, %1293
  br label %1299

1299:                                             ; preds = %1298, %1261
  br label %1300

1300:                                             ; preds = %1299, %1257
  br label %1301

1301:                                             ; preds = %1300, %1242, %1239
  %1302 = load i32, i32* %28, align 4
  store i32 %1302, i32* %30, align 4
  br label %1303

1303:                                             ; preds = %1301, %1238
  %1304 = load %struct.filter*, %struct.filter** %13, align 8
  %1305 = icmp ne %struct.filter* %1304, null
  br i1 %1305, label %1306, label %1325

1306:                                             ; preds = %1303
  %1307 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %1308 = icmp ne %struct.udphdr* %1307, null
  br i1 %1308, label %1309, label %1325

1309:                                             ; preds = %1306
  %1310 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %1311 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %1310, i32 0, i32 0
  %1312 = load i32, i32* %1311, align 4
  %1313 = call i32 @ntohs(i32 %1312)
  %1314 = icmp eq i32 %1313, 53
  br i1 %1314, label %1315, label %1325

1315:                                             ; preds = %1309
  %1316 = load i32, i32* @LogDNS, align 4
  %1317 = call i64 @log_IsKept(i32 %1316)
  %1318 = icmp ne i64 %1317, 0
  br i1 %1318, label %1319, label %1325

1319:                                             ; preds = %1315
  %1320 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %1321 = load %struct.filter*, %struct.filter** %13, align 8
  %1322 = getelementptr inbounds %struct.filter, %struct.filter* %1321, i32 0, i32 0
  %1323 = load i8*, i8** %1322, align 8
  %1324 = call i32 @ip_LogDNS(%struct.udphdr* %1320, i8* %1323)
  br label %1325

1325:                                             ; preds = %1319, %1315, %1309, %1306, %1303
  %1326 = load i32, i32* %30, align 4
  store i32 %1326, i32* %8, align 4
  br label %1327

1327:                                             ; preds = %1325, %1171, %769, %671, %453
  %1328 = load i32, i32* %8, align 4
  ret i32 %1328
}

declare dso_local i64 @log_IsKept(i32) #1

declare dso_local i32 @ncpaddr_setip6(%struct.ncpaddr*, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ncpaddr_setip4(%struct.ncpaddr*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @ncpaddr_ntoa(%struct.ncpaddr*) #1

declare dso_local i32 @ncp_IsUrgentUdpPort(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @Enabled(%struct.bundle*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @ncp_IsUrgentTcpPort(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ncp_IsUrgentTcpLen(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @FilterCheck(i8*, i64, %struct.filter*, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @ip_LogDNS(%struct.udphdr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
