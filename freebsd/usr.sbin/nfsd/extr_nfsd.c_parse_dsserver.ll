; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nfsd/extr_nfsd.c_parse_dsserver.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nfsd/extr_nfsd.c_parse_dsserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_nfsd_args = type { i8*, i32, i8*, i32, i8*, i32, i8*, i32 }
%struct.addrinfo = type { i32, i64, i32, i8*, %struct.TYPE_2__*, %struct.addrinfo*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".%d.%d\00", align 1
@AI_CANONNAME = common dso_local global i32 0, align 4
@AI_ADDRCONFIG = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"getaddrinfo pnfs: %s %s\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"getaddrinfo() returned undersized IPv4 address\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"getaddrinfo() returned undersized IPv6 address\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"No IP address for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nfsd_nfsd_args*)* @parse_dsserver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_dsserver(i8* %0, %struct.nfsd_nfsd_args* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nfsd_nfsd_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [9 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.addrinfo, align 8
  %31 = alloca %struct.addrinfo*, align 8
  %32 = alloca %struct.addrinfo*, align 8
  %33 = alloca %struct.sockaddr_in, align 4
  %34 = alloca %struct.sockaddr_in6, align 4
  store i8* %0, i8** %3, align 8
  store %struct.nfsd_nfsd_args* %1, %struct.nfsd_nfsd_args** %4, align 8
  %35 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %14, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %15, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i8* @strdup(i8* %39)
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %2
  store i64 1024, i64* %27, align 8
  store i32 0, i32* %21, align 4
  %46 = load i64, i64* %27, align 8
  %47 = call i8* @malloc(i64 %46)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  store i64 1024, i64* %26, align 8
  store i32 0, i32* %20, align 4
  %53 = load i64, i64* %26, align 8
  %54 = call i8* @malloc(i64 %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  store i64 1024, i64* %25, align 8
  store i32 0, i32* %19, align 4
  %60 = load i64, i64* %25, align 8
  %61 = call i8* @malloc(i64 %60)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  store i64 1024, i64* %29, align 8
  store i32 0, i32* %24, align 4
  %67 = load i64, i64* %29, align 8
  %68 = call i8* @malloc(i64 %67)
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %75 = call i32 @snprintf(i8* %74, i32 9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 8, i32 1)
  %76 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %77 = call i8* @strlen(i8* %76)
  %78 = ptrtoint i8* %77 to i64
  store i64 %78, i64* %28, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %31, align 8
  br label %79

79:                                               ; preds = %390, %73
  %80 = load i8*, i8** %5, align 8
  %81 = call i8* @strchr(i8* %80, i8 signext 44)
  store i8* %81, i8** %6, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  store i8 0, i8* %85, align 1
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = call i32 (...) @usage()
  br label %93

93:                                               ; preds = %91, %84
  br label %94

94:                                               ; preds = %93, %79
  %95 = load i8*, i8** %5, align 8
  %96 = call i8* @strchr(i8* %95, i8 signext 58)
  store i8* %96, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99, %94
  %106 = call i32 (...) @usage()
  br label %107

107:                                              ; preds = %105, %99
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %10, align 8
  store i8 0, i8* %108, align 1
  %110 = load i8*, i8** %10, align 8
  %111 = call i8* @strchr(i8* %110, i8 signext 35)
  store i8* %111, i8** %13, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %129

114:                                              ; preds = %107
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %114
  %121 = load i8*, i8** %13, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = icmp ule i8* %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120, %114
  %125 = call i32 (...) @usage()
  br label %126

126:                                              ; preds = %124, %120
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %13, align 8
  store i8 0, i8* %127, align 1
  br label %129

129:                                              ; preds = %126, %107
  %130 = load i8*, i8** %10, align 8
  %131 = call i8* @strlen(i8* %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %23, align 4
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %23, align 4
  %135 = add nsw i32 %133, %134
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %27, align 8
  %139 = icmp ugt i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %129
  %141 = load i64, i64* %27, align 8
  %142 = mul i64 %141, 2
  store i64 %142, i64* %27, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i64, i64* %27, align 8
  %145 = call i8* @realloc(i8* %143, i64 %144)
  store i8* %145, i8** %9, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %140
  br label %151

151:                                              ; preds = %150, %129
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* %21, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8*, i8** %10, align 8
  %157 = call i32 @strcpy(i8* %155, i8* %156)
  %158 = load i32, i32* %23, align 4
  %159 = add nsw i32 %158, 1
  %160 = load i32, i32* %21, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %21, align 4
  %162 = load i8*, i8** %13, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %151
  %165 = load i8*, i8** %13, align 8
  %166 = call i8* @strlen(i8* %165)
  %167 = ptrtoint i8* %166 to i32
  store i32 %167, i32* %23, align 4
  br label %169

168:                                              ; preds = %151
  store i32 0, i32* %23, align 4
  br label %169

169:                                              ; preds = %168, %164
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* %23, align 4
  %172 = add nsw i32 %170, %171
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %29, align 8
  %176 = icmp ugt i64 %174, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %169
  %178 = load i64, i64* %29, align 8
  %179 = mul i64 %178, 2
  store i64 %179, i64* %29, align 8
  %180 = load i8*, i8** %12, align 8
  %181 = load i64, i64* %29, align 8
  %182 = call i8* @realloc(i8* %180, i64 %181)
  store i8* %182, i8** %12, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %177
  br label %188

188:                                              ; preds = %187, %169
  %189 = load i8*, i8** %13, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load i8*, i8** %12, align 8
  %193 = load i32, i32* %24, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8*, i8** %13, align 8
  %197 = call i32 @strcpy(i8* %195, i8* %196)
  br label %203

198:                                              ; preds = %188
  %199 = load i8*, i8** %12, align 8
  %200 = load i32, i32* %24, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  store i8 0, i8* %202, align 1
  br label %203

203:                                              ; preds = %198, %191
  %204 = load i32, i32* %23, align 4
  %205 = add nsw i32 %204, 1
  %206 = load i32, i32* %24, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %24, align 4
  %208 = load %struct.addrinfo*, %struct.addrinfo** %31, align 8
  %209 = icmp ne %struct.addrinfo* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = load %struct.addrinfo*, %struct.addrinfo** %31, align 8
  %212 = call i32 @freeaddrinfo(%struct.addrinfo* %211)
  br label %213

213:                                              ; preds = %210, %203
  %214 = call i32 @memset(%struct.addrinfo* %30, i32 0, i32 56)
  %215 = load i32, i32* @AI_CANONNAME, align 4
  %216 = load i32, i32* @AI_ADDRCONFIG, align 4
  %217 = or i32 %215, %216
  %218 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 0
  store i32 %217, i32* %218, align 8
  %219 = load i64, i64* @PF_UNSPEC, align 8
  %220 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 1
  store i64 %219, i64* %220, align 8
  %221 = load i32, i32* @SOCK_STREAM, align 4
  %222 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 7
  store i32 %221, i32* %222, align 4
  %223 = load i32, i32* @IPPROTO_TCP, align 4
  %224 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 6
  store i32 %223, i32* %224, align 8
  %225 = load i8*, i8** %5, align 8
  %226 = call i32 @getaddrinfo(i8* %225, i32* null, %struct.addrinfo* %30, %struct.addrinfo** %31)
  store i32 %226, i32* %17, align 4
  %227 = load i32, i32* %17, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %213
  %230 = load i8*, i8** %5, align 8
  %231 = load i32, i32* %17, align 4
  %232 = call i32 @gai_strerror(i32 %231)
  %233 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %230, i32 %232)
  br label %234

234:                                              ; preds = %229, %213
  store i8* null, i8** %16, align 8
  %235 = load %struct.addrinfo*, %struct.addrinfo** %31, align 8
  store %struct.addrinfo* %235, %struct.addrinfo** %32, align 8
  br label %236

236:                                              ; preds = %297, %234
  %237 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  %238 = icmp ne %struct.addrinfo* %237, null
  br i1 %238, label %239, label %301

239:                                              ; preds = %236
  %240 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  %241 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %240, i32 0, i32 4
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @AF_INET, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %264

247:                                              ; preds = %239
  %248 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  %249 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = icmp ult i64 %251, 8
  br i1 %252, label %253, label %255

253:                                              ; preds = %247
  %254 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %255

255:                                              ; preds = %253, %247
  %256 = bitcast %struct.sockaddr_in* %33 to %struct.sockaddr_in6*
  %257 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  %258 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %257, i32 0, i32 4
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = call i32 @memcpy(%struct.sockaddr_in6* %256, %struct.TYPE_2__* %259, i32 8)
  %261 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @inet_ntoa(i32 %262)
  store i8* %263, i8** %16, align 8
  br label %301

264:                                              ; preds = %239
  %265 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  %266 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @AF_INET6, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %295

270:                                              ; preds = %264
  %271 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  %272 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = icmp ult i64 %274, 8
  br i1 %275, label %276, label %278

276:                                              ; preds = %270
  %277 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %270
  %279 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  %280 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %279, i32 0, i32 4
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = call i32 @memcpy(%struct.sockaddr_in6* %34, %struct.TYPE_2__* %281, i32 8)
  %283 = load i64, i64* @AF_INET6, align 8
  %284 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %34, i32 0, i32 0
  %285 = trunc i64 %36 to i32
  %286 = call i8* @inet_ntop(i64 %283, i32* %284, i8* %38, i32 %285)
  store i8* %286, i8** %16, align 8
  %287 = load i8*, i8** %16, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %294

289:                                              ; preds = %278
  %290 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %34, i32 0, i32 0
  %291 = call i32 @IN6_IS_ADDR_LINKLOCAL(i32* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %289
  br label %301

294:                                              ; preds = %289, %278
  br label %295

295:                                              ; preds = %294, %264
  br label %296

296:                                              ; preds = %295
  br label %297

297:                                              ; preds = %296
  %298 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  %299 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %298, i32 0, i32 5
  %300 = load %struct.addrinfo*, %struct.addrinfo** %299, align 8
  store %struct.addrinfo* %300, %struct.addrinfo** %32, align 8
  br label %236

301:                                              ; preds = %293, %255, %236
  %302 = load i8*, i8** %16, align 8
  %303 = icmp eq i8* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i8*, i8** %5, align 8
  %306 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %305)
  br label %307

307:                                              ; preds = %304, %301
  %308 = load i8*, i8** %16, align 8
  %309 = call i8* @strlen(i8* %308)
  %310 = ptrtoint i8* %309 to i32
  store i32 %310, i32* %18, align 4
  %311 = load i32, i32* %19, align 4
  %312 = load i32, i32* %18, align 4
  %313 = add nsw i32 %311, %312
  %314 = sext i32 %313 to i64
  %315 = load i64, i64* %28, align 8
  %316 = add i64 %314, %315
  %317 = add i64 %316, 1
  %318 = load i64, i64* %25, align 8
  %319 = icmp ugt i64 %317, %318
  br i1 %319, label %320, label %331

320:                                              ; preds = %307
  %321 = load i64, i64* %25, align 8
  %322 = mul i64 %321, 2
  store i64 %322, i64* %25, align 8
  %323 = load i8*, i8** %7, align 8
  %324 = load i64, i64* %25, align 8
  %325 = call i8* @realloc(i8* %323, i64 %324)
  store i8* %325, i8** %7, align 8
  %326 = load i8*, i8** %7, align 8
  %327 = icmp eq i8* %326, null
  br i1 %327, label %328, label %330

328:                                              ; preds = %320
  %329 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %330

330:                                              ; preds = %328, %320
  br label %331

331:                                              ; preds = %330, %307
  %332 = load i8*, i8** %7, align 8
  %333 = load i32, i32* %19, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %332, i64 %334
  %336 = load i8*, i8** %16, align 8
  %337 = call i32 @strcpy(i8* %335, i8* %336)
  %338 = load i8*, i8** %7, align 8
  %339 = load i32, i32* %19, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %338, i64 %340
  %342 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %343 = call i32 @strcat(i8* %341, i8* %342)
  %344 = load i32, i32* %18, align 4
  %345 = sext i32 %344 to i64
  %346 = load i64, i64* %28, align 8
  %347 = add i64 %345, %346
  %348 = add i64 %347, 1
  %349 = load i32, i32* %19, align 4
  %350 = sext i32 %349 to i64
  %351 = add i64 %350, %348
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %19, align 4
  %353 = load %struct.addrinfo*, %struct.addrinfo** %31, align 8
  %354 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %353, i32 0, i32 3
  %355 = load i8*, i8** %354, align 8
  %356 = call i8* @strlen(i8* %355)
  %357 = ptrtoint i8* %356 to i32
  store i32 %357, i32* %22, align 4
  %358 = load i32, i32* %20, align 4
  %359 = load i32, i32* %22, align 4
  %360 = add nsw i32 %358, %359
  %361 = add nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = load i64, i64* %26, align 8
  %364 = icmp ugt i64 %362, %363
  br i1 %364, label %365, label %376

365:                                              ; preds = %331
  %366 = load i64, i64* %26, align 8
  %367 = mul i64 %366, 2
  store i64 %367, i64* %26, align 8
  %368 = load i8*, i8** %8, align 8
  %369 = load i64, i64* %26, align 8
  %370 = call i8* @realloc(i8* %368, i64 %369)
  store i8* %370, i8** %8, align 8
  %371 = load i8*, i8** %8, align 8
  %372 = icmp eq i8* %371, null
  br i1 %372, label %373, label %375

373:                                              ; preds = %365
  %374 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %375

375:                                              ; preds = %373, %365
  br label %376

376:                                              ; preds = %375, %331
  %377 = load i8*, i8** %8, align 8
  %378 = load i32, i32* %20, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, i8* %377, i64 %379
  %381 = load %struct.addrinfo*, %struct.addrinfo** %31, align 8
  %382 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %381, i32 0, i32 3
  %383 = load i8*, i8** %382, align 8
  %384 = call i32 @strcpy(i8* %380, i8* %383)
  %385 = load i32, i32* %22, align 4
  %386 = add nsw i32 %385, 1
  %387 = load i32, i32* %20, align 4
  %388 = add nsw i32 %387, %386
  store i32 %388, i32* %20, align 4
  %389 = load i8*, i8** %6, align 8
  store i8* %389, i8** %5, align 8
  br label %390

390:                                              ; preds = %376
  %391 = load i8*, i8** %5, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %79, label %393

393:                                              ; preds = %390
  %394 = load i8*, i8** %7, align 8
  %395 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %396 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %395, i32 0, i32 0
  store i8* %394, i8** %396, align 8
  %397 = load i32, i32* %19, align 4
  %398 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %399 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %398, i32 0, i32 1
  store i32 %397, i32* %399, align 8
  %400 = load i8*, i8** %8, align 8
  %401 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %402 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %401, i32 0, i32 2
  store i8* %400, i8** %402, align 8
  %403 = load i32, i32* %20, align 4
  %404 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %405 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %404, i32 0, i32 3
  store i32 %403, i32* %405, align 8
  %406 = load i8*, i8** %9, align 8
  %407 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %408 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %407, i32 0, i32 4
  store i8* %406, i8** %408, align 8
  %409 = load i32, i32* %21, align 4
  %410 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %411 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %410, i32 0, i32 5
  store i32 %409, i32* %411, align 8
  %412 = load i8*, i8** %12, align 8
  %413 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %414 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %413, i32 0, i32 6
  store i8* %412, i8** %414, align 8
  %415 = load i32, i32* %24, align 4
  %416 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %417 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %416, i32 0, i32 7
  store i32 %415, i32* %417, align 8
  %418 = load %struct.addrinfo*, %struct.addrinfo** %31, align 8
  %419 = call i32 @freeaddrinfo(%struct.addrinfo* %418)
  %420 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %420)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i8* @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @usage(...) #2

declare dso_local i8* @realloc(i8*, i64) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @memcpy(%struct.sockaddr_in6*, %struct.TYPE_2__*, i32) #2

declare dso_local i8* @inet_ntoa(i32) #2

declare dso_local i8* @inet_ntop(i64, i32*, i8*, i32) #2

declare dso_local i32 @IN6_IS_ADDR_LINKLOCAL(i32*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
