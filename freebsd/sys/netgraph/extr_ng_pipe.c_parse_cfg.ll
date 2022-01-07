; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pipe.c_parse_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pipe.c_parse_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_pipe_hookcfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hookinfo = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@M_NG_PIPE = common dso_local global i32 0, align 4
@parse_cfg.one = internal constant i32 0, align 4
@MAX_FSIZE = common dso_local global i32 0, align 4
@MAX_OHSIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg*, %struct.hookinfo*, %struct.TYPE_3__*)* @parse_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_cfg(%struct.ng_pipe_hookcfg* %0, %struct.ng_pipe_hookcfg* %1, %struct.hookinfo* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca %struct.ng_pipe_hookcfg*, align 8
  %6 = alloca %struct.ng_pipe_hookcfg*, align 8
  %7 = alloca %struct.hookinfo*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ng_pipe_hookcfg* %0, %struct.ng_pipe_hookcfg** %5, align 8
  store %struct.ng_pipe_hookcfg* %1, %struct.ng_pipe_hookcfg** %6, align 8
  store %struct.hookinfo* %2, %struct.hookinfo** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %13 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %14 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %19 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.hookinfo*, %struct.hookinfo** %7, align 8
  %21 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.hookinfo*, %struct.hookinfo** %7, align 8
  %26 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @M_NG_PIPE, align 4
  %29 = call i32 @free(i32* %27, i32 %28)
  %30 = load %struct.hookinfo*, %struct.hookinfo** %7, align 8
  %31 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %24, %17
  br label %117

33:                                               ; preds = %4
  %34 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %35 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 1
  br i1 %37, label %38, label %116

38:                                               ; preds = %33
  %39 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %40 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp sle i64 %42, 1000000000000
  br i1 %43, label %44, label %116

44:                                               ; preds = %38
  %45 = load %struct.hookinfo*, %struct.hookinfo** %7, align 8
  %46 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32, i32* @MAX_FSIZE, align 4
  %51 = load i32, i32* @MAX_OHSIZE, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @M_NG_PIPE, align 4
  %57 = load i32, i32* @M_WAITOK, align 4
  %58 = call i32* @malloc(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.hookinfo*, %struct.hookinfo** %7, align 8
  %60 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %49, %44
  %62 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %63 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %66 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %68 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 0, %69
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %112, %61
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @MAX_FSIZE, align 4
  %75 = load i32, i32* @MAX_OHSIZE, align 4
  %76 = add nsw i32 %74, %75
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %115

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.hookinfo*, %struct.hookinfo** %7, align 8
  %81 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %108, %78
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 8
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 65535
  %93 = mul nsw i32 %90, %92
  %94 = ashr i32 %93, 48
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = ashr i32 %96, 16
  %98 = and i32 %97, 65535
  %99 = mul nsw i32 %95, %98
  %100 = ashr i32 %99, 32
  %101 = add nsw i32 %94, %100
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = ashr i32 %103, 32
  %105 = mul nsw i32 %102, %104
  %106 = ashr i32 %105, 16
  %107 = add nsw i32 %101, %106
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %89
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %86

111:                                              ; preds = %86
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %72

115:                                              ; preds = %72
  br label %116

116:                                              ; preds = %115, %38, %33
  br label %117

117:                                              ; preds = %116, %32
  %118 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %119 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %124 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  br label %137

125:                                              ; preds = %117
  %126 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %127 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp sge i32 %128, 5
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %132 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %135 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %130, %125
  br label %137

137:                                              ; preds = %136, %122
  %138 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %139 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %144 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %143, i32 0, i32 2
  store i32 0, i32* %144, align 4
  br label %157

145:                                              ; preds = %137
  %146 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %147 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp sge i32 %148, 5
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %152 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %155 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %150, %145
  br label %157

157:                                              ; preds = %156, %142
  %158 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %159 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %164 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %163, i32 0, i32 3
  store i32 0, i32* %164, align 4
  br label %182

165:                                              ; preds = %157
  %166 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %167 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %165
  %171 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %172 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = icmp sle i32 %173, 50
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %177 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %180 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %175, %170, %165
  br label %182

182:                                              ; preds = %181, %162
  %183 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %184 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %189 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %188, i32 0, i32 4
  store i32 1, i32* %189, align 4
  %190 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %191 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %190, i32 0, i32 5
  store i32 0, i32* %191, align 4
  %192 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %193 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %192, i32 0, i32 6
  store i32 0, i32* %193, align 4
  br label %194

194:                                              ; preds = %187, %182
  %195 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %196 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %201 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %200, i32 0, i32 4
  store i32 0, i32* %201, align 4
  %202 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %203 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %202, i32 0, i32 5
  store i32 1, i32* %203, align 4
  %204 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %205 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %204, i32 0, i32 6
  store i32 0, i32* %205, align 4
  br label %206

206:                                              ; preds = %199, %194
  %207 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %208 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %230

211:                                              ; preds = %206
  %212 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %213 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %212, i32 0, i32 4
  store i32 0, i32* %213, align 4
  %214 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %215 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %214, i32 0, i32 5
  store i32 0, i32* %215, align 4
  %216 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %217 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 4
  %219 = icmp sge i32 %218, 32
  br i1 %219, label %220, label %226

220:                                              ; preds = %211
  %221 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %222 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %225 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %224, i32 0, i32 6
  store i32 %223, i32* %225, align 4
  br label %229

226:                                              ; preds = %211
  %227 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %228 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %227, i32 0, i32 6
  store i32 2048, i32* %228, align 4
  br label %229

229:                                              ; preds = %226, %220
  br label %230

230:                                              ; preds = %229, %206
  %231 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %232 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %237 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %236, i32 0, i32 7
  store i32 1, i32* %237, align 4
  %238 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %239 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %238, i32 0, i32 8
  store i32 0, i32* %239, align 4
  br label %240

240:                                              ; preds = %235, %230
  %241 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %242 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %247 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %246, i32 0, i32 7
  store i32 0, i32* %247, align 4
  %248 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %249 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %248, i32 0, i32 8
  store i32 1, i32* %249, align 4
  br label %250

250:                                              ; preds = %245, %240
  %251 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %252 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, -1
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %257 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %256, i32 0, i32 9
  store i32 0, i32* %257, align 4
  %258 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %259 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %258, i32 0, i32 4
  store i32 1, i32* %259, align 4
  %260 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %261 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %260, i32 0, i32 5
  store i32 0, i32* %261, align 4
  %262 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %263 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %262, i32 0, i32 6
  store i32 0, i32* %263, align 4
  br label %281

264:                                              ; preds = %250
  %265 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %266 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %265, i32 0, i32 9
  %267 = load i32, i32* %266, align 4
  %268 = icmp sge i32 %267, 100
  br i1 %268, label %269, label %280

269:                                              ; preds = %264
  %270 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %271 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 4
  %273 = icmp sle i32 %272, 1000000000
  br i1 %273, label %274, label %280

274:                                              ; preds = %269
  %275 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %6, align 8
  %276 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %275, i32 0, i32 9
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %279 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %278, i32 0, i32 9
  store i32 %277, i32* %279, align 4
  br label %280

280:                                              ; preds = %274, %269, %264
  br label %281

281:                                              ; preds = %280, %255
  %282 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %283 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %282, i32 0, i32 9
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %284, %287
  %289 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %290 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %288, %291
  %293 = load %struct.ng_pipe_hookcfg*, %struct.ng_pipe_hookcfg** %5, align 8
  %294 = getelementptr inbounds %struct.ng_pipe_hookcfg, %struct.ng_pipe_hookcfg* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %292, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %281
  %299 = load %struct.hookinfo*, %struct.hookinfo** %7, align 8
  %300 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %299, i32 0, i32 1
  store i32 0, i32* %300, align 8
  br label %304

301:                                              ; preds = %281
  %302 = load %struct.hookinfo*, %struct.hookinfo** %7, align 8
  %303 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %302, i32 0, i32 1
  store i32 1, i32* %303, align 8
  br label %304

304:                                              ; preds = %301, %298
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
