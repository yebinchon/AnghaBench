; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_rd_serdes_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_rd_serdes_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@Q81_XAUI_POWERED_UP = common dso_local global i32 0, align 4
@Q81_XFI1_POWERED_UP = common dso_local global i32 0, align 4
@Q81_XFI2_POWERED_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @qls_rd_serdes_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qls_rd_serdes_regs(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 2048, i32* %11, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @qls_rd_ofunc_serdes_reg(%struct.TYPE_9__* %15, i32 %16, i32* %10)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @Q81_XAUI_POWERED_UP, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @Q81_XAUI_POWERED_UP, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @qls_rd_serdes_reg(%struct.TYPE_9__* %29, i32 %30, i32* %10)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @Q81_XAUI_POWERED_UP, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @Q81_XAUI_POWERED_UP, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = call i32 @qls_rd_serdes_reg(%struct.TYPE_9__* %43, i32 7686, i32* %10)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @Q81_XFI1_POWERED_UP, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @Q81_XFI1_POWERED_UP, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %7, align 4
  br label %62

61:                                               ; preds = %54
  store i32 1, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @Q81_XFI2_POWERED_UP, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @Q81_XFI2_POWERED_UP, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* %6, align 4
  br label %77

76:                                               ; preds = %69
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %75
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 14
  store i32* %86, i32** %13, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 15
  store i32* %88, i32** %14, align 8
  br label %94

89:                                               ; preds = %78
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 15
  store i32* %91, i32** %13, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 14
  store i32* %93, i32** %14, align 8
  br label %94

94:                                               ; preds = %89, %84
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %106, %94
  %96 = load i32, i32* %12, align 4
  %97 = icmp sle i32 %96, 52
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @qls_get_both_serdes(%struct.TYPE_9__* %99, i32 %100, i32* %101, i32* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 4
  store i32 %108, i32* %12, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %13, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %14, align 8
  br label %95

113:                                              ; preds = %95
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 12
  store i32* %121, i32** %13, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 13
  store i32* %123, i32** %14, align 8
  br label %129

124:                                              ; preds = %113
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 13
  store i32* %126, i32** %13, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 12
  store i32* %128, i32** %14, align 8
  br label %129

129:                                              ; preds = %124, %119
  store i32 2048, i32* %12, align 4
  br label %130

130:                                              ; preds = %141, %129
  %131 = load i32, i32* %12, align 4
  %132 = icmp sle i32 %131, 2176
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32*, i32** %13, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @qls_get_both_serdes(%struct.TYPE_9__* %134, i32 %135, i32* %136, i32* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %12, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %13, align 8
  %146 = load i32*, i32** %14, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %14, align 8
  br label %130

148:                                              ; preds = %130
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %148
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 10
  store i32* %156, i32** %13, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 11
  store i32* %158, i32** %14, align 8
  br label %164

159:                                              ; preds = %148
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 11
  store i32* %161, i32** %13, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 10
  store i32* %163, i32** %14, align 8
  br label %164

164:                                              ; preds = %159, %154
  store i32 4096, i32* %12, align 4
  br label %165

165:                                              ; preds = %176, %164
  %166 = load i32, i32* %12, align 4
  %167 = icmp sle i32 %166, 4148
  br i1 %167, label %168, label %183

168:                                              ; preds = %165
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load i32*, i32** %13, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @qls_get_both_serdes(%struct.TYPE_9__* %169, i32 %170, i32* %171, i32* %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 4
  store i32 %178, i32* %12, align 4
  %179 = load i32*, i32** %13, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %13, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %14, align 8
  br label %165

183:                                              ; preds = %165
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 1
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %183
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 8
  store i32* %191, i32** %13, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 9
  store i32* %193, i32** %14, align 8
  br label %199

194:                                              ; preds = %183
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 9
  store i32* %196, i32** %13, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 8
  store i32* %198, i32** %14, align 8
  br label %199

199:                                              ; preds = %194, %189
  store i32 4176, i32* %12, align 4
  br label %200

200:                                              ; preds = %211, %199
  %201 = load i32, i32* %12, align 4
  %202 = icmp sle i32 %201, 4220
  br i1 %202, label %203, label %218

203:                                              ; preds = %200
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = load i32, i32* %12, align 4
  %206 = load i32*, i32** %13, align 8
  %207 = load i32*, i32** %14, align 8
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @qls_get_both_serdes(%struct.TYPE_9__* %204, i32 %205, i32* %206, i32* %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %203
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 4
  store i32 %213, i32* %12, align 4
  %214 = load i32*, i32** %13, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %13, align 8
  %216 = load i32*, i32** %14, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %14, align 8
  br label %200

218:                                              ; preds = %200
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, 1
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %218
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 6
  store i32* %226, i32** %13, align 8
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 7
  store i32* %228, i32** %14, align 8
  br label %234

229:                                              ; preds = %218
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 7
  store i32* %231, i32** %13, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 6
  store i32* %233, i32** %14, align 8
  br label %234

234:                                              ; preds = %229, %224
  store i32 6144, i32* %12, align 4
  br label %235

235:                                              ; preds = %246, %234
  %236 = load i32, i32* %12, align 4
  %237 = icmp sle i32 %236, 6200
  br i1 %237, label %238, label %253

238:                                              ; preds = %235
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %240 = load i32, i32* %12, align 4
  %241 = load i32*, i32** %13, align 8
  %242 = load i32*, i32** %14, align 8
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @qls_get_both_serdes(%struct.TYPE_9__* %239, i32 %240, i32* %241, i32* %242, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %238
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, 4
  store i32 %248, i32* %12, align 4
  %249 = load i32*, i32** %13, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %250, i32** %13, align 8
  %251 = load i32*, i32** %14, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %14, align 8
  br label %235

253:                                              ; preds = %235
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, 1
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %253
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 4
  store i32* %261, i32** %13, align 8
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 5
  store i32* %263, i32** %14, align 8
  br label %269

264:                                              ; preds = %253
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 5
  store i32* %266, i32** %13, align 8
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 4
  store i32* %268, i32** %14, align 8
  br label %269

269:                                              ; preds = %264, %259
  store i32 7168, i32* %12, align 4
  br label %270

270:                                              ; preds = %281, %269
  %271 = load i32, i32* %12, align 4
  %272 = icmp sle i32 %271, 7199
  br i1 %272, label %273, label %288

273:                                              ; preds = %270
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %275 = load i32, i32* %12, align 4
  %276 = load i32*, i32** %13, align 8
  %277 = load i32*, i32** %14, align 8
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* %7, align 4
  %280 = call i32 @qls_get_both_serdes(%struct.TYPE_9__* %274, i32 %275, i32* %276, i32* %277, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %273
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %12, align 4
  %284 = load i32*, i32** %13, align 8
  %285 = getelementptr inbounds i32, i32* %284, i32 1
  store i32* %285, i32** %13, align 8
  %286 = load i32*, i32** %14, align 8
  %287 = getelementptr inbounds i32, i32* %286, i32 1
  store i32* %287, i32** %14, align 8
  br label %270

288:                                              ; preds = %270
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, 1
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %288
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 2
  store i32* %296, i32** %13, align 8
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 3
  store i32* %298, i32** %14, align 8
  br label %304

299:                                              ; preds = %288
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 3
  store i32* %301, i32** %13, align 8
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 2
  store i32* %303, i32** %14, align 8
  br label %304

304:                                              ; preds = %299, %294
  store i32 7232, i32* %12, align 4
  br label %305

305:                                              ; preds = %316, %304
  %306 = load i32, i32* %12, align 4
  %307 = icmp sle i32 %306, 7263
  br i1 %307, label %308, label %323

308:                                              ; preds = %305
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %310 = load i32, i32* %12, align 4
  %311 = load i32*, i32** %13, align 8
  %312 = load i32*, i32** %14, align 8
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* %7, align 4
  %315 = call i32 @qls_get_both_serdes(%struct.TYPE_9__* %309, i32 %310, i32* %311, i32* %312, i32 %313, i32 %314)
  br label %316

316:                                              ; preds = %308
  %317 = load i32, i32* %12, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %12, align 4
  %319 = load i32*, i32** %13, align 8
  %320 = getelementptr inbounds i32, i32* %319, i32 1
  store i32* %320, i32** %13, align 8
  %321 = load i32*, i32** %14, align 8
  %322 = getelementptr inbounds i32, i32* %321, i32 1
  store i32* %322, i32** %14, align 8
  br label %305

323:                                              ; preds = %305
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = and i32 %326, 1
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %323
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 0
  store i32* %331, i32** %13, align 8
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 1
  store i32* %333, i32** %14, align 8
  br label %339

334:                                              ; preds = %323
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 1
  store i32* %336, i32** %13, align 8
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 0
  store i32* %338, i32** %14, align 8
  br label %339

339:                                              ; preds = %334, %329
  store i32 7680, i32* %12, align 4
  br label %340

340:                                              ; preds = %351, %339
  %341 = load i32, i32* %12, align 4
  %342 = icmp sle i32 %341, 7711
  br i1 %342, label %343, label %358

343:                                              ; preds = %340
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %345 = load i32, i32* %12, align 4
  %346 = load i32*, i32** %13, align 8
  %347 = load i32*, i32** %14, align 8
  %348 = load i32, i32* %6, align 4
  %349 = load i32, i32* %7, align 4
  %350 = call i32 @qls_get_both_serdes(%struct.TYPE_9__* %344, i32 %345, i32* %346, i32* %347, i32 %348, i32 %349)
  br label %351

351:                                              ; preds = %343
  %352 = load i32, i32* %12, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %12, align 4
  %354 = load i32*, i32** %13, align 8
  %355 = getelementptr inbounds i32, i32* %354, i32 1
  store i32* %355, i32** %13, align 8
  %356 = load i32*, i32** %14, align 8
  %357 = getelementptr inbounds i32, i32* %356, i32 1
  store i32* %357, i32** %14, align 8
  br label %340

358:                                              ; preds = %340
  ret i32 0
}

declare dso_local i32 @qls_rd_ofunc_serdes_reg(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @qls_rd_serdes_reg(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @qls_get_both_serdes(%struct.TYPE_9__*, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
