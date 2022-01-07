; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/extr_sound.c_current_value.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/extr_sound.c_current_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@soundReg = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @current_value(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %35 [
    i32 0, label %10
    i32 1, label %15
    i32 2, label %20
    i32 3, label %25
    i32 4, label %30
  ]

10:                                               ; preds = %8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %293

15:                                               ; preds = %8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %293

20:                                               ; preds = %8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %293

25:                                               ; preds = %8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  br label %293

30:                                               ; preds = %8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %293

35:                                               ; preds = %8
  br label %292

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %113

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %112 [
    i32 0, label %41
    i32 1, label %46
    i32 2, label %51
    i32 3, label %56
    i32 4, label %61
    i32 5, label %66
    i32 6, label %71
    i32 7, label %76
    i32 8, label %81
    i32 128, label %81
    i32 9, label %92
    i32 10, label %97
    i32 11, label %102
    i32 12, label %107
  ]

41:                                               ; preds = %39
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %293

46:                                               ; preds = %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %293

51:                                               ; preds = %39
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %3, align 4
  br label %293

56:                                               ; preds = %39
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %3, align 4
  br label %293

61:                                               ; preds = %39
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %3, align 4
  br label %293

66:                                               ; preds = %39
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %3, align 4
  br label %293

71:                                               ; preds = %39
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %3, align 4
  br label %293

76:                                               ; preds = %39
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %3, align 4
  br label %293

81:                                               ; preds = %39, %39
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %86, %90
  store i32 %91, i32* %3, align 4
  br label %293

92:                                               ; preds = %39
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %3, align 4
  br label %293

97:                                               ; preds = %39
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %3, align 4
  br label %293

102:                                              ; preds = %39
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %3, align 4
  br label %293

107:                                              ; preds = %39
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %3, align 4
  br label %293

112:                                              ; preds = %39
  br label %291

113:                                              ; preds = %36
  %114 = load i32, i32* %4, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %175

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  switch i32 %117, label %174 [
    i32 0, label %118
    i32 1, label %123
    i32 2, label %128
    i32 3, label %133
    i32 4, label %138
    i32 5, label %143
    i32 128, label %143
    i32 6, label %154
    i32 7, label %159
    i32 8, label %164
    i32 9, label %169
  ]

118:                                              ; preds = %116
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %3, align 4
  br label %293

123:                                              ; preds = %116
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %3, align 4
  br label %293

128:                                              ; preds = %116
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %3, align 4
  br label %293

133:                                              ; preds = %116
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %3, align 4
  br label %293

138:                                              ; preds = %116
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %3, align 4
  br label %293

143:                                              ; preds = %116, %116
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %148, %152
  store i32 %153, i32* %3, align 4
  br label %293

154:                                              ; preds = %116
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %3, align 4
  br label %293

159:                                              ; preds = %116
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %3, align 4
  br label %293

164:                                              ; preds = %116
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %3, align 4
  br label %293

169:                                              ; preds = %116
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %3, align 4
  br label %293

174:                                              ; preds = %116
  br label %290

175:                                              ; preds = %113
  %176 = load i32, i32* %4, align 4
  %177 = icmp eq i32 %176, 3
  br i1 %177, label %178, label %227

178:                                              ; preds = %175
  %179 = load i32, i32* %5, align 4
  switch i32 %179, label %226 [
    i32 0, label %180
    i32 1, label %185
    i32 2, label %190
    i32 3, label %195
    i32 128, label %195
    i32 4, label %206
    i32 5, label %211
    i32 6, label %216
    i32 7, label %221
  ]

180:                                              ; preds = %178
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %3, align 4
  br label %293

185:                                              ; preds = %178
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %3, align 4
  br label %293

190:                                              ; preds = %178
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %3, align 4
  br label %293

195:                                              ; preds = %178, %178
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 %199, 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %200, %204
  store i32 %205, i32* %3, align 4
  br label %293

206:                                              ; preds = %178
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %3, align 4
  br label %293

211:                                              ; preds = %178
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 11
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %3, align 4
  br label %293

216:                                              ; preds = %178
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 12
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %3, align 4
  br label %293

221:                                              ; preds = %178
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 13
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %3, align 4
  br label %293

226:                                              ; preds = %178
  br label %289

227:                                              ; preds = %175
  %228 = load i32, i32* %4, align 4
  %229 = icmp eq i32 %228, 4
  br i1 %229, label %230, label %288

230:                                              ; preds = %227
  %231 = load i32, i32* %5, align 4
  switch i32 %231, label %287 [
    i32 0, label %232
    i32 1, label %237
    i32 2, label %242
    i32 3, label %247
    i32 4, label %252
    i32 5, label %257
    i32 6, label %262
    i32 7, label %267
    i32 8, label %272
    i32 9, label %277
    i32 10, label %282
  ]

232:                                              ; preds = %230
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %3, align 4
  br label %293

237:                                              ; preds = %230
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %3, align 4
  br label %293

242:                                              ; preds = %230
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %3, align 4
  br label %293

247:                                              ; preds = %230
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %3, align 4
  br label %293

252:                                              ; preds = %230
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %3, align 4
  br label %293

257:                                              ; preds = %230
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %3, align 4
  br label %293

262:                                              ; preds = %230
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %3, align 4
  br label %293

267:                                              ; preds = %230
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %3, align 4
  br label %293

272:                                              ; preds = %230
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 14
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %3, align 4
  br label %293

277:                                              ; preds = %230
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 15
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %3, align 4
  br label %293

282:                                              ; preds = %230
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 16
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %3, align 4
  br label %293

287:                                              ; preds = %230
  br label %288

288:                                              ; preds = %287, %227
  br label %289

289:                                              ; preds = %288, %226
  br label %290

290:                                              ; preds = %289, %174
  br label %291

291:                                              ; preds = %290, %112
  br label %292

292:                                              ; preds = %291, %35
  store i32 0, i32* %3, align 4
  br label %293

293:                                              ; preds = %292, %282, %277, %272, %267, %262, %257, %252, %247, %242, %237, %232, %221, %216, %211, %206, %195, %190, %185, %180, %169, %164, %159, %154, %143, %138, %133, %128, %123, %118, %107, %102, %97, %92, %81, %76, %71, %66, %61, %56, %51, %46, %41, %30, %25, %20, %15, %10
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
