; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_voistatdata_hist_tostr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_voistatdata_hist_tostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.voistatdata_numeric = type { i32 }
%struct.voistatdata_hist = type { i32 }
%struct.sbuf = type { i32 }
%struct.voistatdata = type { i32 }

@crhist32 = common dso_local global i32 0, align 4
@drhist32 = common dso_local global i32 0, align 4
@dvhist32 = common dso_local global i32 0, align 4
@crhist64 = common dso_local global i32 0, align 4
@drhist64 = common dso_local global i32 0, align 4
@dvhist64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"nbkts=%hu, \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\22nbkts\22:%hu,\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"oob=%u\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"oob=%ju\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\22oob\22:%u,\22bkts\22:[\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\22oob\22:%ju,\22bkts\22:[\00", align 1
@oob = common dso_local global i32 0, align 4
@bkts = common dso_local global %struct.TYPE_2__* null, align 8
@numeric_limits = common dso_local global %struct.voistatdata_numeric** null, align 8
@LIM_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"\0A\09\09\09\09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"bkt[%hu].\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"\22bkt\22:%hu,\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"{lb=\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\22lb\22:\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c",ub=\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c",\22ub\22:\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c",cnt=%u}\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c",cnt=%ju}\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c",\22cnt\22:%u}\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c",\22cnt\22:%ju}\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.voistatdata_hist*, i32, i64, i32, %struct.sbuf*, i32)* @stats_voistatdata_hist_tostr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_voistatdata_hist_tostr(i32 %0, %struct.voistatdata_hist* %1, i32 %2, i64 %3, i32 %4, %struct.sbuf* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.voistatdata_hist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.voistatdata_numeric*, align 8
  %16 = alloca %struct.voistatdata_numeric*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store %struct.voistatdata_hist* %1, %struct.voistatdata_hist** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.sbuf* %5, %struct.sbuf** %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %46 [
    i32 133, label %22
    i32 131, label %26
    i32 129, label %30
    i32 132, label %34
    i32 130, label %38
    i32 128, label %42
  ]

22:                                               ; preds = %7
  %23 = load i32, i32* @crhist32, align 4
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @HIST_VSDSZ2NBKTS(i32 %23, i64 %24)
  store i64 %25, i64* %20, align 8
  store i32 1, i32* %18, align 4
  br label %47

26:                                               ; preds = %7
  %27 = load i32, i32* @drhist32, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @HIST_VSDSZ2NBKTS(i32 %27, i64 %28)
  store i64 %29, i64* %20, align 8
  store i32 1, i32* %18, align 4
  br label %47

30:                                               ; preds = %7
  %31 = load i32, i32* @dvhist32, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @HIST_VSDSZ2NBKTS(i32 %31, i64 %32)
  store i64 %33, i64* %20, align 8
  store i32 1, i32* %18, align 4
  br label %47

34:                                               ; preds = %7
  %35 = load i32, i32* @crhist64, align 4
  %36 = load i64, i64* %11, align 8
  %37 = call i64 @HIST_VSDSZ2NBKTS(i32 %35, i64 %36)
  store i64 %37, i64* %20, align 8
  store i32 0, i32* %18, align 4
  br label %47

38:                                               ; preds = %7
  %39 = load i32, i32* @drhist64, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @HIST_VSDSZ2NBKTS(i32 %39, i64 %40)
  store i64 %41, i64* %20, align 8
  store i32 0, i32* %18, align 4
  br label %47

42:                                               ; preds = %7
  %43 = load i32, i32* @dvhist64, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @HIST_VSDSZ2NBKTS(i32 %43, i64 %44)
  store i64 %45, i64* %20, align 8
  store i32 0, i32* %18, align 4
  br label %47

46:                                               ; preds = %7
  br label %264

47:                                               ; preds = %42, %38, %34, %30, %26, %22
  %48 = load i32, i32* %12, align 4
  switch i32 %48, label %51 [
    i32 135, label %49
    i32 134, label %50
  ]

49:                                               ; preds = %47
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %52

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %47, %50
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %52

52:                                               ; preds = %51, %49
  %53 = load %struct.sbuf*, %struct.sbuf** %13, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i64, i64* %20, align 8
  %56 = call i32 @sbuf_printf(%struct.sbuf* %53, i8* %54, i64 %55)
  %57 = load i32, i32* %12, align 4
  switch i32 %57, label %64 [
    i32 135, label %58
    i32 134, label %63
  ]

58:                                               ; preds = %52
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  store i8* %62, i8** %17, align 8
  br label %69

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %52, %63
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)
  store i8* %68, i8** %17, align 8
  br label %69

69:                                               ; preds = %64, %58
  %70 = load %struct.sbuf*, %struct.sbuf** %13, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @oob, align 4
  %78 = call i64 @VSD_CONSTHIST_FIELDVAL(%struct.voistatdata_hist* %75, i32 %76, i32 %77)
  br label %84

79:                                               ; preds = %69
  %80 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @oob, align 4
  %83 = call i64 @VSD_CONSTHIST_FIELDVAL(%struct.voistatdata_hist* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i64 [ %78, %74 ], [ %83, %79 ]
  %86 = call i32 @sbuf_printf(%struct.sbuf* %70, i8* %71, i64 %85)
  store i64 0, i64* %19, align 8
  br label %87

87:                                               ; preds = %255, %84
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %20, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %258

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  switch i32 %92, label %151 [
    i32 133, label %93
    i32 132, label %93
    i32 131, label %125
    i32 130, label %125
    i32 129, label %142
    i32 128, label %142
  ]

93:                                               ; preds = %91, %91
  %94 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bkts, align 8
  %97 = load i64, i64* %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.voistatdata_numeric* @VSD_CONSTCRHIST_FIELDPTR(%struct.voistatdata_hist* %94, i32 %95, i32 %100)
  store %struct.voistatdata_numeric* %101, %struct.voistatdata_numeric** %15, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %20, align 8
  %104 = sub i64 %103, 1
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %93
  %107 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bkts, align 8
  %110 = load i64, i64* %19, align 8
  %111 = add i64 %110, 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.voistatdata_numeric* @VSD_CONSTCRHIST_FIELDPTR(%struct.voistatdata_hist* %107, i32 %108, i32 %114)
  store %struct.voistatdata_numeric* %115, %struct.voistatdata_numeric** %16, align 8
  br label %124

116:                                              ; preds = %93
  %117 = load %struct.voistatdata_numeric**, %struct.voistatdata_numeric*** @numeric_limits, align 8
  %118 = load i64, i64* @LIM_MAX, align 8
  %119 = getelementptr inbounds %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %117, i64 %118
  %120 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %120, i64 %122
  store %struct.voistatdata_numeric* %123, %struct.voistatdata_numeric** %16, align 8
  br label %124

124:                                              ; preds = %116, %106
  br label %152

125:                                              ; preds = %91, %91
  %126 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bkts, align 8
  %129 = load i64, i64* %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call %struct.voistatdata_numeric* @VSD_CONSTDRHIST_FIELDPTR(%struct.voistatdata_hist* %126, i32 %127, i32 %132)
  store %struct.voistatdata_numeric* %133, %struct.voistatdata_numeric** %15, align 8
  %134 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bkts, align 8
  %137 = load i64, i64* %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call %struct.voistatdata_numeric* @VSD_CONSTDRHIST_FIELDPTR(%struct.voistatdata_hist* %134, i32 %135, i32 %140)
  store %struct.voistatdata_numeric* %141, %struct.voistatdata_numeric** %16, align 8
  br label %152

142:                                              ; preds = %91, %91
  %143 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bkts, align 8
  %146 = load i64, i64* %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call %struct.voistatdata_numeric* @VSD_CONSTDVHIST_FIELDPTR(%struct.voistatdata_hist* %143, i32 %144, i32 %149)
  store %struct.voistatdata_numeric* %150, %struct.voistatdata_numeric** %16, align 8
  store %struct.voistatdata_numeric* %150, %struct.voistatdata_numeric** %15, align 8
  br label %152

151:                                              ; preds = %91
  br label %152

152:                                              ; preds = %151, %142, %125, %124
  %153 = load i32, i32* %12, align 4
  switch i32 %153, label %156 [
    i32 135, label %154
    i32 134, label %155
  ]

154:                                              ; preds = %152
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %157

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %152, %155
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %17, align 8
  br label %157

157:                                              ; preds = %156, %154
  %158 = load %struct.sbuf*, %struct.sbuf** %13, align 8
  %159 = load i8*, i8** %17, align 8
  %160 = call i32 @sbuf_cat(%struct.sbuf* %158, i8* %159)
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = load i32, i32* %12, align 4
  switch i32 %164, label %167 [
    i32 135, label %165
    i32 134, label %166
  ]

165:                                              ; preds = %163
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %17, align 8
  br label %168

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %163, %166
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %17, align 8
  br label %168

168:                                              ; preds = %167, %165
  %169 = load %struct.sbuf*, %struct.sbuf** %13, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = load i64, i64* %19, align 8
  %172 = call i32 @sbuf_printf(%struct.sbuf* %169, i8* %170, i64 %171)
  br label %173

173:                                              ; preds = %168, %157
  %174 = load i32, i32* %12, align 4
  switch i32 %174, label %177 [
    i32 135, label %175
    i32 134, label %176
  ]

175:                                              ; preds = %173
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %17, align 8
  br label %178

176:                                              ; preds = %173
  br label %177

177:                                              ; preds = %173, %176
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %17, align 8
  br label %178

178:                                              ; preds = %177, %175
  %179 = load %struct.sbuf*, %struct.sbuf** %13, align 8
  %180 = load i8*, i8** %17, align 8
  %181 = call i32 @sbuf_cat(%struct.sbuf* %179, i8* %180)
  %182 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %15, align 8
  %183 = bitcast %struct.voistatdata_numeric* %182 to %struct.voistatdata*
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.sbuf*, %struct.sbuf** %13, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @stats_voistatdata_tostr(%struct.voistatdata* %183, i32 %184, i32 %185, i32 4, i32 %186, %struct.sbuf* %187, i32 %188)
  %190 = load i32, i32* %12, align 4
  switch i32 %190, label %193 [
    i32 135, label %191
    i32 134, label %192
  ]

191:                                              ; preds = %178
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %17, align 8
  br label %194

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %178, %192
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %17, align 8
  br label %194

194:                                              ; preds = %193, %191
  %195 = load %struct.sbuf*, %struct.sbuf** %13, align 8
  %196 = load i8*, i8** %17, align 8
  %197 = call i32 @sbuf_cat(%struct.sbuf* %195, i8* %196)
  %198 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %16, align 8
  %199 = bitcast %struct.voistatdata_numeric* %198 to %struct.voistatdata*
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.sbuf*, %struct.sbuf** %13, align 8
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @stats_voistatdata_tostr(%struct.voistatdata* %199, i32 %200, i32 %201, i32 4, i32 %202, %struct.sbuf* %203, i32 %204)
  %206 = load i32, i32* %12, align 4
  switch i32 %206, label %213 [
    i32 135, label %207
    i32 134, label %212
  ]

207:                                              ; preds = %194
  %208 = load i32, i32* %18, align 4
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)
  store i8* %211, i8** %17, align 8
  br label %218

212:                                              ; preds = %194
  br label %213

213:                                              ; preds = %194, %212
  %214 = load i32, i32* %18, align 4
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0)
  store i8* %217, i8** %17, align 8
  br label %218

218:                                              ; preds = %213, %207
  %219 = load %struct.sbuf*, %struct.sbuf** %13, align 8
  %220 = load i8*, i8** %17, align 8
  %221 = load i32, i32* %18, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %218
  %224 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %225 = load i32, i32* %10, align 4
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bkts, align 8
  %227 = load i64, i64* %19, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @VSD_CONSTHIST_FIELDVAL(%struct.voistatdata_hist* %224, i32 %225, i32 %230)
  br label %241

232:                                              ; preds = %218
  %233 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %234 = load i32, i32* %10, align 4
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bkts, align 8
  %236 = load i64, i64* %19, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @VSD_CONSTHIST_FIELDVAL(%struct.voistatdata_hist* %233, i32 %234, i32 %239)
  br label %241

241:                                              ; preds = %232, %223
  %242 = phi i64 [ %231, %223 ], [ %240, %232 ]
  %243 = call i32 @sbuf_printf(%struct.sbuf* %219, i8* %220, i64 %242)
  %244 = load i32, i32* %12, align 4
  %245 = icmp eq i32 %244, 134
  br i1 %245, label %246, label %254

246:                                              ; preds = %241
  %247 = load i64, i64* %19, align 8
  %248 = load i64, i64* %20, align 8
  %249 = sub i64 %248, 1
  %250 = icmp ult i64 %247, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = load %struct.sbuf*, %struct.sbuf** %13, align 8
  %253 = call i32 @sbuf_putc(%struct.sbuf* %252, i8 signext 44)
  br label %254

254:                                              ; preds = %251, %246, %241
  br label %255

255:                                              ; preds = %254
  %256 = load i64, i64* %19, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %19, align 8
  br label %87

258:                                              ; preds = %87
  %259 = load i32, i32* %12, align 4
  %260 = icmp eq i32 %259, 134
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load %struct.sbuf*, %struct.sbuf** %13, align 8
  %263 = call i32 @sbuf_cat(%struct.sbuf* %262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %264

264:                                              ; preds = %46, %261, %258
  ret void
}

declare dso_local i64 @HIST_VSDSZ2NBKTS(i32, i64) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i64) #1

declare dso_local i64 @VSD_CONSTHIST_FIELDVAL(%struct.voistatdata_hist*, i32, i32) #1

declare dso_local %struct.voistatdata_numeric* @VSD_CONSTCRHIST_FIELDPTR(%struct.voistatdata_hist*, i32, i32) #1

declare dso_local %struct.voistatdata_numeric* @VSD_CONSTDRHIST_FIELDPTR(%struct.voistatdata_hist*, i32, i32) #1

declare dso_local %struct.voistatdata_numeric* @VSD_CONSTDVHIST_FIELDPTR(%struct.voistatdata_hist*, i32, i32) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @stats_voistatdata_tostr(%struct.voistatdata*, i32, i32, i32, i32, %struct.sbuf*, i32) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
