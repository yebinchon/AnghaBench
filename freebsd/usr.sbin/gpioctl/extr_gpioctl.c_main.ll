; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gpioctl/extr_gpioctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gpioctl/extr_gpioctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"cf:lntvNp\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@GPIO_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"gpio_open\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s is also a pin name, use -p or -N\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Can't find pin named \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Invalid pin number: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"gpio_pin_set_name\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"gpio_pin_toggle\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Invalid flag: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"gpio_pin_set_flags\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"gpio_pin_get\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Invalid pin value: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"gpio_pin_set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %40, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  switch i32 %28, label %38 [
    i32 99, label %29
    i32 102, label %30
    i32 108, label %32
    i32 110, label %33
    i32 78, label %34
    i32 112, label %35
    i32 116, label %36
    i32 118, label %37
  ]

29:                                               ; preds = %27
  store i32 1, i32* %17, align 4
  br label %40

30:                                               ; preds = %27
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %9, align 8
  br label %40

32:                                               ; preds = %27
  store i32 1, i32* %18, align 4
  br label %40

33:                                               ; preds = %27
  store i32 1, i32* %19, align 4
  br label %40

34:                                               ; preds = %27
  store i32 129, i32* %12, align 4
  br label %40

35:                                               ; preds = %27
  store i32 128, i32* %12, align 4
  br label %40

36:                                               ; preds = %27
  store i32 1, i32* %20, align 4
  br label %40

37:                                               ; preds = %27
  store i32 1, i32* %21, align 4
  br label %40

38:                                               ; preds = %27
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %37, %36, %35, %34, %33, %32, %30, %29
  br label %22

41:                                               ; preds = %22
  %42 = load i64, i64* @optind, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8** %44, i8*** %5, align 8
  %45 = load i64, i64* @optind, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = call i64 @gpio_open(i32 0)
  store i64 %53, i64* %8, align 8
  br label %57

54:                                               ; preds = %41
  %55 = load i8*, i8** %9, align 8
  %56 = call i64 @gpio_open_device(i8* %55)
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %54, %52
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @GPIO_INVALID_HANDLE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %57
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* %21, align 4
  %70 = call i32 @dump_pins(i64 %68, i32 %69)
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @gpio_close(i64 %71)
  %73 = call i32 @exit(i32 0) #3
  unreachable

74:                                               ; preds = %64
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 (...) @usage()
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* %12, align 4
  switch i32 %80, label %81 [
    i32 128, label %115
    i32 129, label %128
  ]

81:                                               ; preds = %79
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @str2int(i8* %84, i32* %16)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = load i64, i64* %8, align 8
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @get_pinnum_by_name(i64 %89, i8* %92)
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %95, %88
  br label %114

101:                                              ; preds = %81
  %102 = load i64, i64* %8, align 8
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @get_pinnum_by_name(i64 %102, i8* %105)
  store i32 %106, i32* %10, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %108, %101
  br label %114

114:                                              ; preds = %113, %100
  br label %141

115:                                              ; preds = %79
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @str2int(i8* %118, i32* %16)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %115
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %122, %115
  br label %141

128:                                              ; preds = %79
  %129 = load i64, i64* %8, align 8
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @get_pinnum_by_name(i64 %129, i8* %132)
  store i32 %133, i32* %10, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %135, %128
  br label %141

141:                                              ; preds = %140, %127, %114
  %142 = load i32, i32* %19, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 2
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 (...) @usage()
  br label %149

149:                                              ; preds = %147, %144
  %150 = load i64, i64* %8, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i8**, i8*** %5, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @gpio_pin_set_name(i64 %150, i32 %151, i8* %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %159 = call i32 @exit(i32 1) #3
  unreachable

160:                                              ; preds = %149
  %161 = call i32 @exit(i32 0) #3
  unreachable

162:                                              ; preds = %141
  %163 = load i32, i32* %20, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %162
  %166 = load i32, i32* %4, align 4
  %167 = icmp sgt i32 %166, 1
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 (...) @usage()
  br label %170

170:                                              ; preds = %168, %165
  %171 = load i64, i64* %8, align 8
  %172 = load i32, i32* %10, align 4
  %173 = call i64 @gpio_pin_toggle(i64 %171, i32 %172)
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %177 = call i32 @exit(i32 1) #3
  unreachable

178:                                              ; preds = %170
  %179 = load i64, i64* %8, align 8
  %180 = call i32 @gpio_close(i64 %179)
  %181 = call i32 @exit(i32 0) #3
  unreachable

182:                                              ; preds = %162
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %226

185:                                              ; preds = %182
  store i32 0, i32* %14, align 4
  store i32 1, i32* %6, align 4
  br label %186

186:                                              ; preds = %210, %185
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %4, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %213

190:                                              ; preds = %186
  %191 = load i8**, i8*** %5, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @str2cap(i8* %195)
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %15, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %190
  %200 = load i8**, i8*** %5, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %204)
  br label %206

206:                                              ; preds = %199, %190
  %207 = load i32, i32* %15, align 4
  %208 = load i32, i32* %14, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %14, align 4
  br label %210

210:                                              ; preds = %206
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  br label %186

213:                                              ; preds = %186
  %214 = load i32, i32* %10, align 4
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %214, i32* %215, align 4
  %216 = load i32, i32* %14, align 4
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %216, i32* %217, align 4
  %218 = load i64, i64* %8, align 8
  %219 = call i64 @gpio_pin_set_flags(i64 %218, %struct.TYPE_3__* %7)
  %220 = icmp slt i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %213
  %222 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %223 = call i32 @exit(i32 1) #3
  unreachable

224:                                              ; preds = %213
  %225 = call i32 @exit(i32 0) #3
  unreachable

226:                                              ; preds = %182
  %227 = load i32, i32* %4, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %4, align 4
  %231 = icmp sgt i32 %230, 2
  br i1 %231, label %232, label %234

232:                                              ; preds = %229, %226
  %233 = call i32 (...) @usage()
  br label %234

234:                                              ; preds = %232, %229
  %235 = load i32, i32* %4, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %250

237:                                              ; preds = %234
  %238 = load i64, i64* %8, align 8
  %239 = load i32, i32* %10, align 4
  %240 = call i32 @gpio_pin_get(i64 %238, i32 %239)
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %11, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %237
  %244 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %245 = call i32 @exit(i32 1) #3
  unreachable

246:                                              ; preds = %237
  %247 = load i32, i32* %11, align 4
  %248 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %247)
  %249 = call i32 @exit(i32 0) #3
  unreachable

250:                                              ; preds = %234
  %251 = load i8**, i8*** %5, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 1
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @str2int(i8* %253, i32* %16)
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %16, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %250
  %258 = load i32, i32* %11, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %257
  %261 = load i32, i32* %11, align 4
  %262 = icmp ne i32 %261, 1
  br i1 %262, label %263, label %268

263:                                              ; preds = %260, %250
  %264 = load i8**, i8*** %5, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 1
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %263, %260, %257
  %269 = load i64, i64* %8, align 8
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %11, align 4
  %272 = call i64 @gpio_pin_set(i64 %269, i32 %270, i32 %271)
  %273 = icmp slt i64 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %276 = call i32 @exit(i32 1) #3
  unreachable

277:                                              ; preds = %268
  %278 = load i64, i64* %8, align 8
  %279 = call i32 @gpio_close(i64 %278)
  %280 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @gpio_open(i32) #1

declare dso_local i64 @gpio_open_device(i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @dump_pins(i64, i32) #1

declare dso_local i32 @gpio_close(i64) #1

declare dso_local i32 @str2int(i8*, i32*) #1

declare dso_local i32 @get_pinnum_by_name(i64, i8*) #1

declare dso_local i32 @fail(i8*, i8*) #1

declare dso_local i64 @gpio_pin_set_name(i64, i32, i8*) #1

declare dso_local i64 @gpio_pin_toggle(i64, i32) #1

declare dso_local i32 @str2cap(i8*) #1

declare dso_local i64 @gpio_pin_set_flags(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @gpio_pin_get(i64, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @gpio_pin_set(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
