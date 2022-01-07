; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/led/extr_led.c_led_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/led/extr_led.c_led_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Aa\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Aj\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"jj\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"aA\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"aC\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sbuf**, i32*)* @led_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_parse(i8* %0, %struct.sbuf** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sbuf**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sbuf** %1, %struct.sbuf*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 48
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 49
  br i1 %18, label %19, label %25

19:                                               ; preds = %14, %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = and i32 %22, 1
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %237

25:                                               ; preds = %14
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  %27 = call %struct.sbuf* (...) @sbuf_new_auto()
  %28 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  store %struct.sbuf* %27, %struct.sbuf** %28, align 8
  %29 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %30 = load %struct.sbuf*, %struct.sbuf** %29, align 8
  %31 = icmp eq %struct.sbuf* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %4, align 4
  br label %237

34:                                               ; preds = %25
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %217 [
    i32 102, label %39
    i32 100, label %68
    i32 115, label %111
    i32 109, label %163
  ]

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sge i32 %43, 49
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sle i32 %49, 57
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %55, 49
  store i32 %56, i32* %8, align 4
  br label %58

57:                                               ; preds = %45, %39
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %60 = load %struct.sbuf*, %struct.sbuf** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 65, %61
  %63 = trunc i32 %62 to i8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 97, %64
  %66 = trunc i32 %65 to i8
  %67 = call i32 @sbuf_printf(%struct.sbuf* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %63, i8 signext %66)
  br label %222

68:                                               ; preds = %34
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  br label %71

71:                                               ; preds = %104, %68
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %107

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @isdigit(i8 signext %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %104

81:                                               ; preds = %75
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = sub nsw i32 %84, 48
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 10, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %81
  br label %90

90:                                               ; preds = %97, %89
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %95 = load %struct.sbuf*, %struct.sbuf** %94, align 8
  %96 = call i32 @sbuf_cat(%struct.sbuf* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %8, align 4
  br label %90

100:                                              ; preds = %90
  %101 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %102 = load %struct.sbuf*, %struct.sbuf** %101, align 8
  %103 = call i32 @sbuf_cat(%struct.sbuf* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %80
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %5, align 8
  br label %71

107:                                              ; preds = %71
  %108 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %109 = load %struct.sbuf*, %struct.sbuf** %108, align 8
  %110 = call i32 @sbuf_cat(%struct.sbuf* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %222

111:                                              ; preds = %34
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %5, align 8
  br label %114

114:                                              ; preds = %159, %111
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %118, label %162

118:                                              ; preds = %114
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp sge i32 %121, 97
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i8*, i8** %5, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp sle i32 %126, 106
  br i1 %127, label %153, label %128

128:                                              ; preds = %123, %118
  %129 = load i8*, i8** %5, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp sge i32 %131, 65
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i8*, i8** %5, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sle i32 %136, 74
  br i1 %137, label %153, label %138

138:                                              ; preds = %133, %128
  %139 = load i8*, i8** %5, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 85
  br i1 %142, label %153, label %143

143:                                              ; preds = %138
  %144 = load i8*, i8** %5, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp sle i32 %146, 117
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i8*, i8** %5, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 46
  br i1 %152, label %153, label %158

153:                                              ; preds = %148, %143, %138, %133, %123
  %154 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %155 = load %struct.sbuf*, %struct.sbuf** %154, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 @sbuf_bcat(%struct.sbuf* %155, i8* %156, i32 1)
  br label %158

158:                                              ; preds = %153, %148
  br label %159

159:                                              ; preds = %158
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %5, align 8
  br label %114

162:                                              ; preds = %114
  br label %222

163:                                              ; preds = %34
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %5, align 8
  br label %166

166:                                              ; preds = %210, %163
  %167 = load i8*, i8** %5, align 8
  %168 = load i8, i8* %167, align 1
  %169 = icmp ne i8 %168, 0
  br i1 %169, label %170, label %213

170:                                              ; preds = %166
  %171 = load i8*, i8** %5, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 46
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %177 = load %struct.sbuf*, %struct.sbuf** %176, align 8
  %178 = call i32 @sbuf_cat(%struct.sbuf* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %209

179:                                              ; preds = %170
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 45
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %186 = load %struct.sbuf*, %struct.sbuf** %185, align 8
  %187 = call i32 @sbuf_cat(%struct.sbuf* %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %208

188:                                              ; preds = %179
  %189 = load i8*, i8** %5, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 32
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %195 = load %struct.sbuf*, %struct.sbuf** %194, align 8
  %196 = call i32 @sbuf_cat(%struct.sbuf* %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %207

197:                                              ; preds = %188
  %198 = load i8*, i8** %5, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 10
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %204 = load %struct.sbuf*, %struct.sbuf** %203, align 8
  %205 = call i32 @sbuf_cat(%struct.sbuf* %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %206

206:                                              ; preds = %202, %197
  br label %207

207:                                              ; preds = %206, %193
  br label %208

208:                                              ; preds = %207, %184
  br label %209

209:                                              ; preds = %208, %175
  br label %210

210:                                              ; preds = %209
  %211 = load i8*, i8** %5, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %5, align 8
  br label %166

213:                                              ; preds = %166
  %214 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %215 = load %struct.sbuf*, %struct.sbuf** %214, align 8
  %216 = call i32 @sbuf_cat(%struct.sbuf* %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %222

217:                                              ; preds = %34
  %218 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %219 = load %struct.sbuf*, %struct.sbuf** %218, align 8
  %220 = call i32 @sbuf_delete(%struct.sbuf* %219)
  %221 = load i32, i32* @EINVAL, align 4
  store i32 %221, i32* %4, align 4
  br label %237

222:                                              ; preds = %213, %162, %107, %58
  %223 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %224 = load %struct.sbuf*, %struct.sbuf** %223, align 8
  %225 = call i32 @sbuf_finish(%struct.sbuf* %224)
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %222
  %229 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  %230 = load %struct.sbuf*, %struct.sbuf** %229, align 8
  %231 = call i64 @sbuf_len(%struct.sbuf* %230)
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228, %222
  %234 = load %struct.sbuf**, %struct.sbuf*** %6, align 8
  store %struct.sbuf* null, %struct.sbuf** %234, align 8
  %235 = load i32, i32* %9, align 4
  store i32 %235, i32* %4, align 4
  br label %237

236:                                              ; preds = %228
  store i32 0, i32* %4, align 4
  br label %237

237:                                              ; preds = %236, %233, %217, %32, %19
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8 signext, i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i64 @sbuf_len(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
