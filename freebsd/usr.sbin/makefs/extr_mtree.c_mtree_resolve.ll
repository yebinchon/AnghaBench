; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_mtree_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_mtree_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@EINVAL = common dso_local global i8* null, align 8
@errno = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c".CURDIR\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".PROG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @mtree_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mtree_resolve(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %8, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** @EINVAL, align 8
  store i8* %22, i8** @errno, align 8
  store i8* null, i8** %3, align 8
  br label %281

23:                                               ; preds = %2
  %24 = load i64, i64* %12, align 8
  %25 = icmp ugt i64 %24, 1
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %12, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %30, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  br label %44

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i32 [ %42, %38 ], [ 0, %43 ]
  br label %47

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 96
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 96
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 34
  br label %59

59:                                               ; preds = %56, %47
  %60 = phi i1 [ true, %47 ], [ %58, %56 ]
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %66, 39
  br label %68

68:                                               ; preds = %65, %59
  %69 = phi i1 [ true, %59 ], [ %67, %65 ]
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = call i8* @estrdup(i8* %78)
  store i8* %79, i8** %7, align 8
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %12, align 8
  %85 = sub i64 %84, 2
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %82, %74
  %88 = load i8*, i8** %7, align 8
  store i8* %88, i8** %3, align 8
  br label %281

89:                                               ; preds = %68
  %90 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %90, %struct.sbuf** %6, align 8
  %91 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %92 = icmp eq %struct.sbuf* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i8*, i8** @ENOMEM, align 8
  store i8* %94, i8** @errno, align 8
  store i8* null, i8** %3, align 8
  br label %281

95:                                               ; preds = %89
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  store i8* %97, i8** %9, align 8
  %98 = load i64, i64* %12, align 8
  %99 = sub i64 %98, 2
  store i64 %99, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %100

100:                                              ; preds = %256, %194, %153, %108, %95
  %101 = load i64, i64* %12, align 8
  %102 = icmp ugt i64 %101, 0
  br i1 %102, label %103, label %259

103:                                              ; preds = %100
  %104 = load i8*, i8** %9, align 8
  %105 = call i8* @strchr(i8* %104, i8 signext 36)
  store i8* %105, i8** %10, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %12, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @sbuf_bcat(%struct.sbuf* %109, i8* %110, i32 %112)
  %114 = load i64, i64* %12, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %116, i8** %9, align 8
  store i64 0, i64* %12, align 8
  br label %100

117:                                              ; preds = %103
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 92
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 -1
  store i8* %125, i8** %10, align 8
  br label %126

126:                                              ; preds = %123, %117
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = icmp ne i8* %127, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  %131 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = call i32 @sbuf_bcat(%struct.sbuf* %131, i8* %132, i32 %138)
  %140 = load i8*, i8** %10, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = load i64, i64* %12, align 8
  %146 = sub i64 %145, %144
  store i64 %146, i64* %12, align 8
  %147 = load i8*, i8** %10, align 8
  store i8* %147, i8** %9, align 8
  br label %148

148:                                              ; preds = %130, %126
  %149 = load i8*, i8** %10, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 92
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %155 = call i32 @sbuf_putc(%struct.sbuf* %154, i8 signext 36)
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  store i8* %157, i8** %9, align 8
  %158 = load i64, i64* %12, align 8
  %159 = sub i64 %158, 2
  store i64 %159, i64* %12, align 8
  br label %100

160:                                              ; preds = %148
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %9, align 8
  %163 = load i64, i64* %12, align 8
  %164 = add i64 %163, -1
  store i64 %164, i64* %12, align 8
  %165 = load i8*, i8** %9, align 8
  store i8* %165, i8** %11, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 123
  br i1 %169, label %170, label %178

170:                                              ; preds = %160
  %171 = load i8*, i8** %11, align 8
  %172 = call i8* @strchr(i8* %171, i8 signext 125)
  store i8* %172, i8** %10, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i8*, i8** %11, align 8
  store i8* %176, i8** %10, align 8
  br label %177

177:                                              ; preds = %175, %170
  br label %180

178:                                              ; preds = %160
  %179 = load i8*, i8** %11, align 8
  store i8* %179, i8** %10, align 8
  br label %180

180:                                              ; preds = %178, %177
  %181 = load i8*, i8** %10, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load i8*, i8** %9, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = load i64, i64* %12, align 8
  %188 = sub i64 %187, %186
  store i64 %188, i64* %12, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  store i8* %190, i8** %9, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = load i8*, i8** %10, align 8
  %193 = icmp eq i8* %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %180
  %195 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = load i8, i8* %196, align 1
  %198 = call i32 @sbuf_putc(%struct.sbuf* %195, i8 signext %197)
  br label %100

199:                                              ; preds = %180
  %200 = load i8*, i8** @ENOMEM, align 8
  %201 = ptrtoint i8* %200 to i32
  store i32 %201, i32* %14, align 4
  %202 = load i8*, i8** %10, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = ptrtoint i8* %202 to i64
  %205 = ptrtoint i8* %203 to i64
  %206 = sub i64 %204, %205
  %207 = trunc i64 %206 to i32
  %208 = call i8* @ecalloc(i32 %207, i32 1)
  store i8* %208, i8** %8, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = load i8*, i8** %11, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  %212 = load i8*, i8** %10, align 8
  %213 = load i8*, i8** %11, align 8
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = sub nsw i64 %216, 1
  %218 = trunc i64 %217 to i32
  %219 = call i32 @memcpy(i8* %209, i8* %211, i32 %218)
  %220 = load i8*, i8** %8, align 8
  %221 = call i64 @strcmp(i8* %220, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %199
  %224 = call i8* @getcwd(i32* null, i32 0)
  store i8* %224, i8** %7, align 8
  %225 = load i8*, i8** %7, align 8
  %226 = icmp eq i8* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  br label %259

228:                                              ; preds = %223
  br label %247

229:                                              ; preds = %199
  %230 = load i8*, i8** %8, align 8
  %231 = call i64 @strcmp(i8* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = call i8* (...) @getprogname()
  %235 = call i8* @estrdup(i8* %234)
  store i8* %235, i8** %7, align 8
  br label %246

236:                                              ; preds = %229
  %237 = load i8*, i8** %8, align 8
  %238 = call i8* @getenv(i8* %237)
  store i8* %238, i8** %11, align 8
  %239 = load i8*, i8** %11, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load i8*, i8** %11, align 8
  %243 = call i8* @estrdup(i8* %242)
  store i8* %243, i8** %7, align 8
  br label %245

244:                                              ; preds = %236
  store i8* null, i8** %7, align 8
  br label %245

245:                                              ; preds = %244, %241
  br label %246

246:                                              ; preds = %245, %233
  br label %247

247:                                              ; preds = %246, %228
  store i32 0, i32* %14, align 4
  %248 = load i8*, i8** %7, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %252 = load i8*, i8** %7, align 8
  %253 = call i32 @sbuf_cat(%struct.sbuf* %251, i8* %252)
  %254 = load i8*, i8** %7, align 8
  %255 = call i32 @free(i8* %254)
  br label %256

256:                                              ; preds = %250, %247
  %257 = load i8*, i8** %8, align 8
  %258 = call i32 @free(i8* %257)
  store i8* null, i8** %8, align 8
  br label %100

259:                                              ; preds = %227, %100
  %260 = load i8*, i8** %8, align 8
  %261 = call i32 @free(i8* %260)
  %262 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %263 = call i32 @sbuf_finish(%struct.sbuf* %262)
  %264 = load i32, i32* %14, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %259
  %267 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %268 = call i32 @sbuf_data(%struct.sbuf* %267)
  %269 = call i8* @strdup(i32 %268)
  br label %271

270:                                              ; preds = %259
  br label %271

271:                                              ; preds = %270, %266
  %272 = phi i8* [ %269, %266 ], [ null, %270 ]
  store i8* %272, i8** %7, align 8
  %273 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %274 = call i32 @sbuf_delete(%struct.sbuf* %273)
  %275 = load i8*, i8** %7, align 8
  %276 = icmp eq i8* %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %271
  %278 = load i8*, i8** @ENOMEM, align 8
  store i8* %278, i8** @errno, align 8
  br label %279

279:                                              ; preds = %277, %271
  %280 = load i8*, i8** %7, align 8
  store i8* %280, i8** %3, align 8
  br label %281

281:                                              ; preds = %279, %93, %87, %21
  %282 = load i8*, i8** %3, align 8
  ret i8* %282
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @getcwd(i32*, i32) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
