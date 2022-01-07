; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_extract_ip_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_extract_ip_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_range = type { %struct.TYPE_4__, %struct.TYPE_3__, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.in_addr, %struct.in_addr }
%struct.in_addr = type { i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"extract IP range from %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"strdup failed\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"range is %s:%d to %s:%d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"range is %d@[%s]:%d to %d@[%s]:%d\00", align 1
@OPT_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_range*, i32)* @extract_ip_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_ip_range(%struct.ip_range* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.in_addr, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ip_range* %0, %struct.ip_range** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load i64, i64* @verbose, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %25 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %30 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @strdup(i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @usage(i32 -1)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 45)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  store i8 0, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %48 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %47, i32 0, i32 3
  store i8* inttoptr (i64 1234 to i8*), i8** %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @AF_INET6, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %54 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 7, i32* %55, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %58 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %61 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %60, i32 0, i32 3
  %62 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %63 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @extract_ipv6_addr(i8* %56, %struct.in_addr* %59, i8** %61, i32* %64)
  br label %74

66:                                               ; preds = %46
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %69 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %72 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %71, i32 0, i32 3
  %73 = call i32 @extract_ipv4_addr(i8* %67, i8** %70, i8** %72)
  br label %74

74:                                               ; preds = %66, %52
  %75 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %76 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %79 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @AF_INET6, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %121

83:                                               ; preds = %74
  %84 = load i8*, i8** %7, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %88 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %92 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %96 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %99 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %98, i32 0, i32 2
  %100 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %101 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = call i32 @extract_ipv6_addr(i8* %94, %struct.in_addr* %97, i8** %99, i32* %102)
  br label %120

104:                                              ; preds = %83
  %105 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %106 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %109 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = bitcast %struct.in_addr* %107 to i8*
  %112 = bitcast %struct.in_addr* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 8, i1 false)
  %113 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %114 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %118 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %104, %86
  br label %167

121:                                              ; preds = %74
  %122 = load i8*, i8** %7, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %158

124:                                              ; preds = %121
  %125 = load i8*, i8** %7, align 8
  %126 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %127 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %130 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %129, i32 0, i32 2
  %131 = call i32 @extract_ipv4_addr(i8* %125, i8** %128, i8** %130)
  %132 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %133 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %137 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ugt i8* %135, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %124
  %142 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %143 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %12, align 8
  %146 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %147 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %151 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i8* %149, i8** %152, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %155 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  store i8* %153, i8** %156, align 8
  br label %157

157:                                              ; preds = %141, %124
  br label %166

158:                                              ; preds = %121
  %159 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %160 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %164 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  store i8* %162, i8** %165, align 8
  br label %166

166:                                              ; preds = %158, %157
  br label %167

167:                                              ; preds = %166, %120
  %168 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %169 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %168, i32 0, i32 3
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %172 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ugt i8* %170, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %167
  %176 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %177 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  store i8* %178, i8** %12, align 8
  %179 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %180 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %183 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %182, i32 0, i32 3
  store i8* %181, i8** %183, align 8
  %184 = load i8*, i8** %12, align 8
  %185 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %186 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %185, i32 0, i32 2
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %175, %167
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @AF_INET, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %210

191:                                              ; preds = %187
  %192 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %193 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = call i8* @htonl(i8* %195)
  %197 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i8* %196, i8** %197, align 8
  %198 = load i32, i32* %5, align 4
  %199 = trunc i64 %15 to i32
  %200 = call i32 @inet_ntop(i32 %198, %struct.in_addr* %11, i8* %17, i32 %199)
  %201 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %202 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = call i8* @htonl(i8* %204)
  %206 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i8* %205, i8** %206, align 8
  %207 = load i32, i32* %5, align 4
  %208 = trunc i64 %19 to i32
  %209 = call i32 @inet_ntop(i32 %207, %struct.in_addr* %11, i8* %20, i32 %208)
  br label %223

210:                                              ; preds = %187
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %213 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 3
  %215 = trunc i64 %15 to i32
  %216 = call i32 @inet_ntop(i32 %211, %struct.in_addr* %214, i8* %17, i32 %215)
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %219 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  %221 = trunc i64 %19 to i32
  %222 = call i32 @inet_ntop(i32 %217, %struct.in_addr* %220, i8* %20, i32 %221)
  br label %223

223:                                              ; preds = %210, %191
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @AF_INET, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %223
  %228 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %229 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %228, i32 0, i32 3
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %232 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %17, i8* %230, i8* %20, i8* %233)
  br label %251

235:                                              ; preds = %223
  %236 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %237 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %241 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %244 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %248 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %247, i32 0, i32 2
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %239, i8* %17, i8* %242, i32 %246, i8* %20, i8* %249)
  br label %251

251:                                              ; preds = %235, %227
  %252 = load i8*, i8** %6, align 8
  %253 = call i32 @free(i8* %252)
  %254 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %255 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %254, i32 0, i32 3
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %258 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %257, i32 0, i32 2
  %259 = load i8*, i8** %258, align 8
  %260 = icmp ne i8* %256, %259
  br i1 %260, label %288, label %261

261:                                              ; preds = %251
  %262 = load i32, i32* %5, align 4
  %263 = load i32, i32* @AF_INET, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %261
  %266 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %267 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %271 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = icmp ne i8* %269, %273
  br i1 %274, label %288, label %275

275:                                              ; preds = %265, %261
  %276 = load i32, i32* %5, align 4
  %277 = load i32, i32* @AF_INET6, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %290

279:                                              ; preds = %275
  %280 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %281 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 3
  %283 = load %struct.ip_range*, %struct.ip_range** %4, align 8
  %284 = getelementptr inbounds %struct.ip_range, %struct.ip_range* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 2
  %286 = call i32 @IN6_ARE_ADDR_EQUAL(%struct.in_addr* %282, %struct.in_addr* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %279, %265, %251
  %289 = load i32, i32* @OPT_COPY, align 4
  store i32 %289, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %291

290:                                              ; preds = %279, %275
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %291

291:                                              ; preds = %290, %288
  %292 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %292)
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @D(i8*, ...) #2

declare dso_local i8* @strdup(i32) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @extract_ipv6_addr(i8*, %struct.in_addr*, i8**, i32*) #2

declare dso_local i32 @extract_ipv4_addr(i8*, i8**, i8**) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @htonl(i8*) #2

declare dso_local i32 @inet_ntop(i32, %struct.in_addr*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(%struct.in_addr*, %struct.in_addr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
