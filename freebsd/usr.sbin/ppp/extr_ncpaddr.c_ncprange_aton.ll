; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_aton.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncprange = type { i32, i32, i32, i8*, %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { i64 }
%struct.ncp = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"HISADDR\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@INADDR_BROADCAST = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"HISADDR6\00", align 1
@AF_INET6 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"MYADDR\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"MYADDR6\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"DNS0\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"DNS1\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"ncprange_aton: bad mask width.\0A\00", align 1
@INADDR_NONE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"ncprange_aton: %s: Bad address\0A\00", align 1
@INADDR_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncprange_aton(%struct.ncprange* %0, %struct.ncp* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ncprange*, align 8
  %6 = alloca %struct.ncp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  store %struct.ncprange* %0, %struct.ncprange** %5, align 8
  store %struct.ncp* %1, %struct.ncp** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strcspn(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ncp*, %struct.ncp** %6, align 8
  %18 = icmp ne %struct.ncp* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @strncasecmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load i8*, i8** @AF_INET, align 8
  %26 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %27 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %29 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %28, i32 0, i32 5
  %30 = load %struct.ncp*, %struct.ncp** %6, align 8
  %31 = getelementptr inbounds %struct.ncp, %struct.ncp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = bitcast %struct.TYPE_14__* %29 to i8*
  %34 = bitcast %struct.TYPE_14__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = load i8*, i8** @INADDR_BROADCAST, align 8
  %36 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %37 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %40 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %39, i32 0, i32 0
  store i32 32, i32* %40, align 8
  store i32 1, i32* %4, align 4
  br label %328

41:                                               ; preds = %19, %3
  %42 = load %struct.ncp*, %struct.ncp** %6, align 8
  %43 = icmp ne %struct.ncp* %42, null
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @strncasecmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i8*, i8** @AF_INET6, align 8
  %51 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %52 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ncp*, %struct.ncp** %6, align 8
  %54 = getelementptr inbounds %struct.ncp, %struct.ncp* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %59 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %61 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %60, i32 0, i32 1
  store i32 128, i32* %61, align 4
  store i32 1, i32* %4, align 4
  br label %328

62:                                               ; preds = %44, %41
  %63 = load %struct.ncp*, %struct.ncp** %6, align 8
  %64 = icmp ne %struct.ncp* %63, null
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @strncasecmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load i8*, i8** @AF_INET, align 8
  %72 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %73 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %75 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %74, i32 0, i32 5
  %76 = load %struct.ncp*, %struct.ncp** %6, align 8
  %77 = getelementptr inbounds %struct.ncp, %struct.ncp* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = bitcast %struct.TYPE_14__* %75 to i8*
  %80 = bitcast %struct.TYPE_14__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 8, i1 false)
  %81 = load i8*, i8** @INADDR_BROADCAST, align 8
  %82 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %83 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  %85 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %86 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %85, i32 0, i32 0
  store i32 32, i32* %86, align 8
  store i32 1, i32* %4, align 4
  br label %328

87:                                               ; preds = %65, %62
  %88 = load %struct.ncp*, %struct.ncp** %6, align 8
  %89 = icmp ne %struct.ncp* %88, null
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i64 @strncasecmp(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load i8*, i8** @AF_INET6, align 8
  %97 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %98 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.ncp*, %struct.ncp** %6, align 8
  %100 = getelementptr inbounds %struct.ncp, %struct.ncp* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %105 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %107 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %106, i32 0, i32 1
  store i32 128, i32* %107, align 4
  store i32 1, i32* %4, align 4
  br label %328

108:                                              ; preds = %90, %87
  %109 = load %struct.ncp*, %struct.ncp** %6, align 8
  %110 = icmp ne %struct.ncp* %109, null
  br i1 %110, label %111, label %136

111:                                              ; preds = %108
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i64 @strncasecmp(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %111
  %117 = load i8*, i8** @AF_INET, align 8
  %118 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %119 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %121 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %120, i32 0, i32 5
  %122 = load %struct.ncp*, %struct.ncp** %6, align 8
  %123 = getelementptr inbounds %struct.ncp, %struct.ncp* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i64 0
  %128 = bitcast %struct.TYPE_14__* %121 to i8*
  %129 = bitcast %struct.TYPE_14__* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 8, i1 false)
  %130 = load i8*, i8** @INADDR_BROADCAST, align 8
  %131 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %132 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  %134 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %135 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %134, i32 0, i32 0
  store i32 32, i32* %135, align 8
  store i32 1, i32* %4, align 4
  br label %328

136:                                              ; preds = %111, %108
  %137 = load %struct.ncp*, %struct.ncp** %6, align 8
  %138 = icmp ne %struct.ncp* %137, null
  br i1 %138, label %139, label %164

139:                                              ; preds = %136
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i64 @strncasecmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %164

144:                                              ; preds = %139
  %145 = load i8*, i8** @AF_INET, align 8
  %146 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %147 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  %148 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %149 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %148, i32 0, i32 5
  %150 = load %struct.ncp*, %struct.ncp** %6, align 8
  %151 = getelementptr inbounds %struct.ncp, %struct.ncp* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i64 1
  %156 = bitcast %struct.TYPE_14__* %149 to i8*
  %157 = bitcast %struct.TYPE_14__* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 8, i1 false)
  %158 = load i8*, i8** @INADDR_BROADCAST, align 8
  %159 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %160 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  store i8* %158, i8** %161, align 8
  %162 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %163 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %162, i32 0, i32 0
  store i32 32, i32* %163, align 8
  store i32 1, i32* %4, align 4
  br label %328

164:                                              ; preds = %139, %136
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  %172 = call i64 @alloca(i32 %171)
  %173 = inttoptr i64 %172 to i8*
  store i8* %173, i8** %12, align 8
  %174 = load i8*, i8** %12, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @strncpy(i8* %174, i8* %175, i32 %176)
  %178 = load i8*, i8** %12, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  store i8 0, i8* %181, align 1
  store i32 -1, i32* %8, align 4
  %182 = load i8*, i8** %7, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %218

189:                                              ; preds = %169
  %190 = load i8*, i8** %7, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  %195 = call i32 @strtol(i8* %194, i8** %10, i32 0)
  store i32 %195, i32* %8, align 4
  %196 = load i8*, i8** %10, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %214, label %200

200:                                              ; preds = %189
  %201 = load i8*, i8** %10, align 8
  %202 = load i8*, i8** %7, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = icmp eq i8* %201, %206
  br i1 %207, label %214, label %208

208:                                              ; preds = %200
  %209 = load i32, i32* %8, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %8, align 4
  %213 = icmp sgt i32 %212, 128
  br i1 %213, label %214, label %217

214:                                              ; preds = %211, %208, %200, %189
  %215 = load i32, i32* @LogWARN, align 4
  %216 = call i32 (i32, i8*, ...) @log_Printf(i32 %215, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %328

217:                                              ; preds = %211
  br label %218

218:                                              ; preds = %217, %169
  %219 = load i8*, i8** %7, align 8
  %220 = call i8* @strchr(i8* %219, i8 signext 58)
  store i8* %220, i8** %11, align 8
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %288

222:                                              ; preds = %218
  %223 = load i8*, i8** @AF_INET, align 8
  %224 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %225 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %224, i32 0, i32 3
  store i8* %223, i8** %225, align 8
  %226 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %227 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %226, i32 0, i32 5
  %228 = load i8*, i8** %12, align 8
  %229 = call i64 @GetIpAddr(i8* %228)
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i64 %229, i64* %230, align 8
  %231 = bitcast %struct.TYPE_14__* %227 to i8*
  %232 = bitcast %struct.TYPE_14__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %231, i8* align 8 %232, i64 8, i1 false)
  %233 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %234 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @INADDR_NONE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %222
  %240 = load i32, i32* @LogWARN, align 4
  %241 = load i8*, i8** %12, align 8
  %242 = call i32 (i32, i8*, ...) @log_Printf(i32 %240, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %241)
  store i32 0, i32* %4, align 4
  br label %328

243:                                              ; preds = %222
  %244 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %245 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @INADDR_ANY, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %243
  %251 = load i64, i64* @INADDR_ANY, align 8
  %252 = inttoptr i64 %251 to i8*
  %253 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %254 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  store i8* %252, i8** %255, align 8
  %256 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %257 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %256, i32 0, i32 0
  store i32 0, i32* %257, align 8
  br label %287

258:                                              ; preds = %243
  %259 = load i32, i32* %8, align 4
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = load i8*, i8** @INADDR_BROADCAST, align 8
  %263 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %264 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  store i8* %262, i8** %265, align 8
  %266 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %267 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %266, i32 0, i32 0
  store i32 32, i32* %267, align 8
  br label %286

268:                                              ; preds = %258
  %269 = load i32, i32* %8, align 4
  %270 = icmp sgt i32 %269, 32
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i32, i32* @LogWARN, align 4
  %273 = call i32 (i32, i8*, ...) @log_Printf(i32 %272, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %328

274:                                              ; preds = %268
  %275 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %276 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %275, i32 0, i32 4
  %277 = load i32, i32* %8, align 4
  %278 = call i8* @bits2mask4(i32 %277)
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i8* %278, i8** %279, align 8
  %280 = bitcast %struct.TYPE_13__* %276 to i8*
  %281 = bitcast %struct.TYPE_13__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %280, i8* align 8 %281, i64 8, i1 false)
  %282 = load i32, i32* %8, align 4
  %283 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %284 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  br label %285

285:                                              ; preds = %274
  br label %286

286:                                              ; preds = %285, %261
  br label %287

287:                                              ; preds = %286, %250
  store i32 1, i32* %4, align 4
  br label %328

288:                                              ; preds = %218
  %289 = load i8*, i8** %11, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  %291 = call i8* @strchr(i8* %290, i8 signext 58)
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %326

293:                                              ; preds = %288
  %294 = load i8*, i8** @AF_INET6, align 8
  %295 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %296 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %295, i32 0, i32 3
  store i8* %294, i8** %296, align 8
  %297 = load i8*, i8** @AF_INET6, align 8
  %298 = load i8*, i8** %12, align 8
  %299 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %300 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %299, i32 0, i32 2
  %301 = call i32 @inet_pton(i8* %297, i8* %298, i32* %300)
  %302 = icmp ne i32 %301, 1
  br i1 %302, label %303, label %307

303:                                              ; preds = %293
  %304 = load i32, i32* @LogWARN, align 4
  %305 = load i8*, i8** %12, align 8
  %306 = call i32 (i32, i8*, ...) @log_Printf(i32 %304, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %305)
  store i32 0, i32* %4, align 4
  br label %328

307:                                              ; preds = %293
  %308 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %309 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %308, i32 0, i32 2
  %310 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %314 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %313, i32 0, i32 1
  store i32 0, i32* %314, align 4
  br label %325

315:                                              ; preds = %307
  %316 = load i32, i32* %8, align 4
  %317 = icmp eq i32 %316, -1
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  br label %321

319:                                              ; preds = %315
  %320 = load i32, i32* %8, align 4
  br label %321

321:                                              ; preds = %319, %318
  %322 = phi i32 [ 128, %318 ], [ %320, %319 ]
  %323 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %324 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 4
  br label %325

325:                                              ; preds = %321, %312
  store i32 1, i32* %4, align 4
  br label %328

326:                                              ; preds = %288
  br label %327

327:                                              ; preds = %326
  store i32 0, i32* %4, align 4
  br label %328

328:                                              ; preds = %327, %325, %303, %287, %271, %239, %214, %144, %116, %95, %70, %49, %24
  %329 = load i32, i32* %4, align 4
  ret i32 %329
}

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @GetIpAddr(i8*) #1

declare dso_local i8* @bits2mask4(i32) #1

declare dso_local i32 @inet_pton(i8*, i8*, i32*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
