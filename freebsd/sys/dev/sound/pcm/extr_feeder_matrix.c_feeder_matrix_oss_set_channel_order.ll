; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_oss_set_channel_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_oss_set_channel_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_matrix = type { i32, i32, i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SND_CHN_OSS_VALIDMASK = common dso_local global i32 0, align 4
@SND_CHN_OSS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_CHN_OSS_BEGIN = common dso_local global i32 0, align 4
@SND_CHN_T_MAX = common dso_local global i32 0, align 4
@SND_CHN_OSS_END = common dso_local global i32 0, align 4
@oss_to_snd_chn = common dso_local global i32* null, align 8
@SND_CHN_T_MASK_LF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @feeder_matrix_oss_set_channel_order(%struct.pcmchan_matrix* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmchan_matrix*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.pcmchan_matrix, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcmchan_matrix* %0, %struct.pcmchan_matrix** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %12 = icmp eq %struct.pcmchan_matrix* %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = load i64*, i64** %5, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  %17 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %18 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SND_CHN_OSS_VALIDMASK, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %16
  %25 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %26 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SND_CHN_OSS_MAX, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %32, -4294967296
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %24, %16, %13, %2
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %228

37:                                               ; preds = %30
  %38 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %39 = bitcast %struct.pcmchan_matrix* %6 to i8*
  %40 = bitcast %struct.pcmchan_matrix* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 32, i1 false)
  %41 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 3
  %45 = load i64*, i64** %44, align 8
  %46 = call i32 @memset(i64* %45, i32 -1, i32 8)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %186, %37
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SND_CHN_OSS_MAX, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %189

51:                                               ; preds = %47
  %52 = load i64*, i64** %5, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %54, 4
  %56 = zext i32 %55 to i64
  %57 = lshr i64 %53, %56
  %58 = and i64 %57, 15
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @SND_CHN_OSS_BEGIN, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %51
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %68 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SND_CHN_T_MAX, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %3, align 4
  br label %228

79:                                               ; preds = %66, %63
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %88 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %87, i32 0, i32 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = bitcast %struct.TYPE_2__* %86 to i8*
  %94 = bitcast %struct.TYPE_2__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 4, i1 false)
  br label %186

95:                                               ; preds = %51
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @SND_CHN_OSS_END, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %3, align 4
  br label %228

101:                                              ; preds = %95
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %3, align 4
  br label %228

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  %109 = load i32*, i32** @oss_to_snd_chn, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = shl i32 1, %114
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %118 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %108
  %123 = load i32, i32* @EINVAL, align 4
  store i32 %123, i32* %3, align 4
  br label %228

124:                                              ; preds = %108
  %125 = load i32, i32* %7, align 4
  %126 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @EINVAL, align 4
  store i32 %131, i32* %3, align 4
  br label %228

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %139 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %138, i32 0, i32 4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %142 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %141, i32 0, i32 3
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %147
  %149 = bitcast %struct.TYPE_2__* %137 to i8*
  %150 = bitcast %struct.TYPE_2__* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 4, i1 false)
  %151 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 4
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %132
  %161 = load i32, i32* @EINVAL, align 4
  store i32 %161, i32* %3, align 4
  br label %228

162:                                              ; preds = %132
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 3
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  store i64 %164, i64* %169, align 8
  %170 = load i32, i32* %7, align 4
  %171 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %170
  store i32 %173, i32* %171, align 8
  %174 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @SND_CHN_T_MASK_LF, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %162
  %182 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %182, align 8
  br label %185

185:                                              ; preds = %181, %162
  br label %186

186:                                              ; preds = %185, %79
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %47

189:                                              ; preds = %47
  %190 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %193 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %191, %194
  br i1 %195, label %222, label %196

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %200 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %198, %201
  br i1 %202, label %222, label %203

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %207 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %205, %208
  br i1 %209, label %222, label %210

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %6, i32 0, i32 4
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %214 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @SND_CHN_T_MAX, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %210, %203, %196, %189
  %223 = load i32, i32* @EINVAL, align 4
  store i32 %223, i32* %3, align 4
  br label %228

224:                                              ; preds = %210
  %225 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %226 = bitcast %struct.pcmchan_matrix* %225 to i8*
  %227 = bitcast %struct.pcmchan_matrix* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %226, i8* align 8 %227, i64 32, i1 false)
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %224, %222, %160, %130, %122, %104, %99, %77, %35
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i64*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
