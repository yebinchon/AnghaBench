; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_lna_div.c_ath_select_ant_div_from_quick_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_lna_div.c_ath_select_ant_div_from_quick_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_ant_comb_state = type { i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@HAL_ANT_DIV_COMB_LNA1 = common dso_local global i8* null, align 8
@ATH_ANT_DIV_COMB_LNA1_DELTA_HI = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_LNA1_DELTA_LOW = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i8* null, align 8
@AH_FALSE = common dso_local global i8* null, align 8
@HAL_ANT_DIV_COMB_LNA2 = common dso_local global i8* null, align 8
@ATH_ANT_DIV_COMB_LNA1_DELTA_MID = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_ALT_ANT_RATIO2 = common dso_local global i32 0, align 4
@HAL_ANT_DIV_COMB_LNA1_PLUS_LNA2 = common dso_local global i8* null, align 8
@ATH_ANT_DIV_COMB_LNA1_LNA2_SWITCH_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_ant_comb_state*, %struct.TYPE_3__*, i32, i32, i32)* @ath_select_ant_div_from_quick_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_select_ant_div_from_quick_scan(%struct.if_ath_ant_comb_state* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.if_ath_ant_comb_state*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.if_ath_ant_comb_state* %0, %struct.if_ath_ant_comb_state** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %12 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %489 [
    i32 0, label %14
    i32 1, label %25
    i32 2, label %123
  ]

14:                                               ; preds = %5
  %15 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %16 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %21 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %490

25:                                               ; preds = %5
  %26 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %27 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %32 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %38 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %41 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %43 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %25
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %50 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %54 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ath_is_alt_ant_ratio_better(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i8*, i8** @AH_TRUE, align 8
  %60 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %61 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %60, i32 0, i32 11
  store i8* %59, i8** %61, align 8
  br label %66

62:                                               ; preds = %47
  %63 = load i8*, i8** @AH_FALSE, align 8
  %64 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %65 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %64, i32 0, i32 11
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  br label %122

67:                                               ; preds = %25
  %68 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %69 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_MID, align 4
  %76 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %80 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ath_is_alt_ant_ratio_better(i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load i8*, i8** @AH_TRUE, align 8
  %86 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %87 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %86, i32 0, i32 11
  store i8* %85, i8** %87, align 8
  br label %92

88:                                               ; preds = %73
  %89 = load i8*, i8** @AH_FALSE, align 8
  %90 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %91 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %90, i32 0, i32 11
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %88, %84
  br label %121

93:                                               ; preds = %67
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO2, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %101 = add nsw i32 %99, %100
  %102 = icmp sgt i32 %98, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %97, %93
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103, %97
  %108 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %109 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %110, 50
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i8*, i8** @AH_TRUE, align 8
  %114 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %115 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %114, i32 0, i32 11
  store i8* %113, i8** %115, align 8
  br label %120

116:                                              ; preds = %107, %103
  %117 = load i8*, i8** @AH_FALSE, align 8
  %118 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %119 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %118, i32 0, i32 11
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %92
  br label %122

122:                                              ; preds = %121, %66
  br label %490

123:                                              ; preds = %5
  %124 = load i8*, i8** @AH_FALSE, align 8
  %125 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %126 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %125, i32 0, i32 14
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** @AH_FALSE, align 8
  %128 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %129 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %128, i32 0, i32 13
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** @AH_FALSE, align 8
  %131 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %132 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %131, i32 0, i32 12
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %135 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %138 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 4
  %139 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %140 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %143 = icmp eq i8* %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %123
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %147 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 8
  br label %188

148:                                              ; preds = %123
  %149 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %150 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %153 = icmp eq i8* %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %157 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %156, i32 0, i32 9
  store i32 %155, i32* %157, align 4
  br label %187

158:                                              ; preds = %148
  %159 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %160 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1_PLUS_LNA2, align 8
  %163 = icmp eq i8* %161, %162
  br i1 %163, label %164, label %186

164:                                              ; preds = %158
  %165 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %166 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %169 = icmp eq i8* %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %173 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %172, i32 0, i32 9
  store i32 %171, i32* %173, align 4
  br label %185

174:                                              ; preds = %164
  %175 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %176 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %179 = icmp eq i8* %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %183 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %182, i32 0, i32 8
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %180, %174
  br label %185

185:                                              ; preds = %184, %170
  br label %186

186:                                              ; preds = %185, %158
  br label %187

187:                                              ; preds = %186, %154
  br label %188

188:                                              ; preds = %187, %144
  %189 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %190 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %193 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_LNA2_SWITCH_DELTA, align 4
  %196 = add nsw i32 %194, %195
  %197 = icmp sgt i32 %191, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %188
  %199 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  store i8* %199, i8** %201, align 8
  br label %206

202:                                              ; preds = %188
  %203 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i8* %203, i8** %205, align 8
  br label %206

206:                                              ; preds = %202, %198
  %207 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %208 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %211 = icmp eq i8* %209, %210
  br i1 %211, label %212, label %232

212:                                              ; preds = %206
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %215 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %219 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @ath_is_alt_ant_ratio_better(i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %212
  %224 = load i8*, i8** @AH_TRUE, align 8
  %225 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %226 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %225, i32 0, i32 10
  store i8* %224, i8** %226, align 8
  br label %231

227:                                              ; preds = %212
  %228 = load i8*, i8** @AH_FALSE, align 8
  %229 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %230 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %229, i32 0, i32 10
  store i8* %228, i8** %230, align 8
  br label %231

231:                                              ; preds = %227, %223
  br label %287

232:                                              ; preds = %206
  %233 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %234 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %237 = icmp eq i8* %235, %236
  br i1 %237, label %238, label %258

238:                                              ; preds = %232
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_MID, align 4
  %241 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_LOW, align 4
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %9, align 4
  %244 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %245 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @ath_is_alt_ant_ratio_better(i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %238
  %250 = load i8*, i8** @AH_TRUE, align 8
  %251 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %252 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %251, i32 0, i32 10
  store i8* %250, i8** %252, align 8
  br label %257

253:                                              ; preds = %238
  %254 = load i8*, i8** @AH_FALSE, align 8
  %255 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %256 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %255, i32 0, i32 10
  store i8* %254, i8** %256, align 8
  br label %257

257:                                              ; preds = %253, %249
  br label %286

258:                                              ; preds = %232
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO2, align 4
  %261 = icmp sge i32 %259, %260
  br i1 %261, label %262, label %268

262:                                              ; preds = %258
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1_DELTA_HI, align 4
  %266 = add nsw i32 %264, %265
  %267 = icmp sgt i32 %263, %266
  br i1 %267, label %272, label %268

268:                                              ; preds = %262, %258
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %8, align 4
  %271 = icmp sgt i32 %269, %270
  br i1 %271, label %272, label %281

272:                                              ; preds = %268, %262
  %273 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %274 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = icmp sgt i32 %275, 50
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = load i8*, i8** @AH_TRUE, align 8
  %279 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %280 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %279, i32 0, i32 10
  store i8* %278, i8** %280, align 8
  br label %285

281:                                              ; preds = %272, %268
  %282 = load i8*, i8** @AH_FALSE, align 8
  %283 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %284 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %283, i32 0, i32 10
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %281, %277
  br label %286

286:                                              ; preds = %285, %257
  br label %287

287:                                              ; preds = %286, %231
  %288 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %289 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %288, i32 0, i32 11
  %290 = load i8*, i8** %289, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %374

292:                                              ; preds = %287
  %293 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %294 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %293, i32 0, i32 10
  %295 = load i8*, i8** %294, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %374

297:                                              ; preds = %292
  %298 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %299 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %302 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %301, i32 0, i32 7
  %303 = load i32, i32* %302, align 4
  %304 = icmp sgt i32 %300, %303
  br i1 %304, label %305, label %339

305:                                              ; preds = %297
  %306 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %307 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %306, i32 0, i32 2
  %308 = load i8*, i8** %307, align 8
  %309 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %310 = icmp eq i8* %308, %309
  br i1 %310, label %317, label %311

311:                                              ; preds = %305
  %312 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %313 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %312, i32 0, i32 2
  %314 = load i8*, i8** %313, align 8
  %315 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %316 = icmp eq i8* %314, %315
  br i1 %316, label %317, label %332

317:                                              ; preds = %311, %305
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %322 = icmp eq i8* %320, %321
  br i1 %322, label %323, label %327

323:                                              ; preds = %317
  %324 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 1
  store i8* %324, i8** %326, align 8
  br label %331

327:                                              ; preds = %317
  %328 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 1
  store i8* %328, i8** %330, align 8
  br label %331

331:                                              ; preds = %327, %323
  br label %338

332:                                              ; preds = %311
  %333 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %334 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %333, i32 0, i32 2
  %335 = load i8*, i8** %334, align 8
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 1
  store i8* %335, i8** %337, align 8
  br label %338

338:                                              ; preds = %332, %331
  br label %373

339:                                              ; preds = %297
  %340 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %341 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %340, i32 0, i32 3
  %342 = load i8*, i8** %341, align 8
  %343 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %344 = icmp eq i8* %342, %343
  br i1 %344, label %351, label %345

345:                                              ; preds = %339
  %346 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %347 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %346, i32 0, i32 3
  %348 = load i8*, i8** %347, align 8
  %349 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %350 = icmp eq i8* %348, %349
  br i1 %350, label %351, label %366

351:                                              ; preds = %345, %339
  %352 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 0
  %354 = load i8*, i8** %353, align 8
  %355 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %356 = icmp eq i8* %354, %355
  br i1 %356, label %357, label %361

357:                                              ; preds = %351
  %358 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %359 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 1
  store i8* %358, i8** %360, align 8
  br label %365

361:                                              ; preds = %351
  %362 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %363 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %363, i32 0, i32 1
  store i8* %362, i8** %364, align 8
  br label %365

365:                                              ; preds = %361, %357
  br label %372

366:                                              ; preds = %345
  %367 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %368 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %367, i32 0, i32 3
  %369 = load i8*, i8** %368, align 8
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 1
  store i8* %369, i8** %371, align 8
  br label %372

372:                                              ; preds = %366, %365
  br label %373

373:                                              ; preds = %372, %338
  br label %488

374:                                              ; preds = %292, %287
  %375 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %376 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %375, i32 0, i32 11
  %377 = load i8*, i8** %376, align 8
  %378 = icmp ne i8* %377, null
  br i1 %378, label %379, label %413

379:                                              ; preds = %374
  %380 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %381 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %380, i32 0, i32 2
  %382 = load i8*, i8** %381, align 8
  %383 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %384 = icmp eq i8* %382, %383
  br i1 %384, label %391, label %385

385:                                              ; preds = %379
  %386 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %387 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %386, i32 0, i32 2
  %388 = load i8*, i8** %387, align 8
  %389 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %390 = icmp eq i8* %388, %389
  br i1 %390, label %391, label %406

391:                                              ; preds = %385, %379
  %392 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 0
  %394 = load i8*, i8** %393, align 8
  %395 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %396 = icmp eq i8* %394, %395
  br i1 %396, label %397, label %401

397:                                              ; preds = %391
  %398 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 1
  store i8* %398, i8** %400, align 8
  br label %405

401:                                              ; preds = %391
  %402 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %403 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 1
  store i8* %402, i8** %404, align 8
  br label %405

405:                                              ; preds = %401, %397
  br label %412

406:                                              ; preds = %385
  %407 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %408 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %407, i32 0, i32 2
  %409 = load i8*, i8** %408, align 8
  %410 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i32 0, i32 1
  store i8* %409, i8** %411, align 8
  br label %412

412:                                              ; preds = %406, %405
  br label %487

413:                                              ; preds = %374
  %414 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %415 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %414, i32 0, i32 10
  %416 = load i8*, i8** %415, align 8
  %417 = icmp ne i8* %416, null
  br i1 %417, label %418, label %452

418:                                              ; preds = %413
  %419 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %420 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %419, i32 0, i32 3
  %421 = load i8*, i8** %420, align 8
  %422 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %423 = icmp eq i8* %421, %422
  br i1 %423, label %430, label %424

424:                                              ; preds = %418
  %425 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %426 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %425, i32 0, i32 3
  %427 = load i8*, i8** %426, align 8
  %428 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %429 = icmp eq i8* %427, %428
  br i1 %429, label %430, label %445

430:                                              ; preds = %424, %418
  %431 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %431, i32 0, i32 0
  %433 = load i8*, i8** %432, align 8
  %434 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %435 = icmp eq i8* %433, %434
  br i1 %435, label %436, label %440

436:                                              ; preds = %430
  %437 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %438 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 1
  store i8* %437, i8** %439, align 8
  br label %444

440:                                              ; preds = %430
  %441 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %442 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %442, i32 0, i32 1
  store i8* %441, i8** %443, align 8
  br label %444

444:                                              ; preds = %440, %436
  br label %451

445:                                              ; preds = %424
  %446 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %447 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %446, i32 0, i32 3
  %448 = load i8*, i8** %447, align 8
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 1
  store i8* %448, i8** %450, align 8
  br label %451

451:                                              ; preds = %445, %444
  br label %486

452:                                              ; preds = %413
  %453 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %454 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %453, i32 0, i32 1
  %455 = load i8*, i8** %454, align 8
  %456 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %457 = icmp eq i8* %455, %456
  br i1 %457, label %464, label %458

458:                                              ; preds = %452
  %459 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %460 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %459, i32 0, i32 1
  %461 = load i8*, i8** %460, align 8
  %462 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %463 = icmp eq i8* %461, %462
  br i1 %463, label %464, label %479

464:                                              ; preds = %458, %452
  %465 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %465, i32 0, i32 0
  %467 = load i8*, i8** %466, align 8
  %468 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %469 = icmp eq i8* %467, %468
  br i1 %469, label %470, label %474

470:                                              ; preds = %464
  %471 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA1, align 8
  %472 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %473 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %472, i32 0, i32 1
  store i8* %471, i8** %473, align 8
  br label %478

474:                                              ; preds = %464
  %475 = load i8*, i8** @HAL_ANT_DIV_COMB_LNA2, align 8
  %476 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 1
  store i8* %475, i8** %477, align 8
  br label %478

478:                                              ; preds = %474, %470
  br label %485

479:                                              ; preds = %458
  %480 = load %struct.if_ath_ant_comb_state*, %struct.if_ath_ant_comb_state** %6, align 8
  %481 = getelementptr inbounds %struct.if_ath_ant_comb_state, %struct.if_ath_ant_comb_state* %480, i32 0, i32 1
  %482 = load i8*, i8** %481, align 8
  %483 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %483, i32 0, i32 1
  store i8* %482, i8** %484, align 8
  br label %485

485:                                              ; preds = %479, %478
  br label %486

486:                                              ; preds = %485, %451
  br label %487

487:                                              ; preds = %486, %412
  br label %488

488:                                              ; preds = %487, %373
  br label %490

489:                                              ; preds = %5
  br label %490

490:                                              ; preds = %489, %488, %122, %14
  ret void
}

declare dso_local i32 @ath_is_alt_ant_ratio_better(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
