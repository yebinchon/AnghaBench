; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_lna_div.c_ath_ant_adjust_fast_divbias.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_lna_div.c_ath_ant_adjust_fast_divbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_ant_comb_state = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@HAL_ANTDIV_CONFIG_GROUP_1 = common dso_local global i64 0, align 8
@ATH_ANT_DIV_COMB_ALT_ANT_RATIO = common dso_local global i32 0, align 4
@HAL_ANTDIV_CONFIG_GROUP_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_ant_comb_state*, i32, i32, i64, %struct.TYPE_3__*)* @ath_ant_adjust_fast_divbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_ant_adjust_fast_divbias(%struct.if_ath_ant_comb_state* %0, i32 %1, i32 %2, i64 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca %struct.if_ath_ant_comb_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store %struct.if_ath_ant_comb_state* %0, %struct.if_ath_ant_comb_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* @HAL_ANTDIV_CONFIG_GROUP_1, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %161

14:                                               ; preds = %5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  switch i32 %22, label %159 [
    i32 1, label %23
    i32 2, label %30
    i32 3, label %37
    i32 16, label %44
    i32 18, label %64
    i32 19, label %71
    i32 32, label %91
    i32 33, label %111
    i32 35, label %118
    i32 48, label %138
    i32 49, label %145
    i32 50, label %152
  ]

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 1, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  br label %160

30:                                               ; preds = %14
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 1, i32* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i32 0, i32* %34, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i32 0, i32* %36, align 4
  br label %160

37:                                               ; preds = %14
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 1, i32* %39, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store i32 0, i32* %41, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  br label %160

44:                                               ; preds = %14
  %45 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %46 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32 63, i32* %55, align 4
  br label %59

56:                                               ; preds = %49, %44
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  store i32 0, i32* %61, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  br label %160

64:                                               ; preds = %14
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 1, i32* %66, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  store i32 0, i32* %68, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  store i32 0, i32* %70, align 4
  br label %160

71:                                               ; preds = %14
  %72 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %73 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 63, i32* %82, align 4
  br label %86

83:                                               ; preds = %76, %71
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  store i32 0, i32* %88, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  store i32 0, i32* %90, align 4
  br label %160

91:                                               ; preds = %14
  %92 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %93 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  store i32 63, i32* %102, align 4
  br label %106

103:                                              ; preds = %96, %91
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  store i32 0, i32* %108, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  store i32 0, i32* %110, align 4
  br label %160

111:                                              ; preds = %14
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store i32 1, i32* %113, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  store i32 0, i32* %115, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  store i32 0, i32* %117, align 4
  br label %160

118:                                              ; preds = %14
  %119 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %120 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  store i32 63, i32* %129, align 4
  br label %133

130:                                              ; preds = %123, %118
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  store i32 0, i32* %135, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  store i32 0, i32* %137, align 4
  br label %160

138:                                              ; preds = %14
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  store i32 1, i32* %140, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 4
  store i32 0, i32* %142, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 3
  store i32 0, i32* %144, align 4
  br label %160

145:                                              ; preds = %14
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  store i32 1, i32* %147, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  store i32 0, i32* %149, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  store i32 0, i32* %151, align 4
  br label %160

152:                                              ; preds = %14
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  store i32 1, i32* %154, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  store i32 0, i32* %156, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  store i32 0, i32* %158, align 4
  br label %160

159:                                              ; preds = %14
  br label %160

160:                                              ; preds = %159, %152, %145, %138, %133, %111, %106, %86, %64, %59, %37, %30, %23
  br label %360

161:                                              ; preds = %5
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* @HAL_ANTDIV_CONFIG_GROUP_2, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %312

165:                                              ; preds = %161
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %169, %172
  switch i32 %173, label %310 [
    i32 1, label %174
    i32 2, label %181
    i32 3, label %188
    i32 16, label %195
    i32 18, label %215
    i32 19, label %222
    i32 32, label %242
    i32 33, label %262
    i32 35, label %269
    i32 48, label %289
    i32 49, label %296
    i32 50, label %303
  ]

174:                                              ; preds = %165
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  store i32 1, i32* %176, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 4
  store i32 0, i32* %178, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 3
  store i32 0, i32* %180, align 4
  br label %311

181:                                              ; preds = %165
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  store i32 1, i32* %183, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 4
  store i32 0, i32* %185, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 3
  store i32 0, i32* %187, align 4
  br label %311

188:                                              ; preds = %165
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  store i32 1, i32* %190, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 4
  store i32 0, i32* %192, align 4
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 3
  store i32 0, i32* %194, align 4
  br label %311

195:                                              ; preds = %165
  %196 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %197 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 2
  store i32 1, i32* %206, align 4
  br label %210

207:                                              ; preds = %200, %195
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  store i32 2, i32* %209, align 4
  br label %210

210:                                              ; preds = %207, %204
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 4
  store i32 0, i32* %212, align 4
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 3
  store i32 0, i32* %214, align 4
  br label %311

215:                                              ; preds = %165
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 2
  store i32 1, i32* %217, align 4
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 4
  store i32 0, i32* %219, align 4
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 3
  store i32 0, i32* %221, align 4
  br label %311

222:                                              ; preds = %165
  %223 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %224 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %222
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* %8, align 4
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 2
  store i32 1, i32* %233, align 4
  br label %237

234:                                              ; preds = %227, %222
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 2
  store i32 2, i32* %236, align 4
  br label %237

237:                                              ; preds = %234, %231
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 4
  store i32 0, i32* %239, align 4
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 3
  store i32 0, i32* %241, align 4
  br label %311

242:                                              ; preds = %165
  %243 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %244 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %242
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %8, align 4
  %250 = icmp sgt i32 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 2
  store i32 1, i32* %253, align 4
  br label %257

254:                                              ; preds = %247, %242
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 2
  store i32 2, i32* %256, align 4
  br label %257

257:                                              ; preds = %254, %251
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 4
  store i32 0, i32* %259, align 4
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 3
  store i32 0, i32* %261, align 4
  br label %311

262:                                              ; preds = %165
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 2
  store i32 1, i32* %264, align 4
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 4
  store i32 0, i32* %266, align 4
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 3
  store i32 0, i32* %268, align 4
  br label %311

269:                                              ; preds = %165
  %270 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %271 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %269
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* %8, align 4
  %277 = icmp sgt i32 %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 2
  store i32 1, i32* %280, align 4
  br label %284

281:                                              ; preds = %274, %269
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 2
  store i32 2, i32* %283, align 4
  br label %284

284:                                              ; preds = %281, %278
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 4
  store i32 0, i32* %286, align 4
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 3
  store i32 0, i32* %288, align 4
  br label %311

289:                                              ; preds = %165
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 2
  store i32 1, i32* %291, align 4
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 4
  store i32 0, i32* %293, align 4
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 3
  store i32 0, i32* %295, align 4
  br label %311

296:                                              ; preds = %165
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 2
  store i32 1, i32* %298, align 4
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 4
  store i32 0, i32* %300, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 3
  store i32 0, i32* %302, align 4
  br label %311

303:                                              ; preds = %165
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 2
  store i32 1, i32* %305, align 4
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 4
  store i32 0, i32* %307, align 4
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 3
  store i32 0, i32* %309, align 4
  br label %311

310:                                              ; preds = %165
  br label %311

311:                                              ; preds = %310, %303, %296, %289, %284, %262, %257, %237, %215, %210, %188, %181, %174
  br label %359

312:                                              ; preds = %161
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = shl i32 %315, 4
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %316, %319
  switch i32 %320, label %357 [
    i32 1, label %321
    i32 2, label %324
    i32 3, label %327
    i32 16, label %330
    i32 18, label %333
    i32 19, label %336
    i32 32, label %339
    i32 33, label %342
    i32 35, label %345
    i32 48, label %348
    i32 49, label %351
    i32 50, label %354
  ]

321:                                              ; preds = %312
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 2
  store i32 59, i32* %323, align 4
  br label %358

324:                                              ; preds = %312
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 2
  store i32 61, i32* %326, align 4
  br label %358

327:                                              ; preds = %312
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 2
  store i32 1, i32* %329, align 4
  br label %358

330:                                              ; preds = %312
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 2
  store i32 7, i32* %332, align 4
  br label %358

333:                                              ; preds = %312
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 2
  store i32 2, i32* %335, align 4
  br label %358

336:                                              ; preds = %312
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 2
  store i32 7, i32* %338, align 4
  br label %358

339:                                              ; preds = %312
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 2
  store i32 6, i32* %341, align 4
  br label %358

342:                                              ; preds = %312
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 2
  store i32 0, i32* %344, align 4
  br label %358

345:                                              ; preds = %312
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 2
  store i32 6, i32* %347, align 4
  br label %358

348:                                              ; preds = %312
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 2
  store i32 1, i32* %350, align 4
  br label %358

351:                                              ; preds = %312
  %352 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 2
  store i32 59, i32* %353, align 4
  br label %358

354:                                              ; preds = %312
  %355 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 2
  store i32 61, i32* %356, align 4
  br label %358

357:                                              ; preds = %312
  br label %358

358:                                              ; preds = %357, %354, %351, %348, %345, %342, %339, %336, %333, %330, %327, %324, %321
  br label %359

359:                                              ; preds = %358, %311
  br label %360

360:                                              ; preds = %359, %160
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
