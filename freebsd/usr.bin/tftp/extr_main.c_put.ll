; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }

@MAXLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"send \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(file) \00", align 1
@stdin = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@connected = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"No target machine specified.\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@options = common dso_local global %struct.TYPE_2__* null, align 8
@OPT_TSIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"putting %s to %s:%s [%s]\0A\00", align 1
@hostname = common dso_local global i8* null, align 8
@mode = common dso_local global i8* null, align 8
@peer = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %14 = load i32, i32* @MAXLINE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @strlen(i8* %17)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %17, i64 %24
  %26 = call i32 @strlen(i8* %17)
  %27 = sext i32 %26 to i64
  %28 = sub i64 %15, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @stdin, align 4
  %31 = call i32 @fgets(i8* %25, i32 %29, i32 %30)
  %32 = call i32 @makeargv(i8* %17)
  %33 = load i32, i32* @margc, align 4
  store i32 %33, i32* %3, align 4
  %34 = load i8**, i8*** @margv, align 8
  store i8** %34, i8*** %4, align 8
  br label %35

35:                                               ; preds = %20, %2
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @putusage(i8* %41)
  store i32 1, i32* %12, align 4
  br label %258

43:                                               ; preds = %35
  %44 = load i8**, i8*** %4, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %8, align 8
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @strrchr(i8* %55, i8 signext 58)
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %119

58:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %78, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i8**, i8*** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @strchr(i8* %69, i8 signext 58)
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i8**, i8*** %4, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @putusage(i8* %75)
  store i32 1, i32* %12, align 4
  br label %258

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %59

81:                                               ; preds = %59
  %82 = load i8**, i8*** %4, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %13, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call i8* @strrchr(i8* %88, i8 signext 58)
  store i8* %89, i8** %8, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %8, align 8
  store i8 0, i8* %90, align 1
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 91
  br i1 %96, label %97, label %116

97:                                               ; preds = %81
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 93
  br i1 %106, label %107, label %116

107:                                              ; preds = %97
  %108 = load i8*, i8** %13, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %13, align 8
  br label %116

116:                                              ; preds = %107, %97, %81
  %117 = load i8*, i8** %13, align 8
  %118 = call i32 @setpeer0(i8* %117, i32* null)
  br label %119

119:                                              ; preds = %116, %43
  %120 = load i32, i32* @connected, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %258

124:                                              ; preds = %119
  %125 = load i32, i32* %3, align 4
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %127, label %181

127:                                              ; preds = %124
  %128 = load i32, i32* %3, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** %8, align 8
  %132 = call i8* @tail(i8* %131)
  br label %137

133:                                              ; preds = %127
  %134 = load i8**, i8*** %4, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 1
  %136 = load i8*, i8** %135, align 8
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i8* [ %132, %130 ], [ %136, %133 ]
  store i8* %138, i8** %7, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* @O_RDONLY, align 4
  %141 = call i32 @open(i8* %139, i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %145)
  store i32 1, i32* %12, align 4
  br label %258

147:                                              ; preds = %137
  %148 = load i32, i32* %5, align 4
  %149 = call i64 @fstat(i32 %148, %struct.stat* %11)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %152)
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @close(i32 %154)
  store i32 1, i32* %12, align 4
  br label %258

156:                                              ; preds = %147
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %158 = load i64, i64* @OPT_TSIZE, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @asprintf(i32* %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  %164 = load i64, i64* @verbose, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %156
  %167 = load i8*, i8** %7, align 8
  %168 = load i8*, i8** @hostname, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = load i8*, i8** @mode, align 8
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %167, i8* %168, i8* %169, i8* %170)
  br label %172

172:                                              ; preds = %166, %156
  %173 = load i32, i32* @peer, align 4
  %174 = load i32, i32* @port, align 4
  %175 = load i32, i32* %5, align 4
  %176 = load i8*, i8** %8, align 8
  %177 = load i8*, i8** @mode, align 8
  %178 = call i32 @xmitfile(i32 %173, i32 %174, i32 %175, i8* %176, i8* %177)
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @close(i32 %179)
  store i32 1, i32* %12, align 4
  br label %258

181:                                              ; preds = %124
  %182 = load i8*, i8** %8, align 8
  %183 = call i8* @strchr(i8* %182, i8 signext 0)
  store i8* %183, i8** %7, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %7, align 8
  store i8 47, i8* %184, align 1
  store i32 1, i32* %6, align 4
  br label %186

186:                                              ; preds = %254, %181
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %3, align 4
  %189 = sub nsw i32 %188, 1
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %257

191:                                              ; preds = %186
  %192 = load i8*, i8** %7, align 8
  %193 = load i8**, i8*** %4, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i8* @tail(i8* %197)
  %199 = call i32 @strcpy(i8* %192, i8* %198)
  %200 = load i8**, i8*** %4, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* @O_RDONLY, align 4
  %206 = call i32 @open(i8* %204, i32 %205)
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %191
  %210 = load i8**, i8*** %4, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %214)
  br label %254

216:                                              ; preds = %191
  %217 = load i32, i32* %5, align 4
  %218 = call i64 @fstat(i32 %217, %struct.stat* %11)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = load i8**, i8*** %4, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %225)
  br label %254

227:                                              ; preds = %216
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %229 = load i64, i64* @OPT_TSIZE, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @asprintf(i32* %231, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %233)
  %235 = load i64, i64* @verbose, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %227
  %238 = load i8**, i8*** %4, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = load i8*, i8** @hostname, align 8
  %244 = load i8*, i8** %8, align 8
  %245 = load i8*, i8** @mode, align 8
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %242, i8* %243, i8* %244, i8* %245)
  br label %247

247:                                              ; preds = %237, %227
  %248 = load i32, i32* @peer, align 4
  %249 = load i32, i32* @port, align 4
  %250 = load i32, i32* %5, align 4
  %251 = load i8*, i8** %8, align 8
  %252 = load i8*, i8** @mode, align 8
  %253 = call i32 @xmitfile(i32 %248, i32 %249, i32 %250, i8* %251, i8* %252)
  br label %254

254:                                              ; preds = %247, %220, %209
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  br label %186

257:                                              ; preds = %186
  store i32 0, i32* %12, align 4
  br label %258

258:                                              ; preds = %257, %172, %151, %144, %122, %72, %38
  %259 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %259)
  %260 = load i32, i32* %12, align 4
  switch i32 %260, label %262 [
    i32 0, label %261
    i32 1, label %261
  ]

261:                                              ; preds = %258, %258
  ret void

262:                                              ; preds = %258
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fgets(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @makeargv(i8*) #2

declare dso_local i32 @putusage(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @setpeer0(i8*, i32*) #2

declare dso_local i8* @tail(i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @asprintf(i32*, i8*, i32) #2

declare dso_local i32 @xmitfile(i32, i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
