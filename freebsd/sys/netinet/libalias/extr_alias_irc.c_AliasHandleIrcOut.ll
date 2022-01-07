; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_irc.c_AliasHandleIrcOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_irc.c_AliasHandleIrcOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.alias_link = type { i32 }
%struct.in_addr = type { i64 }
%struct.tcphdr = type { i32, i32, i64, i32 }

@PKTSIZE = common dso_local global i32 0, align 4
@newpacket = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Found DCC\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"DCC packet terminated in just spaces\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Transferring command...\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"DCC packet terminated during command\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Done command - removing spaces\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"DCC packet terminated in just spaces (post-command)\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Transferring filename...\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"DCC packet terminated during filename\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Done filename - removing spaces\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"DCC packet terminated in just spaces (post-filename)\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Fetching IP address\0A\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [57 x i8] c"DCC Address overflow (org_addr == 0x%08lx, next char %c\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Skipping space\0A\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"Overflow (%d >= %d) or bad character (%02x) terminating IP address\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Packet failure - space overflow.\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Fetching port number\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"DCC: port number overflow\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Bad port termination\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Got IP %lu and port %u\0A\00", align 1
@IPPORT_RESERVED = common dso_local global i16 0, align 2
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"Got a DCC link\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%lu \00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"DCC packet construct failure.\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"DCC constructed packet overflow.\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Aliased IP %lu and port %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*, %struct.ip*, %struct.alias_link*, i32)* @AliasHandleIrcOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AliasHandleIrcOut(%struct.libalias* %0, %struct.ip* %1, %struct.alias_link* %2, i32 %3) #0 {
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca %struct.ip*, align 8
  %7 = alloca %struct.alias_link*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.in_addr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i16, align 2
  %21 = alloca %struct.alias_link*, align 8
  %22 = alloca %struct.in_addr, align 8
  %23 = alloca %struct.in_addr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.in_addr, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store %struct.ip* %1, %struct.ip** %6, align 8
  store %struct.alias_link* %2, %struct.alias_link** %7, align 8
  store i32 %3, i32* %8, align 4
  %29 = load %struct.ip*, %struct.ip** %6, align 8
  %30 = call i64 @ip_next(%struct.ip* %29)
  %31 = inttoptr i64 %30 to %struct.tcphdr*
  store %struct.tcphdr* %31, %struct.tcphdr** %15, align 8
  %32 = load %struct.ip*, %struct.ip** %6, align 8
  %33 = getelementptr inbounds %struct.ip, %struct.ip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %36 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %34, %37
  %39 = shl i32 %38, 2
  store i32 %39, i32* %9, align 4
  %40 = load %struct.ip*, %struct.ip** %6, align 8
  %41 = getelementptr inbounds %struct.ip, %struct.ip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohs(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 29
  br i1 %48, label %49, label %50

49:                                               ; preds = %4
  br label %733

50:                                               ; preds = %4
  %51 = load %struct.ip*, %struct.ip** %6, align 8
  %52 = bitcast %struct.ip* %51 to i8*
  store i8* %52, i8** %14, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %14, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %74, %50
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %78

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  br label %60

77:                                               ; preds = %60
  br label %733

78:                                               ; preds = %72
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %80

80:                                               ; preds = %653, %78
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @PKTSIZE, align 4
  %87 = icmp uge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %80
  br label %661

89:                                               ; preds = %84
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = load i8*, i8** @newpacket, align 8
  %97 = load i32, i32* %18, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %18, align 4
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  store i8 %95, i8* %100, align 1
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %589

106:                                              ; preds = %89
  %107 = load i8*, i8** %14, align 8
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, 0
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 68
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %589

116:                                              ; preds = %106
  %117 = load i8*, i8** %14, align 8
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 67
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %589

126:                                              ; preds = %116
  %127 = load i8*, i8** %14, align 8
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 67
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %589

136:                                              ; preds = %126
  %137 = load i8*, i8** %14, align 8
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 3
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 32
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  br label %589

146:                                              ; preds = %136
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 4
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %18, align 4
  %150 = add i32 %149, 4
  %151 = load i32, i32* @PKTSIZE, align 4
  %152 = icmp ugt i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %661

154:                                              ; preds = %146
  %155 = load i8*, i8** @newpacket, align 8
  %156 = load i32, i32* %18, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %18, align 4
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 68, i8* %159, align 1
  %160 = load i8*, i8** @newpacket, align 8
  %161 = load i32, i32* %18, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %18, align 4
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  store i8 67, i8* %164, align 1
  %165 = load i8*, i8** @newpacket, align 8
  %166 = load i32, i32* %18, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %18, align 4
  %168 = zext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 67, i8* %169, align 1
  %170 = load i8*, i8** @newpacket, align 8
  %171 = load i32, i32* %18, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %18, align 4
  %173 = zext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  store i8 32, i8* %174, align 1
  %175 = call i32 @DBprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %176

176:                                              ; preds = %191, %154
  %177 = load i8*, i8** %14, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 32
  br i1 %183, label %184, label %192

184:                                              ; preds = %176
  %185 = load i32, i32* %16, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp sge i32 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = call i32 @DBprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %661

191:                                              ; preds = %184
  br label %176

192:                                              ; preds = %176
  %193 = call i32 @DBprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %194

194:                                              ; preds = %223, %192
  %195 = load i8*, i8** %14, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 32
  br i1 %201, label %202, label %224

202:                                              ; preds = %194
  %203 = load i8*, i8** %14, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = load i8*, i8** @newpacket, align 8
  %209 = load i32, i32* %18, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %18, align 4
  %211 = zext i32 %209 to i64
  %212 = getelementptr inbounds i8, i8* %208, i64 %211
  store i8 %207, i8* %212, align 1
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %16, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp sge i32 %214, %215
  br i1 %216, label %221, label %217

217:                                              ; preds = %202
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* @PKTSIZE, align 4
  %220 = icmp uge i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %217, %202
  %222 = call i32 @DBprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %661

223:                                              ; preds = %217
  br label %194

224:                                              ; preds = %194
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, 1
  %227 = load i32, i32* %11, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %224
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* @PKTSIZE, align 4
  %232 = icmp ult i32 %230, %231
  br i1 %232, label %233, label %245

233:                                              ; preds = %229
  %234 = load i8*, i8** %14, align 8
  %235 = load i32, i32* %16, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %16, align 4
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = load i8*, i8** @newpacket, align 8
  %241 = load i32, i32* %18, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %18, align 4
  %243 = zext i32 %241 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  store i8 %239, i8* %244, align 1
  br label %245

245:                                              ; preds = %233, %229, %224
  %246 = call i32 @DBprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %247

247:                                              ; preds = %262, %245
  %248 = load i8*, i8** %14, align 8
  %249 = load i32, i32* %16, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 32
  br i1 %254, label %255, label %263

255:                                              ; preds = %247
  %256 = load i32, i32* %16, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %16, align 4
  %258 = load i32, i32* %11, align 4
  %259 = icmp sge i32 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = call i32 @DBprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %661

262:                                              ; preds = %255
  br label %247

263:                                              ; preds = %247
  %264 = call i32 @DBprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %265

265:                                              ; preds = %294, %263
  %266 = load i8*, i8** %14, align 8
  %267 = load i32, i32* %16, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp ne i32 %271, 32
  br i1 %272, label %273, label %295

273:                                              ; preds = %265
  %274 = load i8*, i8** %14, align 8
  %275 = load i32, i32* %16, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = load i8*, i8** @newpacket, align 8
  %280 = load i32, i32* %18, align 4
  %281 = add i32 %280, 1
  store i32 %281, i32* %18, align 4
  %282 = zext i32 %280 to i64
  %283 = getelementptr inbounds i8, i8* %279, i64 %282
  store i8 %278, i8* %283, align 1
  %284 = load i32, i32* %16, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %16, align 4
  %286 = load i32, i32* %11, align 4
  %287 = icmp sge i32 %285, %286
  br i1 %287, label %292, label %288

288:                                              ; preds = %273
  %289 = load i32, i32* %18, align 4
  %290 = load i32, i32* @PKTSIZE, align 4
  %291 = icmp uge i32 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %288, %273
  %293 = call i32 @DBprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %661

294:                                              ; preds = %288
  br label %265

295:                                              ; preds = %265
  %296 = load i32, i32* %16, align 4
  %297 = add nsw i32 %296, 1
  %298 = load i32, i32* %11, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %316

300:                                              ; preds = %295
  %301 = load i32, i32* %18, align 4
  %302 = load i32, i32* @PKTSIZE, align 4
  %303 = icmp ult i32 %301, %302
  br i1 %303, label %304, label %316

304:                                              ; preds = %300
  %305 = load i8*, i8** %14, align 8
  %306 = load i32, i32* %16, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %16, align 4
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i8, i8* %305, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = load i8*, i8** @newpacket, align 8
  %312 = load i32, i32* %18, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %18, align 4
  %314 = zext i32 %312 to i64
  %315 = getelementptr inbounds i8, i8* %311, i64 %314
  store i8 %310, i8* %315, align 1
  br label %316

316:                                              ; preds = %304, %300, %295
  %317 = call i32 @DBprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %318

318:                                              ; preds = %333, %316
  %319 = load i8*, i8** %14, align 8
  %320 = load i32, i32* %16, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %319, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 32
  br i1 %325, label %326, label %334

326:                                              ; preds = %318
  %327 = load i32, i32* %16, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %16, align 4
  %329 = load i32, i32* %11, align 4
  %330 = icmp sge i32 %328, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %326
  %332 = call i32 @DBprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  br label %661

333:                                              ; preds = %326
  br label %318

334:                                              ; preds = %318
  %335 = call i32 @DBprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  store i64 0, i64* %19, align 8
  br label %336

336:                                              ; preds = %365, %334
  %337 = load i32, i32* %16, align 4
  %338 = load i32, i32* %11, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %348

340:                                              ; preds = %336
  %341 = load i8*, i8** %14, align 8
  %342 = load i32, i32* %16, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  %345 = load i8, i8* %344, align 1
  %346 = call i64 @isdigit(i8 signext %345)
  %347 = icmp ne i64 %346, 0
  br label %348

348:                                              ; preds = %340, %336
  %349 = phi i1 [ false, %336 ], [ %347, %340 ]
  br i1 %349, label %350, label %379

350:                                              ; preds = %348
  %351 = load i64, i64* %19, align 8
  %352 = load i64, i64* @ULONG_MAX, align 8
  %353 = udiv i64 %352, 10
  %354 = icmp ugt i64 %351, %353
  br i1 %354, label %355, label %365

355:                                              ; preds = %350
  %356 = load i64, i64* %19, align 8
  %357 = load i8*, i8** %14, align 8
  %358 = load i32, i32* %16, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %357, i64 %359
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i64
  %363 = inttoptr i64 %362 to i8*
  %364 = call i32 @DBprintf(i8* %363)
  br label %589

365:                                              ; preds = %350
  %366 = load i64, i64* %19, align 8
  %367 = mul i64 %366, 10
  store i64 %367, i64* %19, align 8
  %368 = load i8*, i8** %14, align 8
  %369 = load i32, i32* %16, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %16, align 4
  %371 = sext i32 %369 to i64
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i32
  %375 = sub nsw i32 %374, 48
  %376 = sext i32 %375 to i64
  %377 = load i64, i64* %19, align 8
  %378 = add i64 %377, %376
  store i64 %378, i64* %19, align 8
  br label %336

379:                                              ; preds = %348
  %380 = call i32 @DBprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %381 = load i32, i32* %16, align 4
  %382 = add nsw i32 %381, 1
  %383 = load i32, i32* %11, align 4
  %384 = icmp sge i32 %382, %383
  br i1 %384, label %393, label %385

385:                                              ; preds = %379
  %386 = load i8*, i8** %14, align 8
  %387 = load i32, i32* %16, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %386, i64 %388
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = icmp ne i32 %391, 32
  br i1 %392, label %393, label %405

393:                                              ; preds = %385, %379
  %394 = load i32, i32* %16, align 4
  %395 = add nsw i32 %394, 1
  %396 = load i32, i32* %11, align 4
  %397 = load i8*, i8** %14, align 8
  %398 = load i32, i32* %16, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %397, i64 %399
  %401 = load i8, i8* %400, align 1
  %402 = sext i8 %401 to i64
  %403 = inttoptr i64 %402 to i8*
  %404 = call i32 @DBprintf(i8* %403)
  br label %589

405:                                              ; preds = %385
  br label %406

406:                                              ; preds = %421, %405
  %407 = load i8*, i8** %14, align 8
  %408 = load i32, i32* %16, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, i8* %407, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = sext i8 %411 to i32
  %413 = icmp eq i32 %412, 32
  br i1 %413, label %414, label %422

414:                                              ; preds = %406
  %415 = load i32, i32* %16, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %16, align 4
  %417 = load i32, i32* %11, align 4
  %418 = icmp sge i32 %416, %417
  br i1 %418, label %419, label %421

419:                                              ; preds = %414
  %420 = call i32 @DBprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %661

421:                                              ; preds = %414
  br label %406

422:                                              ; preds = %406
  %423 = call i32 @DBprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  store i16 0, i16* %20, align 2
  br label %424

424:                                              ; preds = %444, %422
  %425 = load i32, i32* %16, align 4
  %426 = load i32, i32* %11, align 4
  %427 = icmp slt i32 %425, %426
  br i1 %427, label %428, label %436

428:                                              ; preds = %424
  %429 = load i8*, i8** %14, align 8
  %430 = load i32, i32* %16, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, i8* %429, i64 %431
  %433 = load i8, i8* %432, align 1
  %434 = call i64 @isdigit(i8 signext %433)
  %435 = icmp ne i64 %434, 0
  br label %436

436:                                              ; preds = %428, %424
  %437 = phi i1 [ false, %424 ], [ %435, %428 ]
  br i1 %437, label %438, label %461

438:                                              ; preds = %436
  %439 = load i16, i16* %20, align 2
  %440 = zext i16 %439 to i32
  %441 = icmp sgt i32 %440, 6554
  br i1 %441, label %442, label %444

442:                                              ; preds = %438
  %443 = call i32 @DBprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %589

444:                                              ; preds = %438
  %445 = load i16, i16* %20, align 2
  %446 = zext i16 %445 to i32
  %447 = mul nsw i32 %446, 10
  %448 = trunc i32 %447 to i16
  store i16 %448, i16* %20, align 2
  %449 = load i8*, i8** %14, align 8
  %450 = load i32, i32* %16, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %16, align 4
  %452 = sext i32 %450 to i64
  %453 = getelementptr inbounds i8, i8* %449, i64 %452
  %454 = load i8, i8* %453, align 1
  %455 = sext i8 %454 to i32
  %456 = sub nsw i32 %455, 48
  %457 = load i16, i16* %20, align 2
  %458 = zext i16 %457 to i32
  %459 = add nsw i32 %458, %456
  %460 = trunc i32 %459 to i16
  store i16 %460, i16* %20, align 2
  br label %424

461:                                              ; preds = %436
  %462 = load i32, i32* %16, align 4
  %463 = load i32, i32* %11, align 4
  %464 = icmp sge i32 %462, %463
  br i1 %464, label %481, label %465

465:                                              ; preds = %461
  %466 = load i8*, i8** %14, align 8
  %467 = load i32, i32* %16, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8, i8* %466, i64 %468
  %470 = load i8, i8* %469, align 1
  %471 = sext i8 %470 to i32
  %472 = icmp ne i32 %471, 1
  br i1 %472, label %473, label %483

473:                                              ; preds = %465
  %474 = load i8*, i8** %14, align 8
  %475 = load i32, i32* %16, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8, i8* %474, i64 %476
  %478 = load i8, i8* %477, align 1
  %479 = sext i8 %478 to i32
  %480 = icmp ne i32 %479, 32
  br i1 %480, label %481, label %483

481:                                              ; preds = %473, %461
  %482 = call i32 @DBprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  br label %589

483:                                              ; preds = %473, %465
  %484 = load i64, i64* %19, align 8
  %485 = load i16, i16* %20, align 2
  %486 = zext i16 %485 to i32
  %487 = zext i32 %486 to i64
  %488 = inttoptr i64 %487 to i8*
  %489 = call i32 @DBprintf(i8* %488)
  %490 = load i16, i16* %20, align 2
  %491 = zext i16 %490 to i32
  %492 = call i32 @htons(i32 %491)
  store i32 %492, i32* %13, align 4
  %493 = load i64, i64* %19, align 8
  %494 = call i64 @htonl(i64 %493)
  %495 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  store i64 %494, i64* %495, align 8
  %496 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  store i64 0, i64* %496, align 8
  %497 = load i64, i64* %19, align 8
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %516

499:                                              ; preds = %483
  %500 = load i16, i16* %20, align 2
  %501 = icmp ne i16 %500, 0
  br i1 %501, label %502, label %516

502:                                              ; preds = %499
  %503 = load %struct.ip*, %struct.ip** %6, align 8
  %504 = getelementptr inbounds %struct.ip, %struct.ip* %503, i32 0, i32 3
  %505 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %506, %508
  br i1 %509, label %516, label %510

510:                                              ; preds = %502
  %511 = load i16, i16* %20, align 2
  %512 = zext i16 %511 to i32
  %513 = load i16, i16* @IPPORT_RESERVED, align 2
  %514 = zext i16 %513 to i32
  %515 = icmp slt i32 %512, %514
  br i1 %515, label %516, label %517

516:                                              ; preds = %510, %502, %499, %483
  br label %589

517:                                              ; preds = %510
  %518 = load %struct.libalias*, %struct.libalias** %5, align 8
  %519 = load i32, i32* %13, align 4
  %520 = load i32, i32* @IPPROTO_TCP, align 4
  %521 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = call %struct.alias_link* @FindUdpTcpOut(%struct.libalias* %518, i64 %522, i64 %524, i32 %519, i32 0, i32 %520, i32 1)
  store %struct.alias_link* %525, %struct.alias_link** %21, align 8
  %526 = call i32 @DBprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %527 = load %struct.alias_link*, %struct.alias_link** %21, align 8
  %528 = icmp ne %struct.alias_link* %527, null
  br i1 %528, label %529, label %588

529:                                              ; preds = %517
  %530 = load %struct.alias_link*, %struct.alias_link** %21, align 8
  %531 = call i32 @PunchFWHole(%struct.alias_link* %530)
  %532 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %533 = call i64 @GetAliasAddress(%struct.alias_link* %532)
  %534 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  store i64 %533, i64* %534, align 8
  %535 = bitcast %struct.in_addr* %23 to i8*
  %536 = bitcast %struct.in_addr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %535, i8* align 8 %536, i64 8, i1 false)
  %537 = load i8*, i8** @newpacket, align 8
  %538 = load i32, i32* %18, align 4
  %539 = zext i32 %538 to i64
  %540 = getelementptr inbounds i8, i8* %537, i64 %539
  %541 = load i32, i32* @PKTSIZE, align 4
  %542 = load i32, i32* %18, align 4
  %543 = sub i32 %541, %542
  %544 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0
  %545 = load i64, i64* %544, align 8
  %546 = call i64 @htonl(i64 %545)
  %547 = trunc i64 %546 to i32
  %548 = call i32 @snprintf(i8* %540, i32 %543, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %547)
  store i32 %548, i32* %25, align 4
  %549 = load i32, i32* %25, align 4
  %550 = icmp slt i32 %549, 0
  br i1 %550, label %551, label %553

551:                                              ; preds = %529
  %552 = call i32 @DBprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  br label %589

553:                                              ; preds = %529
  %554 = load i32, i32* %25, align 4
  %555 = load i32, i32* %18, align 4
  %556 = add i32 %555, %554
  store i32 %556, i32* %18, align 4
  %557 = load i32, i32* @PKTSIZE, align 4
  %558 = icmp uge i32 %556, %557
  br i1 %558, label %559, label %561

559:                                              ; preds = %553
  %560 = call i32 @DBprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  br label %589

561:                                              ; preds = %553
  %562 = load %struct.alias_link*, %struct.alias_link** %21, align 8
  %563 = call i32 @GetAliasPort(%struct.alias_link* %562)
  store i32 %563, i32* %24, align 4
  %564 = load i8*, i8** @newpacket, align 8
  %565 = load i32, i32* %18, align 4
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds i8, i8* %564, i64 %566
  %568 = load i32, i32* @PKTSIZE, align 4
  %569 = load i32, i32* %18, align 4
  %570 = sub i32 %568, %569
  %571 = load i32, i32* %24, align 4
  %572 = call i32 @htons(i32 %571)
  %573 = call i32 @snprintf(i8* %567, i32 %570, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 %572)
  store i32 %573, i32* %25, align 4
  %574 = load i32, i32* %25, align 4
  %575 = icmp slt i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %561
  %577 = call i32 @DBprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  br label %589

578:                                              ; preds = %561
  %579 = load i32, i32* %25, align 4
  %580 = load i32, i32* %18, align 4
  %581 = add i32 %580, %579
  store i32 %581, i32* %18, align 4
  %582 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0
  %583 = load i64, i64* %582, align 8
  %584 = load i32, i32* %24, align 4
  %585 = zext i32 %584 to i64
  %586 = inttoptr i64 %585 to i8*
  %587 = call i32 @DBprintf(i8* %586)
  br label %588

588:                                              ; preds = %578, %517
  br label %589

589:                                              ; preds = %588, %576, %559, %551, %516, %481, %442, %393, %355, %145, %135, %125, %115, %105
  br label %590

590:                                              ; preds = %619, %589
  %591 = load i32, i32* %16, align 4
  %592 = load i32, i32* %11, align 4
  %593 = icmp slt i32 %591, %592
  br i1 %593, label %594, label %598

594:                                              ; preds = %590
  %595 = load i32, i32* %18, align 4
  %596 = load i32, i32* @PKTSIZE, align 4
  %597 = icmp ult i32 %595, %596
  br label %598

598:                                              ; preds = %594, %590
  %599 = phi i1 [ false, %590 ], [ %597, %594 ]
  br i1 %599, label %600, label %624

600:                                              ; preds = %598
  %601 = load i8*, i8** %14, align 8
  %602 = load i32, i32* %16, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8, i8* %601, i64 %603
  %605 = load i8, i8* %604, align 1
  %606 = load i8*, i8** @newpacket, align 8
  %607 = load i32, i32* %18, align 4
  %608 = zext i32 %607 to i64
  %609 = getelementptr inbounds i8, i8* %606, i64 %608
  store i8 %605, i8* %609, align 1
  %610 = load i8*, i8** %14, align 8
  %611 = load i32, i32* %16, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i8, i8* %610, i64 %612
  %614 = load i8, i8* %613, align 1
  %615 = sext i8 %614 to i32
  %616 = icmp eq i32 %615, 1
  br i1 %616, label %617, label %618

617:                                              ; preds = %600
  br label %625

618:                                              ; preds = %600
  br label %619

619:                                              ; preds = %618
  %620 = load i32, i32* %16, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %16, align 4
  %622 = load i32, i32* %18, align 4
  %623 = add i32 %622, 1
  store i32 %623, i32* %18, align 4
  br label %590

624:                                              ; preds = %598
  br label %661

625:                                              ; preds = %617
  br label %626

626:                                              ; preds = %655, %625
  %627 = load i32, i32* %16, align 4
  %628 = load i32, i32* %11, align 4
  %629 = icmp slt i32 %627, %628
  br i1 %629, label %630, label %634

630:                                              ; preds = %626
  %631 = load i32, i32* %18, align 4
  %632 = load i32, i32* @PKTSIZE, align 4
  %633 = icmp ult i32 %631, %632
  br label %634

634:                                              ; preds = %630, %626
  %635 = phi i1 [ false, %626 ], [ %633, %630 ]
  br i1 %635, label %636, label %660

636:                                              ; preds = %634
  %637 = load i8*, i8** %14, align 8
  %638 = load i32, i32* %16, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i8, i8* %637, i64 %639
  %641 = load i8, i8* %640, align 1
  %642 = load i8*, i8** @newpacket, align 8
  %643 = load i32, i32* %18, align 4
  %644 = zext i32 %643 to i64
  %645 = getelementptr inbounds i8, i8* %642, i64 %644
  store i8 %641, i8* %645, align 1
  %646 = load i8*, i8** %14, align 8
  %647 = load i32, i32* %16, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8, i8* %646, i64 %648
  %650 = load i8, i8* %649, align 1
  %651 = sext i8 %650 to i32
  %652 = icmp eq i32 %651, 1
  br i1 %652, label %653, label %654

653:                                              ; preds = %636
  br label %80

654:                                              ; preds = %636
  br label %655

655:                                              ; preds = %654
  %656 = load i32, i32* %16, align 4
  %657 = add nsw i32 %656, 1
  store i32 %657, i32* %16, align 4
  %658 = load i32, i32* %18, align 4
  %659 = add i32 %658, 1
  store i32 %659, i32* %18, align 4
  br label %626

660:                                              ; preds = %634
  br label %661

661:                                              ; preds = %660, %624, %419, %331, %292, %260, %221, %189, %153, %88
  %662 = load i32, i32* %18, align 4
  %663 = load i32, i32* %8, align 4
  %664 = load i32, i32* %17, align 4
  %665 = sub i32 %663, %664
  %666 = icmp ugt i32 %662, %665
  br i1 %666, label %667, label %671

667:                                              ; preds = %661
  %668 = load i32, i32* %8, align 4
  %669 = load i32, i32* %17, align 4
  %670 = sub i32 %668, %669
  br label %673

671:                                              ; preds = %661
  %672 = load i32, i32* %18, align 4
  br label %673

673:                                              ; preds = %671, %667
  %674 = phi i32 [ %670, %667 ], [ %672, %671 ]
  store i32 %674, i32* %18, align 4
  %675 = load i8*, i8** %14, align 8
  %676 = load i32, i32* %17, align 4
  %677 = zext i32 %676 to i64
  %678 = getelementptr inbounds i8, i8* %675, i64 %677
  %679 = load i8*, i8** @newpacket, align 8
  %680 = load i32, i32* %18, align 4
  %681 = call i32 @memcpy(i8* %678, i8* %679, i32 %680)
  %682 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %683 = call i32 @SetAckModified(%struct.alias_link* %682)
  %684 = load %struct.ip*, %struct.ip** %6, align 8
  %685 = call i64 @ip_next(%struct.ip* %684)
  %686 = inttoptr i64 %685 to %struct.tcphdr*
  store %struct.tcphdr* %686, %struct.tcphdr** %15, align 8
  %687 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %688 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %687, i32 0, i32 3
  %689 = load i32, i32* %688, align 8
  %690 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %691 = call i32 @GetDeltaSeqOut(i32 %689, %struct.alias_link* %690)
  store i32 %691, i32* %27, align 4
  %692 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %693 = load i32, i32* %27, align 4
  %694 = load i32, i32* %17, align 4
  %695 = add i32 %693, %694
  %696 = load i32, i32* %18, align 4
  %697 = add i32 %695, %696
  %698 = load i32, i32* %11, align 4
  %699 = sub i32 %697, %698
  %700 = load %struct.ip*, %struct.ip** %6, align 8
  %701 = getelementptr inbounds %struct.ip, %struct.ip* %700, i32 0, i32 0
  %702 = load i32, i32* %701, align 8
  %703 = load %struct.ip*, %struct.ip** %6, align 8
  %704 = getelementptr inbounds %struct.ip, %struct.ip* %703, i32 0, i32 1
  %705 = load i32, i32* %704, align 4
  %706 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %707 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %706, i32 0, i32 3
  %708 = load i32, i32* %707, align 8
  %709 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %710 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %709, i32 0, i32 0
  %711 = load i32, i32* %710, align 8
  %712 = call i32 @AddSeq(%struct.alias_link* %692, i32 %699, i32 %702, i32 %705, i32 %708, i32 %711)
  %713 = load i32, i32* %9, align 4
  %714 = load i32, i32* %18, align 4
  %715 = add i32 %713, %714
  %716 = load i32, i32* %17, align 4
  %717 = add i32 %715, %716
  %718 = call i32 @htons(i32 %717)
  store i32 %718, i32* %28, align 4
  %719 = load %struct.ip*, %struct.ip** %6, align 8
  %720 = getelementptr inbounds %struct.ip, %struct.ip* %719, i32 0, i32 2
  %721 = load %struct.ip*, %struct.ip** %6, align 8
  %722 = getelementptr inbounds %struct.ip, %struct.ip* %721, i32 0, i32 1
  %723 = call i32 @DifferentialChecksum(i32* %720, i32* %28, i32* %722, i32 1)
  %724 = load i32, i32* %28, align 4
  %725 = load %struct.ip*, %struct.ip** %6, align 8
  %726 = getelementptr inbounds %struct.ip, %struct.ip* %725, i32 0, i32 1
  store i32 %724, i32* %726, align 4
  %727 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %728 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %727, i32 0, i32 2
  store i64 0, i64* %728, align 8
  %729 = load %struct.ip*, %struct.ip** %6, align 8
  %730 = call i64 @TcpChecksum(%struct.ip* %729)
  %731 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %732 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %731, i32 0, i32 2
  store i64 %730, i64* %732, align 8
  br label %733

733:                                              ; preds = %673, %77, %49
  ret void
}

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @DBprintf(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @htonl(i64) #1

declare dso_local %struct.alias_link* @FindUdpTcpOut(%struct.libalias*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @PunchFWHole(%struct.alias_link*) #1

declare dso_local i64 @GetAliasAddress(%struct.alias_link*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @GetAliasPort(%struct.alias_link*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @SetAckModified(%struct.alias_link*) #1

declare dso_local i32 @GetDeltaSeqOut(i32, %struct.alias_link*) #1

declare dso_local i32 @AddSeq(%struct.alias_link*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DifferentialChecksum(i32*, i32*, i32*, i32) #1

declare dso_local i64 @TcpChecksum(%struct.ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
