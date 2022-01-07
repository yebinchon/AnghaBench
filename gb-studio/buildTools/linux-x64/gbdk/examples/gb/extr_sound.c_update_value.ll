; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_sound.c_update_value.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_sound.c_update_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@soundReg = common dso_local global %struct.TYPE_12__* null, align 8
@NR52_REG = common dso_local global i32 0, align 4
@NR50_REG = common dso_local global i32 0, align 4
@NR14_REG = common dso_local global i32 0, align 4
@NR24_REG = common dso_local global i32 0, align 4
@NR34_REG = common dso_local global i32 0, align 4
@NR44_REG = common dso_local global i32 0, align 4
@NR10_REG = common dso_local global i32 0, align 4
@NR11_REG = common dso_local global i32 0, align 4
@NR12_REG = common dso_local global i32 0, align 4
@NR13_REG = common dso_local global i32 0, align 4
@NR51_REG = common dso_local global i32 0, align 4
@NR21_REG = common dso_local global i32 0, align 4
@NR22_REG = common dso_local global i32 0, align 4
@NR23_REG = common dso_local global i32 0, align 4
@NR30_REG = common dso_local global i32 0, align 4
@NR31_REG = common dso_local global i32 0, align 4
@NR32_REG = common dso_local global i32 0, align 4
@NR33_REG = common dso_local global i32 0, align 4
@NR41_REG = common dso_local global i32 0, align 4
@NR42_REG = common dso_local global i32 0, align 4
@NR43_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_value(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %109

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %108 [
    i32 0, label %11
    i32 1, label %20
    i32 2, label %29
    i32 3, label %38
    i32 4, label %47
    i32 129, label %56
    i32 128, label %60
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %17 = bitcast %struct.TYPE_12__* %16 to i32*
  %18 = getelementptr inbounds i32, i32* %17, i64 22
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @NR52_REG, align 4
  br label %108

20:                                               ; preds = %9
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %26 = bitcast %struct.TYPE_12__* %25 to i32*
  %27 = getelementptr inbounds i32, i32* %26, i64 20
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* @NR50_REG, align 4
  br label %108

29:                                               ; preds = %9
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %35 = bitcast %struct.TYPE_12__* %34 to i32*
  %36 = getelementptr inbounds i32, i32* %35, i64 20
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @NR50_REG, align 4
  br label %108

38:                                               ; preds = %9
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %44 = bitcast %struct.TYPE_12__* %43 to i32*
  %45 = getelementptr inbounds i32, i32* %44, i64 20
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* @NR50_REG, align 4
  br label %108

47:                                               ; preds = %9
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %53 = bitcast %struct.TYPE_12__* %52 to i32*
  %54 = getelementptr inbounds i32, i32* %53, i64 20
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* @NR50_REG, align 4
  br label %108

56:                                               ; preds = %9
  %57 = load i32, i32* %6, align 4
  call void @update_value(i32 1, i32 129, i32 %57)
  %58 = load i32, i32* %6, align 4
  call void @update_value(i32 2, i32 129, i32 %58)
  %59 = load i32, i32* %6, align 4
  call void @update_value(i32 3, i32 129, i32 %59)
  br label %108

60:                                               ; preds = %9
  %61 = call i32 @current_value(i32 1, i32 129)
  call void @update_value(i32 1, i32 129, i32 %61)
  %62 = call i32 @current_value(i32 2, i32 129)
  call void @update_value(i32 2, i32 129, i32 %62)
  %63 = call i32 @current_value(i32 3, i32 129)
  call void @update_value(i32 3, i32 129, i32 %63)
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %81 = bitcast %struct.TYPE_12__* %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* @NR14_REG, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %85 = bitcast %struct.TYPE_12__* %84 to i32*
  %86 = getelementptr inbounds i32, i32* %85, i64 9
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* @NR24_REG, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %89 = bitcast %struct.TYPE_12__* %88 to i32*
  %90 = getelementptr inbounds i32, i32* %89, i64 14
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* @NR34_REG, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %93 = bitcast %struct.TYPE_12__* %92 to i32*
  %94 = getelementptr inbounds i32, i32* %93, i64 19
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* @NR44_REG, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %9, %60, %56, %47, %38, %29, %20, %11
  br label %599

109:                                              ; preds = %3
  %110 = load i32, i32* %4, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %256

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  switch i32 %113, label %255 [
    i32 0, label %114
    i32 1, label %123
    i32 2, label %132
    i32 3, label %141
    i32 4, label %150
    i32 5, label %159
    i32 6, label %168
    i32 7, label %177
    i32 8, label %186
    i32 129, label %186
    i32 9, label %204
    i32 10, label %213
    i32 11, label %222
    i32 12, label %231
    i32 128, label %240
  ]

114:                                              ; preds = %112
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %120 = bitcast %struct.TYPE_12__* %119 to i32*
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* @NR10_REG, align 4
  br label %255

123:                                              ; preds = %112
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %129 = bitcast %struct.TYPE_12__* %128 to i32*
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* @NR10_REG, align 4
  br label %255

132:                                              ; preds = %112
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  store i32 %133, i32* %136, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %138 = bitcast %struct.TYPE_12__* %137 to i32*
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* @NR10_REG, align 4
  br label %255

141:                                              ; preds = %112
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 4
  store i32 %142, i32* %145, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %147 = bitcast %struct.TYPE_12__* %146 to i32*
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* @NR11_REG, align 4
  br label %255

150:                                              ; preds = %112
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 5
  store i32 %151, i32* %154, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %156 = bitcast %struct.TYPE_12__* %155 to i32*
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* @NR11_REG, align 4
  br label %255

159:                                              ; preds = %112
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 6
  store i32 %160, i32* %163, align 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %165 = bitcast %struct.TYPE_12__* %164 to i32*
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* @NR12_REG, align 4
  br label %255

168:                                              ; preds = %112
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 7
  store i32 %169, i32* %172, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %174 = bitcast %struct.TYPE_12__* %173 to i32*
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* @NR12_REG, align 4
  br label %255

177:                                              ; preds = %112
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 8
  store i32 %178, i32* %181, align 4
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %183 = bitcast %struct.TYPE_12__* %182 to i32*
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* @NR12_REG, align 4
  br label %255

186:                                              ; preds = %112, %112
  %187 = load i32, i32* %6, align 4
  %188 = ashr i32 %187, 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 9
  store i32 %188, i32* %191, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 10
  store i32 %192, i32* %195, align 4
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %197 = bitcast %struct.TYPE_12__* %196 to i32*
  %198 = getelementptr inbounds i32, i32* %197, i64 3
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* @NR13_REG, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %201 = bitcast %struct.TYPE_12__* %200 to i32*
  %202 = getelementptr inbounds i32, i32* %201, i64 4
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* @NR14_REG, align 4
  br label %255

204:                                              ; preds = %112
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 11
  store i32 %205, i32* %208, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %210 = bitcast %struct.TYPE_12__* %209 to i32*
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* @NR14_REG, align 4
  br label %255

213:                                              ; preds = %112
  %214 = load i32, i32* %6, align 4
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 5
  store i32 %214, i32* %217, align 4
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %219 = bitcast %struct.TYPE_12__* %218 to i32*
  %220 = getelementptr inbounds i32, i32* %219, i64 21
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* @NR51_REG, align 4
  br label %255

222:                                              ; preds = %112
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 6
  store i32 %223, i32* %226, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %228 = bitcast %struct.TYPE_12__* %227 to i32*
  %229 = getelementptr inbounds i32, i32* %228, i64 21
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* @NR51_REG, align 4
  br label %255

231:                                              ; preds = %112
  %232 = load i32, i32* %6, align 4
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 7
  store i32 %232, i32* %235, align 4
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %237 = bitcast %struct.TYPE_12__* %236 to i32*
  %238 = getelementptr inbounds i32, i32* %237, i64 22
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* @NR52_REG, align 4
  br label %255

240:                                              ; preds = %112
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* %4, align 4
  %243 = call i32 @current_value(i32 %242, i32 129)
  call void @update_value(i32 %241, i32 129, i32 %243)
  %244 = load i32, i32* %6, align 4
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  store i32 %244, i32* %247, align 4
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %249 = bitcast %struct.TYPE_12__* %248 to i32*
  %250 = getelementptr inbounds i32, i32* %249, i64 4
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* @NR14_REG, align 4
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  store i32 0, i32* %254, align 4
  br label %255

255:                                              ; preds = %112, %240, %231, %222, %213, %204, %186, %177, %168, %159, %150, %141, %132, %123, %114
  br label %598

256:                                              ; preds = %109
  %257 = load i32, i32* %4, align 4
  %258 = icmp eq i32 %257, 2
  br i1 %258, label %259, label %376

259:                                              ; preds = %256
  %260 = load i32, i32* %5, align 4
  switch i32 %260, label %375 [
    i32 0, label %261
    i32 1, label %270
    i32 2, label %279
    i32 3, label %288
    i32 4, label %297
    i32 5, label %306
    i32 129, label %306
    i32 6, label %324
    i32 7, label %333
    i32 8, label %342
    i32 9, label %351
    i32 128, label %360
  ]

261:                                              ; preds = %259
  %262 = load i32, i32* %6, align 4
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  store i32 %262, i32* %265, align 4
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %267 = bitcast %struct.TYPE_12__* %266 to i32*
  %268 = getelementptr inbounds i32, i32* %267, i64 6
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* @NR21_REG, align 4
  br label %375

270:                                              ; preds = %259
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 2
  store i32 %271, i32* %274, align 4
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %276 = bitcast %struct.TYPE_12__* %275 to i32*
  %277 = getelementptr inbounds i32, i32* %276, i64 6
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* @NR21_REG, align 4
  br label %375

279:                                              ; preds = %259
  %280 = load i32, i32* %6, align 4
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 3
  store i32 %280, i32* %283, align 4
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %285 = bitcast %struct.TYPE_12__* %284 to i32*
  %286 = getelementptr inbounds i32, i32* %285, i64 7
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* @NR22_REG, align 4
  br label %375

288:                                              ; preds = %259
  %289 = load i32, i32* %6, align 4
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 4
  store i32 %289, i32* %292, align 4
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %294 = bitcast %struct.TYPE_12__* %293 to i32*
  %295 = getelementptr inbounds i32, i32* %294, i64 7
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* @NR22_REG, align 4
  br label %375

297:                                              ; preds = %259
  %298 = load i32, i32* %6, align 4
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 5
  store i32 %298, i32* %301, align 4
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %303 = bitcast %struct.TYPE_12__* %302 to i32*
  %304 = getelementptr inbounds i32, i32* %303, i64 7
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* @NR22_REG, align 4
  br label %375

306:                                              ; preds = %259, %259
  %307 = load i32, i32* %6, align 4
  %308 = ashr i32 %307, 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 6
  store i32 %308, i32* %311, align 4
  %312 = load i32, i32* %6, align 4
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 7
  store i32 %312, i32* %315, align 4
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %317 = bitcast %struct.TYPE_12__* %316 to i32*
  %318 = getelementptr inbounds i32, i32* %317, i64 8
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* @NR23_REG, align 4
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %321 = bitcast %struct.TYPE_12__* %320 to i32*
  %322 = getelementptr inbounds i32, i32* %321, i64 9
  %323 = load i32, i32* %322, align 4
  store i32 %323, i32* @NR24_REG, align 4
  br label %375

324:                                              ; preds = %259
  %325 = load i32, i32* %6, align 4
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 8
  store i32 %325, i32* %328, align 4
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %330 = bitcast %struct.TYPE_12__* %329 to i32*
  %331 = getelementptr inbounds i32, i32* %330, i64 9
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* @NR24_REG, align 4
  br label %375

333:                                              ; preds = %259
  %334 = load i32, i32* %6, align 4
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 8
  store i32 %334, i32* %337, align 4
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %339 = bitcast %struct.TYPE_12__* %338 to i32*
  %340 = getelementptr inbounds i32, i32* %339, i64 21
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* @NR51_REG, align 4
  br label %375

342:                                              ; preds = %259
  %343 = load i32, i32* %6, align 4
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 9
  store i32 %343, i32* %346, align 4
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %348 = bitcast %struct.TYPE_12__* %347 to i32*
  %349 = getelementptr inbounds i32, i32* %348, i64 21
  %350 = load i32, i32* %349, align 4
  store i32 %350, i32* @NR51_REG, align 4
  br label %375

351:                                              ; preds = %259
  %352 = load i32, i32* %6, align 4
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 10
  store i32 %352, i32* %355, align 4
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %357 = bitcast %struct.TYPE_12__* %356 to i32*
  %358 = getelementptr inbounds i32, i32* %357, i64 22
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* @NR52_REG, align 4
  br label %375

360:                                              ; preds = %259
  %361 = load i32, i32* %4, align 4
  %362 = load i32, i32* %4, align 4
  %363 = call i32 @current_value(i32 %362, i32 129)
  call void @update_value(i32 %361, i32 129, i32 %363)
  %364 = load i32, i32* %6, align 4
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 3
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 0
  store i32 %364, i32* %367, align 4
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %369 = bitcast %struct.TYPE_12__* %368 to i32*
  %370 = getelementptr inbounds i32, i32* %369, i64 9
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* @NR24_REG, align 4
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 3
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 0
  store i32 0, i32* %374, align 4
  br label %375

375:                                              ; preds = %259, %360, %351, %342, %333, %324, %306, %297, %288, %279, %270, %261
  br label %597

376:                                              ; preds = %256
  %377 = load i32, i32* %4, align 4
  %378 = icmp eq i32 %377, 3
  br i1 %378, label %379, label %478

379:                                              ; preds = %376
  %380 = load i32, i32* %5, align 4
  switch i32 %380, label %477 [
    i32 0, label %381
    i32 1, label %390
    i32 2, label %399
    i32 3, label %408
    i32 129, label %408
    i32 4, label %426
    i32 5, label %435
    i32 6, label %444
    i32 7, label %453
    i32 128, label %462
  ]

381:                                              ; preds = %379
  %382 = load i32, i32* %6, align 4
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 1
  store i32 %382, i32* %385, align 4
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %387 = bitcast %struct.TYPE_12__* %386 to i32*
  %388 = getelementptr inbounds i32, i32* %387, i64 10
  %389 = load i32, i32* %388, align 4
  store i32 %389, i32* @NR30_REG, align 4
  br label %477

390:                                              ; preds = %379
  %391 = load i32, i32* %6, align 4
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 2
  store i32 %391, i32* %394, align 4
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %396 = bitcast %struct.TYPE_12__* %395 to i32*
  %397 = getelementptr inbounds i32, i32* %396, i64 11
  %398 = load i32, i32* %397, align 4
  store i32 %398, i32* @NR31_REG, align 4
  br label %477

399:                                              ; preds = %379
  %400 = load i32, i32* %6, align 4
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 3
  store i32 %400, i32* %403, align 4
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %405 = bitcast %struct.TYPE_12__* %404 to i32*
  %406 = getelementptr inbounds i32, i32* %405, i64 12
  %407 = load i32, i32* %406, align 4
  store i32 %407, i32* @NR32_REG, align 4
  br label %477

408:                                              ; preds = %379, %379
  %409 = load i32, i32* %6, align 4
  %410 = ashr i32 %409, 8
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 4
  store i32 %410, i32* %413, align 4
  %414 = load i32, i32* %6, align 4
  %415 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 5
  store i32 %414, i32* %417, align 4
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %419 = bitcast %struct.TYPE_12__* %418 to i32*
  %420 = getelementptr inbounds i32, i32* %419, i64 13
  %421 = load i32, i32* %420, align 4
  store i32 %421, i32* @NR33_REG, align 4
  %422 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %423 = bitcast %struct.TYPE_12__* %422 to i32*
  %424 = getelementptr inbounds i32, i32* %423, i64 14
  %425 = load i32, i32* %424, align 4
  store i32 %425, i32* @NR34_REG, align 4
  br label %477

426:                                              ; preds = %379
  %427 = load i32, i32* %6, align 4
  %428 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 2
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 6
  store i32 %427, i32* %430, align 4
  %431 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %432 = bitcast %struct.TYPE_12__* %431 to i32*
  %433 = getelementptr inbounds i32, i32* %432, i64 14
  %434 = load i32, i32* %433, align 4
  store i32 %434, i32* @NR34_REG, align 4
  br label %477

435:                                              ; preds = %379
  %436 = load i32, i32* %6, align 4
  %437 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 11
  store i32 %436, i32* %439, align 4
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %441 = bitcast %struct.TYPE_12__* %440 to i32*
  %442 = getelementptr inbounds i32, i32* %441, i64 21
  %443 = load i32, i32* %442, align 4
  store i32 %443, i32* @NR51_REG, align 4
  br label %477

444:                                              ; preds = %379
  %445 = load i32, i32* %6, align 4
  %446 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %447, i32 0, i32 12
  store i32 %445, i32* %448, align 4
  %449 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %450 = bitcast %struct.TYPE_12__* %449 to i32*
  %451 = getelementptr inbounds i32, i32* %450, i64 21
  %452 = load i32, i32* %451, align 4
  store i32 %452, i32* @NR51_REG, align 4
  br label %477

453:                                              ; preds = %379
  %454 = load i32, i32* %6, align 4
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i32 0, i32 13
  store i32 %454, i32* %457, align 4
  %458 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %459 = bitcast %struct.TYPE_12__* %458 to i32*
  %460 = getelementptr inbounds i32, i32* %459, i64 22
  %461 = load i32, i32* %460, align 4
  store i32 %461, i32* @NR52_REG, align 4
  br label %477

462:                                              ; preds = %379
  %463 = load i32, i32* %4, align 4
  %464 = load i32, i32* %4, align 4
  %465 = call i32 @current_value(i32 %464, i32 129)
  call void @update_value(i32 %463, i32 129, i32 %465)
  %466 = load i32, i32* %6, align 4
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 2
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 0
  store i32 %466, i32* %469, align 4
  %470 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %471 = bitcast %struct.TYPE_12__* %470 to i32*
  %472 = getelementptr inbounds i32, i32* %471, i64 14
  %473 = load i32, i32* %472, align 4
  store i32 %473, i32* @NR34_REG, align 4
  %474 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %475 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 0
  store i32 0, i32* %476, align 4
  br label %477

477:                                              ; preds = %379, %462, %453, %444, %435, %426, %408, %399, %390, %381
  br label %596

478:                                              ; preds = %376
  %479 = load i32, i32* %4, align 4
  %480 = icmp eq i32 %479, 4
  br i1 %480, label %481, label %595

481:                                              ; preds = %478
  %482 = load i32, i32* %5, align 4
  switch i32 %482, label %594 [
    i32 0, label %483
    i32 1, label %492
    i32 2, label %501
    i32 3, label %510
    i32 4, label %519
    i32 5, label %528
    i32 6, label %537
    i32 7, label %546
    i32 8, label %555
    i32 9, label %564
    i32 10, label %573
    i32 128, label %582
  ]

483:                                              ; preds = %481
  %484 = load i32, i32* %6, align 4
  %485 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %486 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 1
  store i32 %484, i32* %487, align 4
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %489 = bitcast %struct.TYPE_12__* %488 to i32*
  %490 = getelementptr inbounds i32, i32* %489, i64 16
  %491 = load i32, i32* %490, align 4
  store i32 %491, i32* @NR41_REG, align 4
  br label %594

492:                                              ; preds = %481
  %493 = load i32, i32* %6, align 4
  %494 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %495 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i32 0, i32 2
  store i32 %493, i32* %496, align 4
  %497 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %498 = bitcast %struct.TYPE_12__* %497 to i32*
  %499 = getelementptr inbounds i32, i32* %498, i64 17
  %500 = load i32, i32* %499, align 4
  store i32 %500, i32* @NR42_REG, align 4
  br label %594

501:                                              ; preds = %481
  %502 = load i32, i32* %6, align 4
  %503 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %504 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %504, i32 0, i32 3
  store i32 %502, i32* %505, align 4
  %506 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %507 = bitcast %struct.TYPE_12__* %506 to i32*
  %508 = getelementptr inbounds i32, i32* %507, i64 17
  %509 = load i32, i32* %508, align 4
  store i32 %509, i32* @NR42_REG, align 4
  br label %594

510:                                              ; preds = %481
  %511 = load i32, i32* %6, align 4
  %512 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %513 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %513, i32 0, i32 4
  store i32 %511, i32* %514, align 4
  %515 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %516 = bitcast %struct.TYPE_12__* %515 to i32*
  %517 = getelementptr inbounds i32, i32* %516, i64 17
  %518 = load i32, i32* %517, align 4
  store i32 %518, i32* @NR42_REG, align 4
  br label %594

519:                                              ; preds = %481
  %520 = load i32, i32* %6, align 4
  %521 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %522 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %522, i32 0, i32 5
  store i32 %520, i32* %523, align 4
  %524 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %525 = bitcast %struct.TYPE_12__* %524 to i32*
  %526 = getelementptr inbounds i32, i32* %525, i64 18
  %527 = load i32, i32* %526, align 4
  store i32 %527, i32* @NR43_REG, align 4
  br label %594

528:                                              ; preds = %481
  %529 = load i32, i32* %6, align 4
  %530 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %531 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %531, i32 0, i32 6
  store i32 %529, i32* %532, align 4
  %533 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %534 = bitcast %struct.TYPE_12__* %533 to i32*
  %535 = getelementptr inbounds i32, i32* %534, i64 18
  %536 = load i32, i32* %535, align 4
  store i32 %536, i32* @NR43_REG, align 4
  br label %594

537:                                              ; preds = %481
  %538 = load i32, i32* %6, align 4
  %539 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %540 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %540, i32 0, i32 7
  store i32 %538, i32* %541, align 4
  %542 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %543 = bitcast %struct.TYPE_12__* %542 to i32*
  %544 = getelementptr inbounds i32, i32* %543, i64 18
  %545 = load i32, i32* %544, align 4
  store i32 %545, i32* @NR43_REG, align 4
  br label %594

546:                                              ; preds = %481
  %547 = load i32, i32* %6, align 4
  %548 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %549 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %549, i32 0, i32 8
  store i32 %547, i32* %550, align 4
  %551 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %552 = bitcast %struct.TYPE_12__* %551 to i32*
  %553 = getelementptr inbounds i32, i32* %552, i64 19
  %554 = load i32, i32* %553, align 4
  store i32 %554, i32* @NR44_REG, align 4
  br label %594

555:                                              ; preds = %481
  %556 = load i32, i32* %6, align 4
  %557 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %558 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %558, i32 0, i32 14
  store i32 %556, i32* %559, align 4
  %560 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %561 = bitcast %struct.TYPE_12__* %560 to i32*
  %562 = getelementptr inbounds i32, i32* %561, i64 21
  %563 = load i32, i32* %562, align 4
  store i32 %563, i32* @NR51_REG, align 4
  br label %594

564:                                              ; preds = %481
  %565 = load i32, i32* %6, align 4
  %566 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %567 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %566, i32 0, i32 1
  %568 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %567, i32 0, i32 15
  store i32 %565, i32* %568, align 4
  %569 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %570 = bitcast %struct.TYPE_12__* %569 to i32*
  %571 = getelementptr inbounds i32, i32* %570, i64 21
  %572 = load i32, i32* %571, align 4
  store i32 %572, i32* @NR51_REG, align 4
  br label %594

573:                                              ; preds = %481
  %574 = load i32, i32* %6, align 4
  %575 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %576 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %576, i32 0, i32 16
  store i32 %574, i32* %577, align 4
  %578 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %579 = bitcast %struct.TYPE_12__* %578 to i32*
  %580 = getelementptr inbounds i32, i32* %579, i64 22
  %581 = load i32, i32* %580, align 4
  store i32 %581, i32* @NR52_REG, align 4
  br label %594

582:                                              ; preds = %481
  %583 = load i32, i32* %6, align 4
  %584 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %585 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %585, i32 0, i32 0
  store i32 %583, i32* %586, align 4
  %587 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %588 = bitcast %struct.TYPE_12__* %587 to i32*
  %589 = getelementptr inbounds i32, i32* %588, i64 19
  %590 = load i32, i32* %589, align 4
  store i32 %590, i32* @NR44_REG, align 4
  %591 = load %struct.TYPE_12__*, %struct.TYPE_12__** @soundReg, align 8
  %592 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %591, i32 0, i32 0
  %593 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %592, i32 0, i32 0
  store i32 0, i32* %593, align 4
  br label %594

594:                                              ; preds = %481, %582, %573, %564, %555, %546, %537, %528, %519, %510, %501, %492, %483
  br label %595

595:                                              ; preds = %594, %478
  br label %596

596:                                              ; preds = %595, %477
  br label %597

597:                                              ; preds = %596, %375
  br label %598

598:                                              ; preds = %597, %255
  br label %599

599:                                              ; preds = %598, %108
  ret void
}

declare dso_local i32 @current_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
