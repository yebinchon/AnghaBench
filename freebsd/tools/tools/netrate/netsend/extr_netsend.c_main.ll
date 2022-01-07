; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/netsend/extr_netsend.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/netsend/extr_netsend.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._a = type { i32, i64, i64, i64, i32, i8*, %struct.TYPE_3__, %struct._a*, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.addrinfo = type { i64, %struct.addrinfo*, i32, i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Couldn't resolv %s\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"payloadsize > 32768\0A\00", align 1
@MAX_RATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"packet rate at most %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"Sending packet of payload size %ld every %jd.%09lds for %ld seconds\0A\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"socket\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._a, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = call i32 @bzero(%struct._a* %10, i64 96)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 6
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %17, %2
  %20 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 24)
  %21 = load i64, i64* @AF_UNSPEC, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @getaddrinfo(i8* %25, i32* null, %struct.addrinfo* %11, %struct.addrinfo** %12)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 -1, i32* %3, align 4
  br label %286

34:                                               ; preds = %19
  %35 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %35, %struct.addrinfo** %13, align 8
  br label %36

36:                                               ; preds = %72, %34
  %37 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %38 = icmp ne %struct.addrinfo* %37, null
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 8
  %47 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @memcpy(%struct.TYPE_4__* %46, i32 %49, i32 %52)
  %54 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %76

55:                                               ; preds = %39
  %56 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AF_INET6, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 9
  %63 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memcpy(%struct.TYPE_4__* %62, i32 %65, i32 %68)
  %70 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %76

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 1
  %75 = load %struct.addrinfo*, %struct.addrinfo** %74, align 8
  store %struct.addrinfo* %75, %struct.addrinfo** %12, align 8
  br label %36

76:                                               ; preds = %61, %45, %36
  %77 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %78 = icmp ne %struct.addrinfo* %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %83)
  %85 = call i32 @exit(i32 1) #3
  unreachable

86:                                               ; preds = %76
  %87 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %88 = call i32 @freeaddrinfo(%struct.addrinfo* %87)
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @strtoul(i8* %91, i8** %9, i32 10)
  %93 = ptrtoint i8* %92 to i64
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp slt i64 %94, 1
  br i1 %95, label %99, label %96

96:                                               ; preds = %86
  %97 = load i64, i64* %8, align 8
  %98 = icmp sgt i64 %97, 65535
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %86
  %100 = call i32 (...) @usage()
  br label %101

101:                                              ; preds = %99, %96
  %102 = load i8*, i8** %9, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i8*, i8** %9, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 45
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 (...) @usage()
  br label %113

113:                                              ; preds = %111, %106, %101
  %114 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i64, i64* %8, align 8
  %119 = call i8* @htons(i64 %118)
  %120 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 9
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  br label %127

122:                                              ; preds = %113
  %123 = load i64, i64* %8, align 8
  %124 = call i8* @htons(i64 %123)
  %125 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %122, %117
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 2
  store i64 %128, i64* %129, align 8
  %130 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 45
  br i1 %134, label %135, label %152

135:                                              ; preds = %127
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = call i8* @strtoul(i8* %137, i8** %9, i32 10)
  %139 = ptrtoint i8* %138 to i64
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %140, %142
  br i1 %143, label %147, label %144

144:                                              ; preds = %135
  %145 = load i64, i64* %8, align 8
  %146 = icmp sgt i64 %145, 65535
  br i1 %146, label %147, label %149

147:                                              ; preds = %144, %135
  %148 = call i32 (...) @usage()
  br label %149

149:                                              ; preds = %147, %144
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 2
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %149, %127
  %153 = load i8**, i8*** %5, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 3
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* @strtoul(i8* %155, i8** %9, i32 10)
  %157 = ptrtoint i8* %156 to i64
  store i64 %157, i64* %7, align 8
  %158 = load i64, i64* %7, align 8
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %152
  %161 = load i8*, i8** %9, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160, %152
  %166 = call i32 (...) @usage()
  br label %167

167:                                              ; preds = %165, %160
  %168 = load i64, i64* %7, align 8
  %169 = icmp sgt i64 %168, 32768
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* @stderr, align 4
  %172 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %286

173:                                              ; preds = %167
  %174 = load i64, i64* %7, align 8
  %175 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 3
  store i64 %174, i64* %175, align 8
  %176 = load i8**, i8*** %5, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 4
  %178 = load i8*, i8** %177, align 8
  %179 = call i8* @strtoul(i8* %178, i8** %9, i32 10)
  %180 = ptrtoint i8* %179 to i64
  store i64 %180, i64* %6, align 8
  %181 = load i64, i64* %6, align 8
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %173
  %184 = load i8*, i8** %9, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %183, %173
  %189 = call i32 (...) @usage()
  br label %190

190:                                              ; preds = %188, %183
  %191 = load i64, i64* %6, align 8
  %192 = load i64, i64* @MAX_RATE, align 8
  %193 = icmp sgt i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i32, i32* @stderr, align 4
  %196 = load i64, i64* @MAX_RATE, align 8
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %195, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %196)
  store i32 -1, i32* %3, align 4
  br label %286

198:                                              ; preds = %190
  %199 = load i8**, i8*** %5, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 5
  %201 = load i8*, i8** %200, align 8
  %202 = call i8* @strtoul(i8* %201, i8** %9, i32 10)
  %203 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 5
  store i8* %202, i8** %203, align 8
  %204 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 5
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ult i8* %205, null
  br i1 %206, label %212, label %207

207:                                              ; preds = %198
  %208 = load i8*, i8** %9, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207, %198
  %213 = call i32 (...) @usage()
  br label %214

214:                                              ; preds = %212, %207
  %215 = load i64, i64* %7, align 8
  %216 = call %struct._a* @malloc(i64 %215)
  %217 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 7
  store %struct._a* %216, %struct._a** %217, align 8
  %218 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 7
  %219 = load %struct._a*, %struct._a** %218, align 8
  %220 = icmp eq %struct._a* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  %222 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %286

223:                                              ; preds = %214
  %224 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 7
  %225 = load %struct._a*, %struct._a** %224, align 8
  %226 = load i64, i64* %7, align 8
  %227 = call i32 @bzero(%struct._a* %225, i64 %226)
  %228 = load i64, i64* %6, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  store i32 0, i32* %232, align 8
  %233 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  store i32 0, i32* %234, align 4
  br label %252

235:                                              ; preds = %223
  %236 = load i64, i64* %6, align 8
  %237 = icmp eq i64 %236, 1
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 6
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  store i32 1, i32* %240, align 8
  %241 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 6
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 1
  store i32 0, i32* %242, align 4
  br label %251

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  store i32 0, i32* %245, align 8
  %246 = load i64, i64* %6, align 8
  %247 = sdiv i64 1000000000, %246
  %248 = trunc i64 %247 to i32
  %249 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 6
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 4
  br label %251

251:                                              ; preds = %243, %238
  br label %252

252:                                              ; preds = %251, %230
  %253 = load i64, i64* %7, align 8
  %254 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 6
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 6
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 5
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i64 %253, i32 %256, i32 %259, i8* %261)
  %263 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %252
  %267 = load i32, i32* @PF_INET6, align 4
  %268 = load i32, i32* @SOCK_DGRAM, align 4
  %269 = call i8* @socket(i32 %267, i32 %268, i32 0)
  %270 = ptrtoint i8* %269 to i32
  %271 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 4
  store i32 %270, i32* %271, align 8
  br label %278

272:                                              ; preds = %252
  %273 = load i32, i32* @PF_INET, align 4
  %274 = load i32, i32* @SOCK_DGRAM, align 4
  %275 = call i8* @socket(i32 %273, i32 %274, i32 0)
  %276 = ptrtoint i8* %275 to i32
  %277 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 4
  store i32 %276, i32* %277, align 8
  br label %278

278:                                              ; preds = %272, %266
  %279 = getelementptr inbounds %struct._a, %struct._a* %10, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, -1
  br i1 %281, label %282, label %284

282:                                              ; preds = %278
  %283 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %286

284:                                              ; preds = %278
  %285 = call i32 @timing_loop(%struct._a* %10)
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %284, %282, %221, %194, %170, %28
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i32 @bzero(%struct._a*, i64) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local %struct._a* @malloc(i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, i64, i32, i32, i8*) #1

declare dso_local i8* @socket(i32, i32, i32) #1

declare dso_local i32 @timing_loop(%struct._a*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
