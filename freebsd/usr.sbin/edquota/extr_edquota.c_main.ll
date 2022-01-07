; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotause = type { i8*, %struct.TYPE_2__, %struct.quotause* }
%struct.TYPE_2__ = type { i64, i64, i8*, i8*, i8*, i8* }

@MAXLOGNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"permission denied\00", align 1
@USRQUOTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ughtf:p:e:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot specify both -e and -p\00", align 1
@GRPQUOTA = common dso_local global i32 0, align 4
@hflag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"incorrect quota specification: %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"block soft limit\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"block hard limit\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"inode soft limit\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"inode hard limit\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"0123456789-\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"ending uid (%d) must be >= starting uid (%d) when using uid ranges\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tmpfil = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.quotause*, align 8
  %7 = alloca %struct.quotause*, align 8
  %8 = alloca %struct.quotause*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i8* null, i8** %26, align 8
  %29 = load i32, i32* @MAXLOGNAME, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %27, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %28, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %2
  %38 = call i64 (...) @getuid()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* @USRQUOTA, align 4
  store i32 %43, i32* %12, align 4
  store %struct.quotause* null, %struct.quotause** %7, align 8
  store %struct.quotause* null, %struct.quotause** %8, align 8
  store i8* null, i8** %18, align 8
  br label %44

44:                                               ; preds = %180, %42
  %45 = load i32, i32* %4, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = call i32 @getopt(i32 %45, i8** %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %25, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %181

49:                                               ; preds = %44
  %50 = load i32, i32* %25, align 4
  switch i32 %50, label %178 [
    i32 102, label %51
    i32 112, label %53
    i32 103, label %63
    i32 104, label %65
    i32 117, label %68
    i32 116, label %70
    i32 101, label %73
  ]

51:                                               ; preds = %49
  %52 = load i8*, i8** @optarg, align 8
  store i8* %52, i8** %26, align 8
  br label %180

53:                                               ; preds = %49
  %54 = load i32, i32* %22, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i8*, i8** @optarg, align 8
  store i8* %60, i8** %18, align 8
  %61 = load i32, i32* %24, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %24, align 4
  br label %180

63:                                               ; preds = %49
  %64 = load i32, i32* @GRPQUOTA, align 4
  store i32 %64, i32* %12, align 4
  br label %180

65:                                               ; preds = %49
  %66 = load i32, i32* @hflag, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @hflag, align 4
  br label %180

68:                                               ; preds = %49
  %69 = load i32, i32* @USRQUOTA, align 4
  store i32 %69, i32* %12, align 4
  br label %180

70:                                               ; preds = %49
  %71 = load i32, i32* %23, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %23, align 4
  br label %180

73:                                               ; preds = %49
  %74 = load i32, i32* %24, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 (...) @usage()
  br label %79

79:                                               ; preds = %76, %73
  %80 = call %struct.quotause* @calloc(i32 1, i32 64)
  store %struct.quotause* %80, %struct.quotause** %6, align 8
  %81 = icmp eq %struct.quotause* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i8*, i8** @optarg, align 8
  store i8* %85, i8** %21, align 8
  store i32 0, i32* %11, align 4
  %86 = load i8*, i8** @optarg, align 8
  store i8* %86, i8** %19, align 8
  br label %87

87:                                               ; preds = %162, %84
  %88 = call i8* @strsep(i8** @optarg, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %88, i8** %19, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %165

90:                                               ; preds = %87
  %91 = load i8*, i8** %19, align 8
  %92 = load i8*, i8** %21, align 8
  %93 = icmp ne i8* %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i8*, i8** %19, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 -1
  store i8 58, i8* %96, align 1
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i32, i32* %11, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i8*, i8** %19, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i32 @isdigit(i8 signext %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** %21, align 8
  %107 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  %108 = call i32 (...) @usage()
  br label %109

109:                                              ; preds = %105, %100, %97
  %110 = load i32, i32* %11, align 4
  switch i32 %110, label %157 [
    i32 0, label %111
    i32 1, label %117
    i32 2, label %127
    i32 3, label %137
    i32 4, label %147
  ]

111:                                              ; preds = %109
  %112 = load %struct.quotause*, %struct.quotause** %6, align 8
  %113 = getelementptr inbounds %struct.quotause, %struct.quotause* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %19, align 8
  %116 = call i32 @strlcpy(i8* %114, i8* %115, i32 8)
  br label %161

117:                                              ; preds = %109
  %118 = load i8*, i8** %19, align 8
  %119 = call i32 @strtoll(i8* %118, i8** %20, i32 10)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load i8*, i8** %20, align 8
  %122 = load i8, i8* %121, align 1
  %123 = call i8* @cvtblkval(i32 %120, i8 signext %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %124 = load %struct.quotause*, %struct.quotause** %6, align 8
  %125 = getelementptr inbounds %struct.quotause, %struct.quotause* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 5
  store i8* %123, i8** %126, align 8
  br label %162

127:                                              ; preds = %109
  %128 = load i8*, i8** %19, align 8
  %129 = call i32 @strtoll(i8* %128, i8** %20, i32 10)
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i8*, i8** %20, align 8
  %132 = load i8, i8* %131, align 1
  %133 = call i8* @cvtblkval(i32 %130, i8 signext %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %134 = load %struct.quotause*, %struct.quotause** %6, align 8
  %135 = getelementptr inbounds %struct.quotause, %struct.quotause* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 4
  store i8* %133, i8** %136, align 8
  br label %162

137:                                              ; preds = %109
  %138 = load i8*, i8** %19, align 8
  %139 = call i32 @strtoll(i8* %138, i8** %20, i32 10)
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i8*, i8** %20, align 8
  %142 = load i8, i8* %141, align 1
  %143 = call i8* @cvtinoval(i32 %140, i8 signext %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %144 = load %struct.quotause*, %struct.quotause** %6, align 8
  %145 = getelementptr inbounds %struct.quotause, %struct.quotause* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  store i8* %143, i8** %146, align 8
  br label %162

147:                                              ; preds = %109
  %148 = load i8*, i8** %19, align 8
  %149 = call i32 @strtoll(i8* %148, i8** %20, i32 10)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i8*, i8** %20, align 8
  %152 = load i8, i8* %151, align 1
  %153 = call i8* @cvtinoval(i32 %150, i8 signext %152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %154 = load %struct.quotause*, %struct.quotause** %6, align 8
  %155 = getelementptr inbounds %struct.quotause, %struct.quotause* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  store i8* %153, i8** %156, align 8
  br label %162

157:                                              ; preds = %109
  %158 = load i8*, i8** %21, align 8
  %159 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %158)
  %160 = call i32 (...) @usage()
  br label %161

161:                                              ; preds = %157, %111
  br label %162

162:                                              ; preds = %161, %147, %137, %127, %117
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %87

165:                                              ; preds = %87
  %166 = load %struct.quotause*, %struct.quotause** %7, align 8
  %167 = icmp eq %struct.quotause* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load %struct.quotause*, %struct.quotause** %6, align 8
  store %struct.quotause* %169, %struct.quotause** %8, align 8
  store %struct.quotause* %169, %struct.quotause** %7, align 8
  br label %175

170:                                              ; preds = %165
  %171 = load %struct.quotause*, %struct.quotause** %6, align 8
  %172 = load %struct.quotause*, %struct.quotause** %8, align 8
  %173 = getelementptr inbounds %struct.quotause, %struct.quotause* %172, i32 0, i32 2
  store %struct.quotause* %171, %struct.quotause** %173, align 8
  %174 = load %struct.quotause*, %struct.quotause** %6, align 8
  store %struct.quotause* %174, %struct.quotause** %8, align 8
  br label %175

175:                                              ; preds = %170, %168
  %176 = load i32, i32* %22, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %22, align 4
  br label %180

178:                                              ; preds = %49
  %179 = call i32 (...) @usage()
  br label %180

180:                                              ; preds = %178, %175, %70, %68, %65, %63, %59, %51
  br label %44

181:                                              ; preds = %44
  %182 = load i64, i64* @optind, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = sub nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %4, align 4
  %187 = load i64, i64* @optind, align 8
  %188 = load i8**, i8*** %5, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 %187
  store i8** %189, i8*** %5, align 8
  %190 = load i32, i32* %24, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %181
  %193 = load i32, i32* %22, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %343

195:                                              ; preds = %192, %181
  %196 = load i32, i32* %24, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %231

198:                                              ; preds = %195
  %199 = load i8*, i8** %18, align 8
  %200 = load i32, i32* %12, align 4
  %201 = call i64 @getentry(i8* %199, i32 %200)
  store i64 %201, i64* %10, align 8
  %202 = icmp eq i64 %201, -1
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = call i32 @exit(i32 1) #5
  unreachable

205:                                              ; preds = %198
  %206 = load i64, i64* %10, align 8
  %207 = load i32, i32* %12, align 4
  %208 = load i8*, i8** %26, align 8
  %209 = call %struct.quotause* @getprivs(i64 %206, i32 %207, i8* %208)
  store %struct.quotause* %209, %struct.quotause** %7, align 8
  %210 = load %struct.quotause*, %struct.quotause** %7, align 8
  %211 = icmp eq %struct.quotause* %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %205
  %213 = call i32 @exit(i32 0) #5
  unreachable

214:                                              ; preds = %205
  %215 = load %struct.quotause*, %struct.quotause** %7, align 8
  store %struct.quotause* %215, %struct.quotause** %6, align 8
  br label %216

216:                                              ; preds = %226, %214
  %217 = load %struct.quotause*, %struct.quotause** %6, align 8
  %218 = icmp ne %struct.quotause* %217, null
  br i1 %218, label %219, label %230

219:                                              ; preds = %216
  %220 = load %struct.quotause*, %struct.quotause** %6, align 8
  %221 = getelementptr inbounds %struct.quotause, %struct.quotause* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  store i64 0, i64* %222, align 8
  %223 = load %struct.quotause*, %struct.quotause** %6, align 8
  %224 = getelementptr inbounds %struct.quotause, %struct.quotause* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  store i64 0, i64* %225, align 8
  br label %226

226:                                              ; preds = %219
  %227 = load %struct.quotause*, %struct.quotause** %6, align 8
  %228 = getelementptr inbounds %struct.quotause, %struct.quotause* %227, i32 0, i32 2
  %229 = load %struct.quotause*, %struct.quotause** %228, align 8
  store %struct.quotause* %229, %struct.quotause** %6, align 8
  br label %216

230:                                              ; preds = %216
  br label %231

231:                                              ; preds = %230, %195
  br label %232

232:                                              ; preds = %332, %231
  %233 = load i32, i32* %4, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %4, align 4
  %235 = icmp sgt i32 %233, 0
  br i1 %235, label %236, label %335

236:                                              ; preds = %232
  %237 = load i8**, i8*** %5, align 8
  %238 = load i8*, i8** %237, align 8
  %239 = call i64 @strspn(i8* %238, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %240 = load i8**, i8*** %5, align 8
  %241 = load i8*, i8** %240, align 8
  %242 = call i64 @strlen(i8* %241)
  %243 = icmp eq i64 %239, %242
  br i1 %243, label %244, label %265

244:                                              ; preds = %236
  %245 = load i8**, i8*** %5, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = call i8* @strchr(i8* %246, i8 signext 45)
  store i8* %247, i8** %19, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %265

249:                                              ; preds = %244
  %250 = load i8*, i8** %19, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %19, align 8
  store i8 0, i8* %250, align 1
  %252 = load i8**, i8*** %5, align 8
  %253 = load i8*, i8** %252, align 8
  %254 = call i64 @atoi(i8* %253)
  store i64 %254, i64* %15, align 8
  %255 = load i8*, i8** %19, align 8
  %256 = call i64 @atoi(i8* %255)
  store i64 %256, i64* %16, align 8
  %257 = load i64, i64* %16, align 8
  %258 = load i64, i64* %15, align 8
  %259 = icmp slt i64 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %249
  %261 = load i64, i64* %16, align 8
  %262 = load i64, i64* %15, align 8
  %263 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0), i64 %261, i64 %262)
  br label %264

264:                                              ; preds = %260, %249
  store i32 1, i32* %13, align 4
  br label %266

265:                                              ; preds = %244, %236
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %266

266:                                              ; preds = %265, %264
  br label %267

267:                                              ; preds = %328, %266
  %268 = load i64, i64* %15, align 8
  %269 = load i64, i64* %16, align 8
  %270 = icmp sle i64 %268, %269
  br i1 %270, label %271, label %331

271:                                              ; preds = %267
  %272 = load i32, i32* %13, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = trunc i64 %30 to i32
  %276 = load i64, i64* %15, align 8
  %277 = inttoptr i64 %276 to i8*
  %278 = call i32 @snprintf(i8* %32, i32 %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %277)
  br label %284

279:                                              ; preds = %271
  %280 = trunc i64 %30 to i32
  %281 = load i8**, i8*** %5, align 8
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @snprintf(i8* %32, i32 %280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %282)
  br label %284

284:                                              ; preds = %279, %274
  %285 = load i32, i32* %12, align 4
  %286 = call i64 @getentry(i8* %32, i32 %285)
  store i64 %286, i64* %9, align 8
  %287 = icmp slt i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %284
  br label %328

289:                                              ; preds = %284
  %290 = load i32, i32* %24, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load i64, i64* %9, align 8
  %294 = load %struct.quotause*, %struct.quotause** %7, align 8
  %295 = call i32 @putprivs(i64 %293, %struct.quotause* %294)
  br label %328

296:                                              ; preds = %289
  %297 = load %struct.quotause*, %struct.quotause** %7, align 8
  store %struct.quotause* %297, %struct.quotause** %6, align 8
  br label %298

298:                                              ; preds = %323, %296
  %299 = load %struct.quotause*, %struct.quotause** %6, align 8
  %300 = icmp ne %struct.quotause* %299, null
  br i1 %300, label %301, label %327

301:                                              ; preds = %298
  %302 = load i64, i64* %9, align 8
  %303 = load i32, i32* %12, align 4
  %304 = load %struct.quotause*, %struct.quotause** %6, align 8
  %305 = getelementptr inbounds %struct.quotause, %struct.quotause* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = call %struct.quotause* @getprivs(i64 %302, i32 %303, i8* %306)
  store %struct.quotause* %307, %struct.quotause** %8, align 8
  %308 = load %struct.quotause*, %struct.quotause** %8, align 8
  %309 = icmp eq %struct.quotause* %308, null
  br i1 %309, label %310, label %311

310:                                              ; preds = %301
  br label %323

311:                                              ; preds = %301
  %312 = load %struct.quotause*, %struct.quotause** %8, align 8
  %313 = getelementptr inbounds %struct.quotause, %struct.quotause* %312, i32 0, i32 1
  %314 = load %struct.quotause*, %struct.quotause** %6, align 8
  %315 = getelementptr inbounds %struct.quotause, %struct.quotause* %314, i32 0, i32 1
  %316 = bitcast %struct.TYPE_2__* %313 to i8*
  %317 = bitcast %struct.TYPE_2__* %315 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %316, i8* align 8 %317, i64 48, i1 false)
  %318 = load i64, i64* %9, align 8
  %319 = load %struct.quotause*, %struct.quotause** %8, align 8
  %320 = call i32 @putprivs(i64 %318, %struct.quotause* %319)
  %321 = load %struct.quotause*, %struct.quotause** %8, align 8
  %322 = call i32 @freeprivs(%struct.quotause* %321)
  br label %323

323:                                              ; preds = %311, %310
  %324 = load %struct.quotause*, %struct.quotause** %6, align 8
  %325 = getelementptr inbounds %struct.quotause, %struct.quotause* %324, i32 0, i32 2
  %326 = load %struct.quotause*, %struct.quotause** %325, align 8
  store %struct.quotause* %326, %struct.quotause** %6, align 8
  br label %298

327:                                              ; preds = %298
  br label %328

328:                                              ; preds = %327, %292, %288
  %329 = load i64, i64* %15, align 8
  %330 = add nsw i64 %329, 1
  store i64 %330, i64* %15, align 8
  br label %267

331:                                              ; preds = %267
  br label %332

332:                                              ; preds = %331
  %333 = load i8**, i8*** %5, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i32 1
  store i8** %334, i8*** %5, align 8
  br label %232

335:                                              ; preds = %232
  %336 = load i32, i32* %24, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %335
  %339 = load %struct.quotause*, %struct.quotause** %7, align 8
  %340 = call i32 @freeprivs(%struct.quotause* %339)
  br label %341

341:                                              ; preds = %338, %335
  %342 = call i32 @exit(i32 0) #5
  unreachable

343:                                              ; preds = %192
  %344 = load i32, i32* @tmpfil, align 4
  %345 = load i32, i32* @O_CLOEXEC, align 4
  %346 = call i32 @mkostemp(i32 %344, i32 %345)
  store i32 %346, i32* %14, align 4
  %347 = load i32, i32* %14, align 4
  %348 = call i64 (...) @getuid()
  %349 = call i32 (...) @getgid()
  %350 = call i32 @fchown(i32 %347, i64 %348, i32 %349)
  %351 = load i32, i32* %23, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %385

353:                                              ; preds = %343
  %354 = load i32, i32* %12, align 4
  %355 = load i8*, i8** %26, align 8
  %356 = call %struct.quotause* @getprivs(i64 0, i32 %354, i8* %355)
  store %struct.quotause* %356, %struct.quotause** %7, align 8
  %357 = icmp ne %struct.quotause* %356, null
  br i1 %357, label %358, label %379

358:                                              ; preds = %353
  %359 = load %struct.quotause*, %struct.quotause** %7, align 8
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* %12, align 4
  %362 = call i64 @writetimes(%struct.quotause* %359, i32 %360, i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %376

364:                                              ; preds = %358
  %365 = load i32, i32* @tmpfil, align 4
  %366 = call i64 @editit(i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %376

368:                                              ; preds = %364
  %369 = load %struct.quotause*, %struct.quotause** %7, align 8
  %370 = load i32, i32* @tmpfil, align 4
  %371 = call i64 @readtimes(%struct.quotause* %369, i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %368
  %374 = load %struct.quotause*, %struct.quotause** %7, align 8
  %375 = call i32 @putprivs(i64 0, %struct.quotause* %374)
  br label %376

376:                                              ; preds = %373, %368, %364, %358
  %377 = load %struct.quotause*, %struct.quotause** %7, align 8
  %378 = call i32 @freeprivs(%struct.quotause* %377)
  br label %379

379:                                              ; preds = %376, %353
  %380 = load i32, i32* %14, align 4
  %381 = call i32 @close(i32 %380)
  %382 = load i32, i32* @tmpfil, align 4
  %383 = call i32 @unlink(i32 %382)
  %384 = call i32 @exit(i32 0) #5
  unreachable

385:                                              ; preds = %343
  br label %386

386:                                              ; preds = %429, %385
  %387 = load i32, i32* %4, align 4
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %434

389:                                              ; preds = %386
  %390 = load i8**, i8*** %5, align 8
  %391 = load i8*, i8** %390, align 8
  %392 = load i32, i32* %12, align 4
  %393 = call i64 @getentry(i8* %391, i32 %392)
  store i64 %393, i64* %9, align 8
  %394 = icmp eq i64 %393, -1
  br i1 %394, label %395, label %396

395:                                              ; preds = %389
  br label %429

396:                                              ; preds = %389
  %397 = load i64, i64* %9, align 8
  %398 = load i32, i32* %12, align 4
  %399 = load i8*, i8** %26, align 8
  %400 = call %struct.quotause* @getprivs(i64 %397, i32 %398, i8* %399)
  store %struct.quotause* %400, %struct.quotause** %8, align 8
  %401 = icmp eq %struct.quotause* %400, null
  br i1 %401, label %402, label %404

402:                                              ; preds = %396
  %403 = call i32 @exit(i32 1) #5
  unreachable

404:                                              ; preds = %396
  %405 = load %struct.quotause*, %struct.quotause** %8, align 8
  %406 = load i32, i32* %14, align 4
  %407 = load i8**, i8*** %5, align 8
  %408 = load i8*, i8** %407, align 8
  %409 = load i32, i32* %12, align 4
  %410 = call i64 @writeprivs(%struct.quotause* %405, i32 %406, i8* %408, i32 %409)
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %404
  br label %429

413:                                              ; preds = %404
  %414 = load i32, i32* @tmpfil, align 4
  %415 = call i64 @editit(i32 %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %426

417:                                              ; preds = %413
  %418 = load %struct.quotause*, %struct.quotause** %8, align 8
  %419 = load i32, i32* @tmpfil, align 4
  %420 = call i64 @readprivs(%struct.quotause* %418, i32 %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %417
  %423 = load i64, i64* %9, align 8
  %424 = load %struct.quotause*, %struct.quotause** %8, align 8
  %425 = call i32 @putprivs(i64 %423, %struct.quotause* %424)
  br label %426

426:                                              ; preds = %422, %417, %413
  %427 = load %struct.quotause*, %struct.quotause** %8, align 8
  %428 = call i32 @freeprivs(%struct.quotause* %427)
  br label %429

429:                                              ; preds = %426, %412, %395
  %430 = load i32, i32* %4, align 4
  %431 = add nsw i32 %430, -1
  store i32 %431, i32* %4, align 4
  %432 = load i8**, i8*** %5, align 8
  %433 = getelementptr inbounds i8*, i8** %432, i32 1
  store i8** %433, i8*** %5, align 8
  br label %386

434:                                              ; preds = %386
  %435 = load i32, i32* %14, align 4
  %436 = call i32 @close(i32 %435)
  %437 = load i32, i32* @tmpfil, align 4
  %438 = call i32 @unlink(i32 %437)
  %439 = call i32 @exit(i32 0) #5
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(...) #2

declare dso_local i64 @getuid(...) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local %struct.quotause* @calloc(i32, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @isdigit(i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strtoll(i8*, i8**, i32) #2

declare dso_local i8* @cvtblkval(i32, i8 signext, i8*) #2

declare dso_local i8* @cvtinoval(i32, i8 signext, i8*) #2

declare dso_local i64 @getentry(i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local %struct.quotause* @getprivs(i64, i32, i8*) #2

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @putprivs(i64, %struct.quotause*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @freeprivs(%struct.quotause*) #2

declare dso_local i32 @mkostemp(i32, i32) #2

declare dso_local i32 @fchown(i32, i64, i32) #2

declare dso_local i32 @getgid(...) #2

declare dso_local i64 @writetimes(%struct.quotause*, i32, i32) #2

declare dso_local i64 @editit(i32) #2

declare dso_local i64 @readtimes(%struct.quotause*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unlink(i32) #2

declare dso_local i64 @writeprivs(%struct.quotause*, i32, i8*, i32) #2

declare dso_local i64 @readprivs(%struct.quotause*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
