; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_voi_update_hist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_voi_update_hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voistatdata = type { %struct.TYPE_13__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.voistat = type { i32, i32, i32 }
%struct.voistatdata_hist = type { i32 }
%struct.voistatdata_numeric = type { %struct.TYPE_14__, %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.voistatdata_numeric, %struct.voistatdata_numeric, %struct.voistatdata_numeric }

@crhist32 = common dso_local global i32 0, align 4
@drhist32 = common dso_local global i32 0, align 4
@dvhist32 = common dso_local global i32 0, align 4
@crhist64 = common dso_local global i32 0, align 4
@drhist64 = common dso_local global i32 0, align 4
@dvhist64 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VS_VSDVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.voistatdata*, %struct.voistat*, %struct.voistatdata_hist*)* @stats_v1_voi_update_hist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_v1_voi_update_hist(i32 %0, %struct.voistatdata* %1, %struct.voistat* %2, %struct.voistatdata_hist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.voistatdata*, align 8
  %8 = alloca %struct.voistat*, align 8
  %9 = alloca %struct.voistatdata_hist*, align 8
  %10 = alloca %struct.voistatdata_numeric*, align 8
  %11 = alloca %struct.voistatdata_numeric*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.voistatdata* %1, %struct.voistatdata** %7, align 8
  store %struct.voistat* %2, %struct.voistat** %8, align 8
  store %struct.voistatdata_hist* %3, %struct.voistatdata_hist** %9, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.voistat*, %struct.voistat** %8, align 8
  %23 = getelementptr inbounds %struct.voistat, %struct.voistat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %85 [
    i32 143, label %25
    i32 141, label %35
    i32 139, label %45
    i32 142, label %55
    i32 140, label %65
    i32 138, label %75
  ]

25:                                               ; preds = %4
  %26 = load i32, i32* @crhist32, align 4
  %27 = load %struct.voistat*, %struct.voistat** %8, align 8
  %28 = getelementptr inbounds %struct.voistat, %struct.voistat* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @HIST_VSDSZ2NBKTS(i32 %26, i32 %29)
  store i32 %30, i32* %17, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %31 = load i32, i32* @crhist32, align 4
  %32 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %33 = call %struct.TYPE_15__* @VSD(i32 %31, %struct.voistatdata_hist* %32)
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  store i32* %34, i32** %14, align 8
  br label %87

35:                                               ; preds = %4
  %36 = load i32, i32* @drhist32, align 4
  %37 = load %struct.voistat*, %struct.voistat** %8, align 8
  %38 = getelementptr inbounds %struct.voistat, %struct.voistat* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @HIST_VSDSZ2NBKTS(i32 %36, i32 %39)
  store i32 %40, i32* %17, align 4
  store i32 1, i32* %20, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %41 = load i32, i32* @drhist32, align 4
  %42 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %43 = call %struct.TYPE_15__* @VSD(i32 %41, %struct.voistatdata_hist* %42)
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i32* %44, i32** %14, align 8
  br label %87

45:                                               ; preds = %4
  %46 = load i32, i32* @dvhist32, align 4
  %47 = load %struct.voistat*, %struct.voistat** %8, align 8
  %48 = getelementptr inbounds %struct.voistat, %struct.voistat* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @HIST_VSDSZ2NBKTS(i32 %46, i32 %49)
  store i32 %50, i32* %17, align 4
  store i32 1, i32* %21, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %51 = load i32, i32* @dvhist32, align 4
  %52 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %53 = call %struct.TYPE_15__* @VSD(i32 %51, %struct.voistatdata_hist* %52)
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store i32* %54, i32** %14, align 8
  br label %87

55:                                               ; preds = %4
  %56 = load i32, i32* @crhist64, align 4
  %57 = load %struct.voistat*, %struct.voistat** %8, align 8
  %58 = getelementptr inbounds %struct.voistat, %struct.voistat* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @HIST_VSDSZ2NBKTS(i32 %56, i32 %59)
  store i32 %60, i32* %17, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %61 = load i32, i32* @crhist64, align 4
  %62 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %63 = call %struct.TYPE_15__* @VSD(i32 %61, %struct.voistatdata_hist* %62)
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  store i32* %64, i32** %12, align 8
  br label %87

65:                                               ; preds = %4
  %66 = load i32, i32* @drhist64, align 4
  %67 = load %struct.voistat*, %struct.voistat** %8, align 8
  %68 = getelementptr inbounds %struct.voistat, %struct.voistat* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @HIST_VSDSZ2NBKTS(i32 %66, i32 %69)
  store i32 %70, i32* %17, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %71 = load i32, i32* @drhist64, align 4
  %72 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %73 = call %struct.TYPE_15__* @VSD(i32 %71, %struct.voistatdata_hist* %72)
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i32* %74, i32** %12, align 8
  br label %87

75:                                               ; preds = %4
  %76 = load i32, i32* @dvhist64, align 4
  %77 = load %struct.voistat*, %struct.voistat** %8, align 8
  %78 = getelementptr inbounds %struct.voistat, %struct.voistat* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @HIST_VSDSZ2NBKTS(i32 %76, i32 %79)
  store i32 %80, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 1, i32* %21, align 4
  %81 = load i32, i32* @dvhist64, align 4
  %82 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %83 = call %struct.TYPE_15__* @VSD(i32 %81, %struct.voistatdata_hist* %82)
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i32* %84, i32** %12, align 8
  br label %87

85:                                               ; preds = %4
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %5, align 4
  br label %710

87:                                               ; preds = %75, %65, %55, %45, %35, %25
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %90

90:                                               ; preds = %673, %87
  %91 = load i32, i32* %17, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br label %97

97:                                               ; preds = %93, %90
  %98 = phi i1 [ false, %90 ], [ %96, %93 ]
  br i1 %98, label %99, label %676

99:                                               ; preds = %97
  %100 = load %struct.voistat*, %struct.voistat** %8, align 8
  %101 = getelementptr inbounds %struct.voistat, %struct.voistat* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %235 [
    i32 143, label %103
    i32 141, label %122
    i32 139, label %150
    i32 142, label %169
    i32 140, label %188
    i32 138, label %216
  ]

103:                                              ; preds = %99
  %104 = load i32, i32* @crhist32, align 4
  %105 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %106 = call %struct.TYPE_15__* @VSD(i32 %104, %struct.voistatdata_hist* %105)
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 3
  store %struct.voistatdata_numeric* %112, %struct.voistatdata_numeric** %10, align 8
  %113 = load i32, i32* @crhist32, align 4
  %114 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %115 = call %struct.TYPE_15__* @VSD(i32 %113, %struct.voistatdata_hist* %114)
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  store i32* %121, i32** %15, align 8
  br label %237

122:                                              ; preds = %99
  %123 = load i32, i32* @drhist32, align 4
  %124 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %125 = call %struct.TYPE_15__* @VSD(i32 %123, %struct.voistatdata_hist* %124)
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  store %struct.voistatdata_numeric* %131, %struct.voistatdata_numeric** %10, align 8
  %132 = load i32, i32* @drhist32, align 4
  %133 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %134 = call %struct.TYPE_15__* @VSD(i32 %132, %struct.voistatdata_hist* %133)
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  store %struct.voistatdata_numeric* %140, %struct.voistatdata_numeric** %11, align 8
  %141 = load i32, i32* @drhist32, align 4
  %142 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %143 = call %struct.TYPE_15__* @VSD(i32 %141, %struct.voistatdata_hist* %142)
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  store i32* %149, i32** %15, align 8
  br label %237

150:                                              ; preds = %99
  %151 = load i32, i32* @dvhist32, align 4
  %152 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %153 = call %struct.TYPE_15__* @VSD(i32 %151, %struct.voistatdata_hist* %152)
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  store %struct.voistatdata_numeric* %159, %struct.voistatdata_numeric** %10, align 8
  %160 = load i32, i32* @dvhist32, align 4
  %161 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %162 = call %struct.TYPE_15__* @VSD(i32 %160, %struct.voistatdata_hist* %161)
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  store i32* %168, i32** %15, align 8
  br label %237

169:                                              ; preds = %99
  %170 = load i32, i32* @crhist64, align 4
  %171 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %172 = call %struct.TYPE_15__* @VSD(i32 %170, %struct.voistatdata_hist* %171)
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 3
  store %struct.voistatdata_numeric* %178, %struct.voistatdata_numeric** %10, align 8
  %179 = load i32, i32* @crhist64, align 4
  %180 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %181 = call %struct.TYPE_15__* @VSD(i32 %179, %struct.voistatdata_hist* %180)
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  store i32* %187, i32** %13, align 8
  br label %237

188:                                              ; preds = %99
  %189 = load i32, i32* @drhist64, align 4
  %190 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %191 = call %struct.TYPE_15__* @VSD(i32 %189, %struct.voistatdata_hist* %190)
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %192, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 3
  store %struct.voistatdata_numeric* %197, %struct.voistatdata_numeric** %10, align 8
  %198 = load i32, i32* @drhist64, align 4
  %199 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %200 = call %struct.TYPE_15__* @VSD(i32 %198, %struct.voistatdata_hist* %199)
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %201, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 2
  store %struct.voistatdata_numeric* %206, %struct.voistatdata_numeric** %11, align 8
  %207 = load i32, i32* @drhist64, align 4
  %208 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %209 = call %struct.TYPE_15__* @VSD(i32 %207, %struct.voistatdata_hist* %208)
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = load i32, i32* %17, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  store i32* %215, i32** %13, align 8
  br label %237

216:                                              ; preds = %99
  %217 = load i32, i32* @dvhist64, align 4
  %218 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %219 = call %struct.TYPE_15__* @VSD(i32 %217, %struct.voistatdata_hist* %218)
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = load i32, i32* %17, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  store %struct.voistatdata_numeric* %225, %struct.voistatdata_numeric** %10, align 8
  %226 = load i32, i32* @dvhist64, align 4
  %227 = load %struct.voistatdata_hist*, %struct.voistatdata_hist** %9, align 8
  %228 = call %struct.TYPE_15__* @VSD(i32 %226, %struct.voistatdata_hist* %227)
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = load i32, i32* %17, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  store i32* %234, i32** %13, align 8
  br label %237

235:                                              ; preds = %99
  %236 = load i32, i32* @EINVAL, align 4
  store i32 %236, i32* %5, align 4
  br label %710

237:                                              ; preds = %216, %188, %169, %150, %122, %103
  %238 = load i32, i32* %6, align 4
  switch i32 %238, label %671 [
    i32 137, label %239
    i32 134, label %281
    i32 136, label %323
    i32 133, label %365
    i32 135, label %407
    i32 132, label %449
    i32 131, label %491
    i32 129, label %536
    i32 130, label %581
    i32 128, label %626
  ]

239:                                              ; preds = %237
  %240 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %241 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %245 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp sge i32 %243, %247
  br i1 %248, label %249, label %280

249:                                              ; preds = %239
  %250 = load i32, i32* %21, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %249
  %253 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %254 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %258 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %256, %260
  br i1 %261, label %278, label %262

262:                                              ; preds = %252, %249
  %263 = load i32, i32* %21, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %279, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %20, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %265
  %269 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %270 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %11, align 8
  %274 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = icmp slt i32 %272, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %268, %265, %252
  store i32 1, i32* %18, align 4
  br label %279

279:                                              ; preds = %278, %268, %262
  br label %280

280:                                              ; preds = %279, %239
  br label %672

281:                                              ; preds = %237
  %282 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %283 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %287 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = icmp sge i32 %285, %289
  br i1 %290, label %291, label %322

291:                                              ; preds = %281
  %292 = load i32, i32* %21, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %304

294:                                              ; preds = %291
  %295 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %296 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %295, i32 0, i32 4
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %300 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %299, i32 0, i32 4
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %298, %302
  br i1 %303, label %320, label %304

304:                                              ; preds = %294, %291
  %305 = load i32, i32* %21, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %321, label %307

307:                                              ; preds = %304
  %308 = load i32, i32* %20, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %307
  %311 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %312 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %11, align 8
  %316 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = icmp slt i32 %314, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %310, %307, %294
  store i32 1, i32* %18, align 4
  br label %321

321:                                              ; preds = %320, %310, %304
  br label %322

322:                                              ; preds = %321, %281
  br label %672

323:                                              ; preds = %237
  %324 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %325 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %329 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = icmp sge i32 %327, %331
  br i1 %332, label %333, label %364

333:                                              ; preds = %323
  %334 = load i32, i32* %21, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %346

336:                                              ; preds = %333
  %337 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %338 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %342 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %341, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %340, %344
  br i1 %345, label %362, label %346

346:                                              ; preds = %336, %333
  %347 = load i32, i32* %21, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %363, label %349

349:                                              ; preds = %346
  %350 = load i32, i32* %20, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %362

352:                                              ; preds = %349
  %353 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %354 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %11, align 8
  %358 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = icmp slt i32 %356, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %352, %349, %336
  store i32 1, i32* %18, align 4
  br label %363

363:                                              ; preds = %362, %352, %346
  br label %364

364:                                              ; preds = %363, %323
  br label %672

365:                                              ; preds = %237
  %366 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %367 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %371 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %370, i32 0, i32 3
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = icmp sge i32 %369, %373
  br i1 %374, label %375, label %406

375:                                              ; preds = %365
  %376 = load i32, i32* %21, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %388

378:                                              ; preds = %375
  %379 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %380 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %384 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %382, %386
  br i1 %387, label %404, label %388

388:                                              ; preds = %378, %375
  %389 = load i32, i32* %21, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %405, label %391

391:                                              ; preds = %388
  %392 = load i32, i32* %20, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %404

394:                                              ; preds = %391
  %395 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %396 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %395, i32 0, i32 3
  %397 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %11, align 8
  %400 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = icmp slt i32 %398, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %394, %391, %378
  store i32 1, i32* %18, align 4
  br label %405

405:                                              ; preds = %404, %394, %388
  br label %406

406:                                              ; preds = %405, %365
  br label %672

407:                                              ; preds = %237
  %408 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %409 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %413 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %412, i32 0, i32 2
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = icmp sge i32 %411, %415
  br i1 %416, label %417, label %448

417:                                              ; preds = %407
  %418 = load i32, i32* %21, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %430

420:                                              ; preds = %417
  %421 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %422 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %426 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %425, i32 0, i32 2
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = icmp eq i32 %424, %428
  br i1 %429, label %446, label %430

430:                                              ; preds = %420, %417
  %431 = load i32, i32* %21, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %447, label %433

433:                                              ; preds = %430
  %434 = load i32, i32* %20, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %446

436:                                              ; preds = %433
  %437 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %438 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %437, i32 0, i32 2
  %439 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %11, align 8
  %442 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %441, i32 0, i32 2
  %443 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = icmp slt i32 %440, %444
  br i1 %445, label %446, label %447

446:                                              ; preds = %436, %433, %420
  store i32 1, i32* %18, align 4
  br label %447

447:                                              ; preds = %446, %436, %430
  br label %448

448:                                              ; preds = %447, %407
  br label %672

449:                                              ; preds = %237
  %450 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %451 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %455 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = icmp sge i32 %453, %457
  br i1 %458, label %459, label %490

459:                                              ; preds = %449
  %460 = load i32, i32* %21, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %472

462:                                              ; preds = %459
  %463 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %464 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %463, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %468 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %467, i32 0, i32 2
  %469 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = icmp eq i32 %466, %470
  br i1 %471, label %488, label %472

472:                                              ; preds = %462, %459
  %473 = load i32, i32* %21, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %489, label %475

475:                                              ; preds = %472
  %476 = load i32, i32* %20, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %488

478:                                              ; preds = %475
  %479 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %480 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %479, i32 0, i32 2
  %481 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %11, align 8
  %484 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %483, i32 0, i32 2
  %485 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = icmp slt i32 %482, %486
  br i1 %487, label %488, label %489

488:                                              ; preds = %478, %475, %462
  store i32 1, i32* %18, align 4
  br label %489

489:                                              ; preds = %488, %478, %472
  br label %490

490:                                              ; preds = %489, %449
  br label %672

491:                                              ; preds = %237
  %492 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %493 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %497 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = call i32 @Q_QGEQ(i32 %495, i32 %499)
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %535

502:                                              ; preds = %491
  %503 = load i32, i32* %21, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %516

505:                                              ; preds = %502
  %506 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %507 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %511 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %510, i32 0, i32 1
  %512 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = call i32 @Q_QEQ(i32 %509, i32 %513)
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %533, label %516

516:                                              ; preds = %505, %502
  %517 = load i32, i32* %21, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %534, label %519

519:                                              ; preds = %516
  %520 = load i32, i32* %20, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %533

522:                                              ; preds = %519
  %523 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %524 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %11, align 8
  %528 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %527, i32 0, i32 1
  %529 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 4
  %531 = call i32 @Q_QLTQ(i32 %526, i32 %530)
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %534

533:                                              ; preds = %522, %519, %505
  store i32 1, i32* %18, align 4
  br label %534

534:                                              ; preds = %533, %522, %516
  br label %535

535:                                              ; preds = %534, %491
  br label %672

536:                                              ; preds = %237
  %537 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %538 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  %541 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %542 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 4
  %545 = call i32 @Q_QGEQ(i32 %540, i32 %544)
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %580

547:                                              ; preds = %536
  %548 = load i32, i32* %21, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %561

550:                                              ; preds = %547
  %551 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %552 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 4
  %555 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %556 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %555, i32 0, i32 1
  %557 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 4
  %559 = call i32 @Q_QEQ(i32 %554, i32 %558)
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %578, label %561

561:                                              ; preds = %550, %547
  %562 = load i32, i32* %21, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %579, label %564

564:                                              ; preds = %561
  %565 = load i32, i32* %20, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %578

567:                                              ; preds = %564
  %568 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %569 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 4
  %572 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %11, align 8
  %573 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 4
  %576 = call i32 @Q_QLTQ(i32 %571, i32 %575)
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %579

578:                                              ; preds = %567, %564, %550
  store i32 1, i32* %18, align 4
  br label %579

579:                                              ; preds = %578, %567, %561
  br label %580

580:                                              ; preds = %579, %536
  br label %672

581:                                              ; preds = %237
  %582 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %583 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %587 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = call i32 @Q_QGEQ(i32 %585, i32 %589)
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %625

592:                                              ; preds = %581
  %593 = load i32, i32* %21, align 4
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %606

595:                                              ; preds = %592
  %596 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %597 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %597, i32 0, i32 1
  %599 = load i32, i32* %598, align 4
  %600 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %601 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %600, i32 0, i32 0
  %602 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 4
  %604 = call i32 @Q_QEQ(i32 %599, i32 %603)
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %623, label %606

606:                                              ; preds = %595, %592
  %607 = load i32, i32* %21, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %624, label %609

609:                                              ; preds = %606
  %610 = load i32, i32* %20, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %623

612:                                              ; preds = %609
  %613 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %614 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %613, i32 0, i32 0
  %615 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %614, i32 0, i32 1
  %616 = load i32, i32* %615, align 4
  %617 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %11, align 8
  %618 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %617, i32 0, i32 0
  %619 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %618, i32 0, i32 1
  %620 = load i32, i32* %619, align 4
  %621 = call i32 @Q_QLTQ(i32 %616, i32 %620)
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %624

623:                                              ; preds = %612, %609, %595
  store i32 1, i32* %18, align 4
  br label %624

624:                                              ; preds = %623, %612, %606
  br label %625

625:                                              ; preds = %624, %581
  br label %672

626:                                              ; preds = %237
  %627 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %628 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %627, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %632 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %631, i32 0, i32 0
  %633 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 4
  %635 = call i32 @Q_QGEQ(i32 %630, i32 %634)
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %670

637:                                              ; preds = %626
  %638 = load i32, i32* %21, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %651

640:                                              ; preds = %637
  %641 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %642 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %641, i32 0, i32 0
  %643 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 4
  %645 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %10, align 8
  %646 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %645, i32 0, i32 0
  %647 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 4
  %649 = call i32 @Q_QEQ(i32 %644, i32 %648)
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %668, label %651

651:                                              ; preds = %640, %637
  %652 = load i32, i32* %21, align 4
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %669, label %654

654:                                              ; preds = %651
  %655 = load i32, i32* %20, align 4
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %668

657:                                              ; preds = %654
  %658 = load %struct.voistatdata*, %struct.voistatdata** %7, align 8
  %659 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %658, i32 0, i32 0
  %660 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 4
  %662 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %11, align 8
  %663 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %662, i32 0, i32 0
  %664 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 4
  %666 = call i32 @Q_QLTQ(i32 %661, i32 %665)
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %669

668:                                              ; preds = %657, %654, %640
  store i32 1, i32* %18, align 4
  br label %669

669:                                              ; preds = %668, %657, %651
  br label %670

670:                                              ; preds = %669, %626
  br label %672

671:                                              ; preds = %237
  br label %672

672:                                              ; preds = %671, %670, %625, %580, %535, %490, %448, %406, %364, %322, %280
  br label %673

673:                                              ; preds = %672
  %674 = load i32, i32* %17, align 4
  %675 = add nsw i32 %674, -1
  store i32 %675, i32* %17, align 4
  br label %90

676:                                              ; preds = %97
  %677 = load i32, i32* %18, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %691

679:                                              ; preds = %676
  %680 = load i32, i32* %19, align 4
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %686

682:                                              ; preds = %679
  %683 = load i32*, i32** %15, align 8
  %684 = load i32, i32* %683, align 4
  %685 = add nsw i32 %684, 1
  store i32 %685, i32* %683, align 4
  br label %690

686:                                              ; preds = %679
  %687 = load i32*, i32** %13, align 8
  %688 = load i32, i32* %687, align 4
  %689 = add nsw i32 %688, 1
  store i32 %689, i32* %687, align 4
  br label %690

690:                                              ; preds = %686, %682
  br label %703

691:                                              ; preds = %676
  %692 = load i32, i32* %19, align 4
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %694, label %698

694:                                              ; preds = %691
  %695 = load i32*, i32** %14, align 8
  %696 = load i32, i32* %695, align 4
  %697 = add nsw i32 %696, 1
  store i32 %697, i32* %695, align 4
  br label %702

698:                                              ; preds = %691
  %699 = load i32*, i32** %12, align 8
  %700 = load i32, i32* %699, align 4
  %701 = add nsw i32 %700, 1
  store i32 %701, i32* %699, align 4
  br label %702

702:                                              ; preds = %698, %694
  br label %703

703:                                              ; preds = %702, %690
  %704 = load i32, i32* @VS_VSDVALID, align 4
  %705 = load %struct.voistat*, %struct.voistat** %8, align 8
  %706 = getelementptr inbounds %struct.voistat, %struct.voistat* %705, i32 0, i32 1
  %707 = load i32, i32* %706, align 4
  %708 = or i32 %707, %704
  store i32 %708, i32* %706, align 4
  %709 = load i32, i32* %16, align 4
  store i32 %709, i32* %5, align 4
  br label %710

710:                                              ; preds = %703, %235, %85
  %711 = load i32, i32* %5, align 4
  ret i32 %711
}

declare dso_local i32 @HIST_VSDSZ2NBKTS(i32, i32) #1

declare dso_local %struct.TYPE_15__* @VSD(i32, %struct.voistatdata_hist*) #1

declare dso_local i32 @Q_QGEQ(i32, i32) #1

declare dso_local i32 @Q_QEQ(i32, i32) #1

declare dso_local i32 @Q_QLTQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
