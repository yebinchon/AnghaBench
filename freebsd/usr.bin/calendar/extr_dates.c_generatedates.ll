; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_generatedates.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_generatedates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@monthdaytab = common dso_local global i32** null, align 8
@monthdays = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generatedates(%struct.tm* %0, %struct.tm* %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %14 = load %struct.tm*, %struct.tm** %3, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.tm*, %struct.tm** %3, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load %struct.tm*, %struct.tm** %3, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.tm*, %struct.tm** %4, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.tm*, %struct.tm** %4, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load %struct.tm*, %struct.tm** %4, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %121

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %52, %41
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @createdate(i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %43

55:                                               ; preds = %43
  br label %256

56:                                               ; preds = %37
  %57 = load i32**, i32*** @monthdaytab, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @isleap(i32 %58)
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** @monthdays, align 8
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %76, %56
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** @monthdays, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %64, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @createdate(i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %104, %79
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %82
  store i32 1, i32* %13, align 4
  br label %87

87:                                               ; preds = %100, %86
  %88 = load i32, i32* %13, align 4
  %89 = load i32*, i32** @monthdays, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp sle i32 %88, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @createdate(i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %87

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %82

107:                                              ; preds = %82
  store i32 1, i32* %13, align 4
  br label %108

108:                                              ; preds = %117, %107
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @createdate(i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %108

120:                                              ; preds = %108
  br label %256

121:                                              ; preds = %2
  %122 = load i32**, i32*** @monthdaytab, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i64 @isleap(i32 %123)
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** @monthdays, align 8
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %141, %121
  %129 = load i32, i32* %13, align 4
  %130 = load i32*, i32** @monthdays, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp sle i32 %129, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %128
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @createdate(i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %128

144:                                              ; preds = %128
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %168, %144
  %148 = load i32, i32* %12, align 4
  %149 = icmp sle i32 %148, 12
  br i1 %149, label %150, label %171

150:                                              ; preds = %147
  store i32 1, i32* %13, align 4
  br label %151

151:                                              ; preds = %164, %150
  %152 = load i32, i32* %13, align 4
  %153 = load i32*, i32** @monthdays, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp sle i32 %152, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @createdate(i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %151

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %147

171:                                              ; preds = %147
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %174

174:                                              ; preds = %209, %171
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %212

178:                                              ; preds = %174
  %179 = load i32**, i32*** @monthdaytab, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i64 @isleap(i32 %180)
  %182 = getelementptr inbounds i32*, i32** %179, i64 %181
  %183 = load i32*, i32** %182, align 8
  store i32* %183, i32** @monthdays, align 8
  store i32 1, i32* %12, align 4
  br label %184

184:                                              ; preds = %205, %178
  %185 = load i32, i32* %12, align 4
  %186 = icmp sle i32 %185, 12
  br i1 %186, label %187, label %208

187:                                              ; preds = %184
  store i32 1, i32* %13, align 4
  br label %188

188:                                              ; preds = %201, %187
  %189 = load i32, i32* %13, align 4
  %190 = load i32*, i32** @monthdays, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp sle i32 %189, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %188
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @createdate(i32 %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %196
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %13, align 4
  br label %188

204:                                              ; preds = %188
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %184

208:                                              ; preds = %184
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %174

212:                                              ; preds = %174
  %213 = load i32**, i32*** @monthdaytab, align 8
  %214 = load i32, i32* %8, align 4
  %215 = call i64 @isleap(i32 %214)
  %216 = getelementptr inbounds i32*, i32** %213, i64 %215
  %217 = load i32*, i32** %216, align 8
  store i32* %217, i32** @monthdays, align 8
  store i32 1, i32* %12, align 4
  br label %218

218:                                              ; preds = %240, %212
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %243

222:                                              ; preds = %218
  store i32 1, i32* %13, align 4
  br label %223

223:                                              ; preds = %236, %222
  %224 = load i32, i32* %13, align 4
  %225 = load i32*, i32** @monthdays, align 8
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp sle i32 %224, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %223
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @createdate(i32 %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %231
  %237 = load i32, i32* %13, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %13, align 4
  br label %223

239:                                              ; preds = %223
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %12, align 4
  br label %218

243:                                              ; preds = %218
  store i32 1, i32* %13, align 4
  br label %244

244:                                              ; preds = %253, %243
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp sle i32 %245, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %244
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %13, align 4
  %252 = call i32 @createdate(i32 %249, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %248
  %254 = load i32, i32* %13, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %13, align 4
  br label %244

256:                                              ; preds = %55, %120, %244
  ret void
}

declare dso_local i32 @createdate(i32, i32, i32) #1

declare dso_local i64 @isleap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
