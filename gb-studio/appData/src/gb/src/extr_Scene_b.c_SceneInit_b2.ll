; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b2.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_15__, i8*, i64, i8*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@DATA_PTRS_BANK = common dso_local global i32 0, align 4
@bank_ptr = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@scene_bank_ptrs = common dso_local global i32* null, align 8
@scene_index = common dso_local global i64 0, align 8
@bank_data_ptrs = common dso_local global i64* null, align 8
@image_index = common dso_local global i32 0, align 4
@sprite_bank_ptrs = common dso_local global i32* null, align 8
@scene_num_actors = common dso_local global i64 0, align 8
@actors = common dso_local global %struct.TYPE_18__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@scene_num_triggers = common dso_local global i64 0, align 8
@triggers = common dso_local global %struct.TYPE_17__* null, align 8
@collision_tiles_len = common dso_local global i32 0, align 4
@scene_load_col_ptr = common dso_local global i64 0, align 8
@col_bank = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneInit_b2() #0 {
  %1 = alloca %struct.TYPE_16__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = load i32, i32* @DATA_PTRS_BANK, align 4
  %11 = load i32*, i32** @scene_bank_ptrs, align 8
  %12 = load i64, i64* @scene_index, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i32 @ReadBankedBankPtr(i32 %10, %struct.TYPE_16__* @bank_ptr, i32* %13)
  %15 = load i64*, i64** @bank_data_ptrs, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 1), align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @ReadBankedUWORD(i64 %21, i64 %22)
  store i32 %23, i32* @image_index, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %25, 2
  %27 = call i32 @ReadBankedUBYTE(i64 %24, i64 %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %4, align 8
  store i64 24, i64* %5, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 3
  store i64 %30, i64* %9, align 8
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %70, %0
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %31
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %37, %38
  %40 = call i32 @ReadBankedUBYTE(i64 %36, i64 %39)
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %3, align 8
  %42 = load i32, i32* @DATA_PTRS_BANK, align 4
  %43 = load i32*, i32** @sprite_bank_ptrs, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i32 @ReadBankedBankPtr(i32 %42, %struct.TYPE_16__* %1, i32* %45)
  %47 = load i64*, i64** @bank_data_ptrs, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %51, %53
  store i64 %54, i64* %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %2, align 8
  %58 = call i32 @ReadBankedUBYTE(i64 %56, i64 %57)
  %59 = call i64 @MUL_4(i32 %58)
  store i64 %59, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %2, align 8
  %65 = add i64 %64, 1
  %66 = call i32 @SetBankedSpriteData(i64 %61, i64 %62, i64 %63, i64 %65)
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %35
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %31

73:                                               ; preds = %31
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %4, align 8
  %76 = add i64 %74, %75
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @ReadBankedUBYTE(i64 %77, i64 %78)
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  store i64 %81, i64* @scene_num_actors, align 8
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %9, align 8
  store i64 1, i64* %6, align 8
  br label %84

84:                                               ; preds = %288, %73
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @scene_num_actors, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %291

88:                                               ; preds = %84
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @ReadBankedUBYTE(i64 %89, i64 %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 8
  %96 = load i32, i32* @TRUE, align 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 14
  store i32 %96, i32* %100, align 8
  %101 = load i8*, i8** @FALSE, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 13
  store i8* %101, i8** %105, align 8
  %106 = load i8*, i8** @FALSE, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  store i32 %107, i32* %111, align 4
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, 1
  %115 = call i32 @ReadBankedUBYTE(i64 %112, i64 %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  store i32 %115, i32* %119, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  store i32 0, i32* %123, align 8
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %125, 2
  %127 = call i32 @ReadBankedUBYTE(i64 %124, i64 %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  store i32 %127, i32* %131, align 8
  %132 = load i8*, i8** @FALSE, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %135 = load i64, i64* %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 3
  store i32 %133, i32* %137, align 4
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %139 = load i64, i64* %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 12
  store i64 0, i64* %141, align 8
  %142 = load i8*, i8** @FALSE, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %144 = load i64, i64* %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 11
  store i8* %142, i8** %146, align 8
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %148 = load i64, i64* %9, align 8
  %149 = add i64 %148, 3
  %150 = call i32 @ReadBankedUBYTE(i64 %147, i64 %149)
  %151 = and i32 %150, 1
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 3
  store i32 %151, i32* %155, align 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %157 = load i64, i64* %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 4
  store i32 0, i32* %159, align 8
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %161 = load i64, i64* %9, align 8
  %162 = add i64 %161, 3
  %163 = call i32 @ReadBankedUBYTE(i64 %160, i64 %162)
  %164 = ashr i32 %163, 1
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %166 = load i64, i64* %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 4
  store i32 %164, i32* %168, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %170 = load i64, i64* %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 5
  store i32 0, i32* %172, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %174 = load i64, i64* %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 6
  store i32 0, i32* %176, align 8
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %178 = load i64, i64* %9, align 8
  %179 = add i64 %178, 4
  %180 = call i32 @ReadBankedUBYTE(i64 %177, i64 %179)
  %181 = call i8* @MUL_8(i32 %180)
  %182 = getelementptr i8, i8* %181, i64 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %184 = load i64, i64* %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 10
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  store i8* %182, i8** %187, align 8
  %188 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %189 = load i64, i64* %9, align 8
  %190 = add i64 %189, 5
  %191 = call i32 @ReadBankedUBYTE(i64 %188, i64 %190)
  %192 = call i8* @MUL_8(i32 %191)
  %193 = getelementptr i8, i8* %192, i64 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %195 = load i64, i64* %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 10
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  store i8* %193, i8** %198, align 8
  %199 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %200 = load i64, i64* %9, align 8
  %201 = add i64 %200, 6
  %202 = call i32 @ReadBankedUBYTE(i64 %199, i64 %201)
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %7, align 8
  %204 = load i64, i64* %7, align 8
  %205 = icmp eq i64 %204, 2
  br i1 %205, label %206, label %207

206:                                              ; preds = %88
  br label %212

207:                                              ; preds = %88
  %208 = load i64, i64* %7, align 8
  %209 = icmp eq i64 %208, 4
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 1, i32 0
  br label %212

212:                                              ; preds = %207, %206
  %213 = phi i32 [ -1, %206 ], [ %211, %207 ]
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %215 = load i64, i64* %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 9
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  store i32 %213, i32* %218, align 8
  %219 = load i64, i64* %7, align 8
  %220 = icmp eq i64 %219, 8
  br i1 %220, label %221, label %222

221:                                              ; preds = %212
  br label %227

222:                                              ; preds = %212
  %223 = load i64, i64* %7, align 8
  %224 = icmp eq i64 %223, 1
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i32 1, i32 0
  br label %227

227:                                              ; preds = %222, %221
  %228 = phi i32 [ -1, %221 ], [ %226, %222 ]
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %230 = load i64, i64* %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 9
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  store i32 %228, i32* %233, align 4
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %235 = load i64, i64* %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 7
  store i32 0, i32* %237, align 4
  %238 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %239 = load i64, i64* %9, align 8
  %240 = add i64 %239, 7
  %241 = call i32 @ReadBankedUBYTE(i64 %238, i64 %240)
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %243 = load i64, i64* %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 7
  store i32 %241, i32* %245, align 4
  %246 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %247 = load i64, i64* %9, align 8
  %248 = add i64 %247, 8
  %249 = call i32 @ReadBankedUBYTE(i64 %246, i64 %248)
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %251 = load i64, i64* %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 5
  store i32 %249, i32* %253, align 4
  %254 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %255 = load i64, i64* %9, align 8
  %256 = add i64 %255, 9
  %257 = call i32 @ReadBankedUBYTE(i64 %254, i64 %256)
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %259 = load i64, i64* %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 6
  store i32 %257, i32* %261, align 8
  %262 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %263 = load i64, i64* %9, align 8
  %264 = add i64 %263, 10
  %265 = call i32 @ReadBankedUBYTE(i64 %262, i64 %264)
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %267 = load i64, i64* %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  store i32 %265, i32* %270, align 8
  %271 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %272 = load i64, i64* %9, align 8
  %273 = add i64 %272, 11
  %274 = call i32 @ReadBankedUBYTE(i64 %271, i64 %273)
  %275 = mul nsw i32 %274, 256
  %276 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %277 = load i64, i64* %9, align 8
  %278 = add i64 %277, 12
  %279 = call i32 @ReadBankedUBYTE(i64 %276, i64 %278)
  %280 = add nsw i32 %275, %279
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** @actors, align 8
  %282 = load i64, i64* %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 1
  store i32 %280, i32* %285, align 4
  %286 = load i64, i64* %9, align 8
  %287 = add i64 %286, 13
  store i64 %287, i64* %9, align 8
  br label %288

288:                                              ; preds = %227
  %289 = load i64, i64* %6, align 8
  %290 = add i64 %289, 1
  store i64 %290, i64* %6, align 8
  br label %84

291:                                              ; preds = %84
  %292 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %293 = load i64, i64* %9, align 8
  %294 = call i32 @ReadBankedUBYTE(i64 %292, i64 %293)
  %295 = sext i32 %294 to i64
  store i64 %295, i64* @scene_num_triggers, align 8
  %296 = load i64, i64* %9, align 8
  %297 = add i64 %296, 1
  store i64 %297, i64* %9, align 8
  store i64 0, i64* %6, align 8
  br label %298

298:                                              ; preds = %370, %291
  %299 = load i64, i64* %6, align 8
  %300 = load i64, i64* @scene_num_triggers, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %373

302:                                              ; preds = %298
  %303 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %304 = load i64, i64* %9, align 8
  %305 = call i32 @ReadBankedUBYTE(i64 %303, i64 %304)
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** @triggers, align 8
  %307 = load i64, i64* %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 0
  store i32 %305, i32* %310, align 4
  %311 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %312 = load i64, i64* %9, align 8
  %313 = add i64 %312, 1
  %314 = call i32 @ReadBankedUBYTE(i64 %311, i64 %313)
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** @triggers, align 8
  %316 = load i64, i64* %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 1
  store i32 %314, i32* %319, align 4
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** @triggers, align 8
  %321 = load i64, i64* %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 0
  store i32 0, i32* %323, align 4
  %324 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %325 = load i64, i64* %9, align 8
  %326 = add i64 %325, 2
  %327 = call i32 @ReadBankedUBYTE(i64 %324, i64 %326)
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** @triggers, align 8
  %329 = load i64, i64* %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 0
  store i32 %327, i32* %331, align 4
  %332 = load %struct.TYPE_17__*, %struct.TYPE_17__** @triggers, align 8
  %333 = load i64, i64* %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 1
  store i32 0, i32* %335, align 4
  %336 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %337 = load i64, i64* %9, align 8
  %338 = add i64 %337, 3
  %339 = call i32 @ReadBankedUBYTE(i64 %336, i64 %338)
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** @triggers, align 8
  %341 = load i64, i64* %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 1
  store i32 %339, i32* %343, align 4
  %344 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %345 = load i64, i64* %9, align 8
  %346 = add i64 %345, 5
  %347 = call i32 @ReadBankedUBYTE(i64 %344, i64 %346)
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** @triggers, align 8
  %349 = load i64, i64* %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 0
  store i32 %347, i32* %352, align 4
  %353 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %354 = load i64, i64* %9, align 8
  %355 = add i64 %354, 6
  %356 = call i32 @ReadBankedUBYTE(i64 %353, i64 %355)
  %357 = mul nsw i32 %356, 256
  %358 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %359 = load i64, i64* %9, align 8
  %360 = add i64 %359, 7
  %361 = call i32 @ReadBankedUBYTE(i64 %358, i64 %360)
  %362 = add nsw i32 %357, %361
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** @triggers, align 8
  %364 = load i64, i64* %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 1
  store i32 %362, i32* %367, align 4
  %368 = load i64, i64* %9, align 8
  %369 = add i64 %368, 8
  store i64 %369, i64* %9, align 8
  br label %370

370:                                              ; preds = %302
  %371 = load i64, i64* %6, align 8
  %372 = add i64 %371, 1
  store i64 %372, i64* %6, align 8
  br label %298

373:                                              ; preds = %298
  %374 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  %375 = load i64, i64* %9, align 8
  %376 = call i32 @ReadBankedUBYTE(i64 %374, i64 %375)
  store i32 %376, i32* @collision_tiles_len, align 4
  %377 = load i64, i64* %9, align 8
  %378 = add i64 %377, 1
  store i64 %378, i64* @scene_load_col_ptr, align 8
  %379 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bank_ptr, i32 0, i32 0), align 8
  store i64 %379, i64* @col_bank, align 8
  ret void
}

declare dso_local i32 @ReadBankedBankPtr(i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ReadBankedUWORD(i64, i64) #1

declare dso_local i32 @ReadBankedUBYTE(i64, i64) #1

declare dso_local i64 @MUL_4(i32) #1

declare dso_local i32 @SetBankedSpriteData(i64, i64, i64, i64) #1

declare dso_local i8* @MUL_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
