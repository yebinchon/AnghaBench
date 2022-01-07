; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pwm/extr_pwm.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pwm/extr_pwm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_state = type { i32, i32, i32 }

@PWMGETSTATE = common dso_local global i64 0, align 8
@PWMSETSTATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"f:EDCp:d:\00", align 1
@PWM_DISABLE = common dso_local global i32 0, align 4
@PWM_SHOW_CONFIG = common dso_local global i32 0, align 4
@PWM_ENABLE = common dso_local global i32 0, align 4
@PWM_PERIOD = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@PWM_DUTY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid duty percentage\0A\00", align 1
@device_name = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"pwm: cannot open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"can't limit stdio rights\00", align 1
@CAP_IOCTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"cap_right_limit() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"caph_ioctls_limit() failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to enter capability mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Cannot get current state of the pwm controller\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"period: %u\0Aduty: %u\0Aenabled:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Cannot configure the pwm controller\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.pwm_state, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i64], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %17 = load i64, i64* @PWMGETSTATE, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 1
  %19 = load i64, i64* @PWMSETSTATE, align 8
  store i64 %19, i64* %18, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %8, align 4
  br label %20

20:                                               ; preds = %115, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %11, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %116

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %115 [
    i32 69, label %27
    i32 68, label %40
    i32 67, label %53
    i32 112, label %60
    i32 100, label %73
    i32 102, label %110
    i32 63, label %113
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PWM_DISABLE, align 4
  %30 = load i32, i32* @PWM_SHOW_CONFIG, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 (...) @usage()
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32, i32* @PWM_ENABLE, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %115

40:                                               ; preds = %25
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @PWM_ENABLE, align 4
  %43 = load i32, i32* @PWM_SHOW_CONFIG, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %40
  %50 = load i32, i32* @PWM_DISABLE, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %115

53:                                               ; preds = %25
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* @PWM_SHOW_CONFIG, align 4
  store i32 %59, i32* %10, align 4
  br label %115

60:                                               ; preds = %25
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @PWM_SHOW_CONFIG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (...) @usage()
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* @PWM_PERIOD, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @optarg, align 4
  %72 = call i32 @strtol(i32 %71, i8** null, i32 10)
  store i32 %72, i32* %8, align 4
  br label %115

73:                                               ; preds = %25
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @PWM_SHOW_CONFIG, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (...) @usage()
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32, i32* @PWM_DUTY, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* @optarg, align 4
  %85 = call i32 @strtol(i32 %84, i8** %14, i32 10)
  store i32 %85, i32* %9, align 4
  %86 = load i8*, i8** %14, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 37
  br i1 %89, label %90, label %101

90:                                               ; preds = %80
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = icmp sgt i32 %94, 100
  br i1 %95, label %96, label %100

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %96, %93
  br label %109

101:                                              ; preds = %80
  %102 = load i8*, i8** %14, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 (...) @usage()
  br label %108

108:                                              ; preds = %106, %101
  br label %109

109:                                              ; preds = %108, %100
  br label %115

110:                                              ; preds = %25
  store i32 1, i32* %15, align 4
  %111 = load i32, i32* @optarg, align 4
  %112 = call i32 @set_device_name(i32 %111)
  br label %115

113:                                              ; preds = %25
  %114 = call i32 (...) @usage()
  br label %115

115:                                              ; preds = %25, %113, %110, %109, %67, %58, %49, %36
  br label %20

116:                                              ; preds = %20
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 (...) @usage()
  br label %121

121:                                              ; preds = %119, %116
  %122 = load i8*, i8** @device_name, align 8
  %123 = load i32, i32* @O_RDWR, align 4
  %124 = call i32 @open(i8* %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load i32, i32* @stderr, align 4
  %128 = load i8*, i8** @device_name, align 8
  %129 = load i32, i32* @errno, align 4
  %130 = call i8* @strerror(i32 %129)
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %128, i8* %130)
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = call i32 @exit(i32 1) #3
  unreachable

136:                                              ; preds = %126
  %137 = call i32 (...) @usage()
  br label %138

138:                                              ; preds = %136
  br label %139

139:                                              ; preds = %138, %121
  %140 = call i64 (...) @caph_limit_stdio()
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* @stderr, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %246

145:                                              ; preds = %139
  %146 = call i32 (...) @caph_cache_catpages()
  %147 = load i32, i32* @CAP_IOCTL, align 4
  %148 = call i32 @cap_rights_init(i32* %12, i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = call i64 @caph_rights_limit(i32 %149, i32* %12)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, i32* @stderr, align 4
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %246

155:                                              ; preds = %145
  %156 = load i32, i32* %7, align 4
  %157 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %158 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %159 = call i32 @nitems(i64* %158)
  %160 = call i64 @caph_ioctls_limit(i32 %156, i64* %157, i32 %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i32, i32* @stderr, align 4
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %246

165:                                              ; preds = %155
  %166 = call i64 (...) @caph_enter()
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* @stderr, align 4
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %246

171:                                              ; preds = %165
  %172 = load i32, i32* %7, align 4
  %173 = load i64, i64* @PWMGETSTATE, align 8
  %174 = call i32 @ioctl(i32 %172, i64 %173, %struct.pwm_state* %6)
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* @stderr, align 4
  %178 = call i32 (i32, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %246

179:                                              ; preds = %171
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* @PWM_SHOW_CONFIG, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %185, i32 %187, i32 %189)
  br label %246

191:                                              ; preds = %179
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @PWM_ENABLE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 2
  store i32 1, i32* %197, align 4
  br label %198

198:                                              ; preds = %196, %191
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @PWM_DISABLE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 2
  store i32 0, i32* %204, align 4
  br label %205

205:                                              ; preds = %203, %198
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* @PWM_PERIOD, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32, i32* %8, align 4
  %212 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 0
  store i32 %211, i32* %212, align 4
  br label %213

213:                                              ; preds = %210, %205
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @PWM_DUTY, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %234

218:                                              ; preds = %213
  %219 = load i8*, i8** %14, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %9, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sdiv i32 %227, 100
  %229 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 1
  store i32 %228, i32* %229, align 4
  br label %233

230:                                              ; preds = %218
  %231 = load i32, i32* %9, align 4
  %232 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 1
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %230, %223
  br label %234

234:                                              ; preds = %233, %213
  %235 = load i32, i32* %7, align 4
  %236 = load i64, i64* @PWMSETSTATE, align 8
  %237 = call i32 @ioctl(i32 %235, i64 %236, %struct.pwm_state* %6)
  %238 = icmp eq i32 %237, -1
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load i32, i32* @stderr, align 4
  %241 = call i32 (i32, i8*, ...) @fprintf(i32 %240, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %246

242:                                              ; preds = %234
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @close(i32 %244)
  store i32 0, i32* %3, align 4
  br label %249

246:                                              ; preds = %239, %183, %176, %168, %162, %152, %142
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @close(i32 %247)
  store i32 1, i32* %3, align 4
  br label %249

249:                                              ; preds = %246, %243
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strtol(i32, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @set_device_name(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i64 @caph_ioctls_limit(i32, i64*, i32) #1

declare dso_local i32 @nitems(i64*) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @ioctl(i32, i64, %struct.pwm_state*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
