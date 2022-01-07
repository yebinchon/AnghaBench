; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_dumpdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_dumpdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable = type { i8*, %struct.TYPE_2__, %struct.variable* }
%struct.TYPE_2__ = type { i32, i32 }

@zflag = common dso_local global i64 0, align 8
@vars = common dso_local global %struct.variable* null, align 8
@hid_input = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"hid_get_report(rid %d)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Got %s report %d (%d bytes):\00", align 1
@hid_output = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@hid_feature = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"feature\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@noname = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @dumpdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpdata(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.variable*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i64, i64* @zflag, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 3, i32 0
  store i32 %20, i32* %16, align 4
  store i32 -1, i32* %13, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @hid_get_report_id(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  br label %27

27:                                               ; preds = %261, %3
  %28 = load i32, i32* %16, align 4
  %29 = icmp ult i32 %28, 3
  br i1 %29, label %30, label %71

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %13, align 4
  %33 = icmp sge i32 %32, 256
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  %35 = load i32, i32* %16, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %16, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %16, align 4
  %39 = icmp uge i32 %38, 3
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %13, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load %struct.variable*, %struct.variable** @vars, align 8
  store %struct.variable* %42, %struct.variable** %7, align 8
  br label %43

43:                                               ; preds = %62, %41
  %44 = load %struct.variable*, %struct.variable** %7, align 8
  %45 = icmp ne %struct.variable* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.variable*, %struct.variable** %7, align 8
  %49 = getelementptr inbounds %struct.variable, %struct.variable* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %47, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i32, i32* %16, align 4
  %55 = load %struct.variable*, %struct.variable** %7, align 8
  %56 = getelementptr inbounds %struct.variable, %struct.variable* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %66

61:                                               ; preds = %53, %46
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.variable*, %struct.variable** %7, align 8
  %64 = getelementptr inbounds %struct.variable, %struct.variable* %63, i32 0, i32 2
  %65 = load %struct.variable*, %struct.variable** %64, align 8
  store %struct.variable* %65, %struct.variable** %7, align 8
  br label %43

66:                                               ; preds = %60, %43
  %67 = load %struct.variable*, %struct.variable** %7, align 8
  %68 = icmp eq %struct.variable* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %255

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %27
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ult i32 %73, 3
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %16, align 4
  br label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @hid_input, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @hid_report_size(i32 %72, i32 %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %255

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = call i32* @malloc(i32 %87)
  store i32* %88, i32** %15, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @memset(i32* %89, i32 0, i32 %90)
  %92 = load i32, i32* %16, align 4
  %93 = icmp ult i32 %92, 3
  br i1 %93, label %94, label %132

94:                                               ; preds = %86
  %95 = load i32, i32* %13, align 4
  %96 = load i32*, i32** %15, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32*, i32** %15, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @hid_get_report(i32 %98, i32 %99, i32* %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %105, %94
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %13, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %117, %118
  br label %120

120:                                              ; preds = %114, %111
  %121 = phi i1 [ true, %111 ], [ %119, %114 ]
  br label %122

122:                                              ; preds = %120, %108
  %123 = phi i1 [ false, %108 ], [ %121, %120 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* %13, align 4
  %129 = load i32*, i32** %15, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %127, %122
  br label %142

132:                                              ; preds = %86
  %133 = load i32, i32* %4, align 4
  %134 = load i32*, i32** %15, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @read(i32 %133, i32* %134, i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %132
  store i32 1, i32* %9, align 4
  br label %142

142:                                              ; preds = %141, %131
  %143 = load i64, i64* @verbose, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %189

145:                                              ; preds = %142
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* @hid_output, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %156

150:                                              ; preds = %145
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* @hid_feature, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  br label %156

156:                                              ; preds = %150, %149
  %157 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %149 ], [ %155, %150 ]
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32*, i32** %15, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  br label %165

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %160
  %166 = phi i32 [ %163, %160 ], [ 0, %164 ]
  %167 = load i32, i32* %8, align 4
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %157, i32 %166, i32 %167)
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %165
  store i32 0, i32* %10, align 4
  br label %172

172:                                              ; preds = %183, %171
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load i32*, i32** %15, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %176
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  br label %172

186:                                              ; preds = %172
  br label %187

187:                                              ; preds = %186, %165
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %142
  store i32 0, i32* %11, align 4
  %190 = load %struct.variable*, %struct.variable** @vars, align 8
  store %struct.variable* %190, %struct.variable** %7, align 8
  br label %191

191:                                              ; preds = %243, %189
  %192 = load %struct.variable*, %struct.variable** %7, align 8
  %193 = icmp ne %struct.variable* %192, null
  br i1 %193, label %194, label %247

194:                                              ; preds = %191
  %195 = load i32, i32* %16, align 4
  %196 = icmp ult i32 %195, 3
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = load i32, i32* %16, align 4
  br label %201

199:                                              ; preds = %194
  %200 = load i32, i32* @hid_input, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  %203 = load %struct.variable*, %struct.variable** %7, align 8
  %204 = getelementptr inbounds %struct.variable, %struct.variable* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %202, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %243

209:                                              ; preds = %201
  %210 = load %struct.variable*, %struct.variable** %7, align 8
  %211 = getelementptr inbounds %struct.variable, %struct.variable* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %209
  %216 = load i32*, i32** %15, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.variable*, %struct.variable** %7, align 8
  %220 = getelementptr inbounds %struct.variable, %struct.variable* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %218, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %215
  br label %243

225:                                              ; preds = %215, %209
  store i32 1, i32* %11, align 4
  %226 = load i32, i32* @noname, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %225
  %229 = load %struct.variable*, %struct.variable** %7, align 8
  %230 = getelementptr inbounds %struct.variable, %struct.variable* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %231)
  br label %233

233:                                              ; preds = %228, %225
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %233
  %237 = load i32*, i32** %15, align 8
  %238 = load %struct.variable*, %struct.variable** %7, align 8
  %239 = getelementptr inbounds %struct.variable, %struct.variable* %238, i32 0, i32 1
  %240 = call i32 @prdata(i32* %237, %struct.TYPE_2__* %239)
  br label %241

241:                                              ; preds = %236, %233
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %224, %208
  %244 = load %struct.variable*, %struct.variable** %7, align 8
  %245 = getelementptr inbounds %struct.variable, %struct.variable* %244, i32 0, i32 2
  %246 = load %struct.variable*, %struct.variable** %245, align 8
  store %struct.variable* %246, %struct.variable** %7, align 8
  br label %191

247:                                              ; preds = %191
  %248 = load i32, i32* %11, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %247
  %253 = load i32*, i32** %15, align 8
  %254 = call i32 @free(i32* %253)
  br label %255

255:                                              ; preds = %252, %85, %69
  %256 = load i32, i32* %6, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %255
  %259 = load i32, i32* %16, align 4
  %260 = icmp ult i32 %259, 3
  br label %261

261:                                              ; preds = %258, %255
  %262 = phi i1 [ true, %255 ], [ %260, %258 ]
  br i1 %262, label %27, label %263

263:                                              ; preds = %261
  ret void
}

declare dso_local i32 @hid_get_report_id(i32) #1

declare dso_local i32 @hid_report_size(i32, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hid_get_report(i32, i32, i32*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @prdata(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
