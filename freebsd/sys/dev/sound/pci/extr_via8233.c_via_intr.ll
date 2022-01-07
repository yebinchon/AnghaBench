; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.TYPE_3__ = type { i64, i32, i32* }

@NDXSCHANS = common dso_local global i32 0, align 4
@NMSGDCHANS = common dso_local global i32 0, align 4
@VIA_RP_STATUS = common dso_local global i32 0, align 4
@SGD_STATUS_INTR = common dso_local global i32 0, align 4
@SGD_STATUS_EOL = common dso_local global i32 0, align 4
@SGD_STATUS_ACTIVE = common dso_local global i32 0, align 4
@VIA_RP_CONTROL = common dso_local global i32 0, align 4
@SGD_CONTROL_START = common dso_local global i32 0, align 4
@SGD_CONTROL_AUTOSTART = common dso_local global i32 0, align 4
@SGD_CONTROL_I_EOL = common dso_local global i32 0, align 4
@SGD_CONTROL_I_FLAG = common dso_local global i32 0, align 4
@NWRCHANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @via_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.via_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.via_info*
  store %struct.via_info* %10, %struct.via_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.via_info*, %struct.via_info** %3, align 8
  %12 = getelementptr inbounds %struct.via_info, %struct.via_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @snd_mtxlock(i32 %13)
  %15 = load %struct.via_info*, %struct.via_info** %3, align 8
  %16 = getelementptr inbounds %struct.via_info, %struct.via_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.via_info*, %struct.via_info** %3, align 8
  %21 = getelementptr inbounds %struct.via_info, %struct.via_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snd_mtxunlock(i32 %22)
  br label %266

24:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %115, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @NDXSCHANS, align 4
  %28 = load i32, i32* @NMSGDCHANS, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %118

31:                                               ; preds = %25
  %32 = load %struct.via_info*, %struct.via_info** %3, align 8
  %33 = getelementptr inbounds %struct.via_info, %struct.via_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %31
  %42 = load %struct.via_info*, %struct.via_info** %3, align 8
  %43 = getelementptr inbounds %struct.via_info, %struct.via_info* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41, %31
  br label %115

52:                                               ; preds = %41
  %53 = load %struct.via_info*, %struct.via_info** %3, align 8
  %54 = getelementptr inbounds %struct.via_info, %struct.via_info* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @VIA_RP_STATUS, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load %struct.via_info*, %struct.via_info** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @via_rd(%struct.via_info* %63, i32 %64, i32 1)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @SGD_STATUS_INTR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %114

70:                                               ; preds = %52
  %71 = load %struct.via_info*, %struct.via_info** %3, align 8
  %72 = getelementptr inbounds %struct.via_info, %struct.via_info* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %105

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @SGD_STATUS_EOL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @SGD_STATUS_ACTIVE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.via_info*, %struct.via_info** %3, align 8
  %87 = load %struct.via_info*, %struct.via_info** %3, align 8
  %88 = getelementptr inbounds %struct.via_info, %struct.via_info* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @VIA_RP_CONTROL, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* @SGD_CONTROL_START, align 4
  %98 = load i32, i32* @SGD_CONTROL_AUTOSTART, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @SGD_CONTROL_I_EOL, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @SGD_CONTROL_I_FLAG, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @via_wr(%struct.via_info* %86, i32 %96, i32 %103, i32 1)
  br label %105

105:                                              ; preds = %85, %80, %70
  %106 = load %struct.via_info*, %struct.via_info** %3, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @via_wr(%struct.via_info* %106, i32 %107, i32 %108, i32 1)
  %110 = load i32, i32* %6, align 4
  %111 = shl i32 1, %110
  %112 = load i32, i32* %4, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %105, %52
  br label %115

115:                                              ; preds = %114, %51
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %25

118:                                              ; preds = %25
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %207, %118
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @NWRCHANS, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %210

123:                                              ; preds = %119
  %124 = load %struct.via_info*, %struct.via_info** %3, align 8
  %125 = getelementptr inbounds %struct.via_info, %struct.via_info* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %143, label %133

133:                                              ; preds = %123
  %134 = load %struct.via_info*, %struct.via_info** %3, align 8
  %135 = getelementptr inbounds %struct.via_info, %struct.via_info* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %133, %123
  br label %207

144:                                              ; preds = %133
  %145 = load %struct.via_info*, %struct.via_info** %3, align 8
  %146 = getelementptr inbounds %struct.via_info, %struct.via_info* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @VIA_RP_STATUS, align 4
  %154 = add nsw i32 %152, %153
  store i32 %154, i32* %7, align 4
  %155 = load %struct.via_info*, %struct.via_info** %3, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @via_rd(%struct.via_info* %155, i32 %156, i32 1)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @SGD_STATUS_INTR, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %206

162:                                              ; preds = %144
  %163 = load %struct.via_info*, %struct.via_info** %3, align 8
  %164 = getelementptr inbounds %struct.via_info, %struct.via_info* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %197

167:                                              ; preds = %162
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @SGD_STATUS_EOL, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @SGD_STATUS_ACTIVE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %197, label %177

177:                                              ; preds = %172, %167
  %178 = load %struct.via_info*, %struct.via_info** %3, align 8
  %179 = load %struct.via_info*, %struct.via_info** %3, align 8
  %180 = getelementptr inbounds %struct.via_info, %struct.via_info* %179, i32 0, i32 1
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @VIA_RP_CONTROL, align 4
  %188 = add nsw i32 %186, %187
  %189 = load i32, i32* @SGD_CONTROL_START, align 4
  %190 = load i32, i32* @SGD_CONTROL_AUTOSTART, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @SGD_CONTROL_I_EOL, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @SGD_CONTROL_I_FLAG, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @via_wr(%struct.via_info* %178, i32 %188, i32 %195, i32 1)
  br label %197

197:                                              ; preds = %177, %172, %162
  %198 = load %struct.via_info*, %struct.via_info** %3, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @via_wr(%struct.via_info* %198, i32 %199, i32 %200, i32 1)
  %202 = load i32, i32* %6, align 4
  %203 = shl i32 1, %202
  %204 = load i32, i32* %5, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %197, %144
  br label %207

207:                                              ; preds = %206, %143
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %6, align 4
  br label %119

210:                                              ; preds = %119
  %211 = load %struct.via_info*, %struct.via_info** %3, align 8
  %212 = getelementptr inbounds %struct.via_info, %struct.via_info* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @snd_mtxunlock(i32 %213)
  store i32 0, i32* %6, align 4
  br label %215

215:                                              ; preds = %238, %210
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @NDXSCHANS, align 4
  %218 = load i32, i32* @NMSGDCHANS, align 4
  %219 = add nsw i32 %217, %218
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %221, label %241

221:                                              ; preds = %215
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* %6, align 4
  %224 = shl i32 1, %223
  %225 = and i32 %222, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %221
  %228 = load %struct.via_info*, %struct.via_info** %3, align 8
  %229 = getelementptr inbounds %struct.via_info, %struct.via_info* %228, i32 0, i32 2
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @chn_intr(i32* %235)
  br label %237

237:                                              ; preds = %227, %221
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %6, align 4
  br label %215

241:                                              ; preds = %215
  store i32 0, i32* %6, align 4
  br label %242

242:                                              ; preds = %263, %241
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* @NWRCHANS, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %266

246:                                              ; preds = %242
  %247 = load i32, i32* %5, align 4
  %248 = load i32, i32* %6, align 4
  %249 = shl i32 1, %248
  %250 = and i32 %247, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %246
  %253 = load %struct.via_info*, %struct.via_info** %3, align 8
  %254 = getelementptr inbounds %struct.via_info, %struct.via_info* %253, i32 0, i32 1
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %254, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  %261 = call i32 @chn_intr(i32* %260)
  br label %262

262:                                              ; preds = %252, %246
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %6, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %6, align 4
  br label %242

266:                                              ; preds = %19, %242
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @via_rd(%struct.via_info*, i32, i32) #1

declare dso_local i32 @via_wr(%struct.via_info*, i32, i32, i32) #1

declare dso_local i32 @chn_intr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
