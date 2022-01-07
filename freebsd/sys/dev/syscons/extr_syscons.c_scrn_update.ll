; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_scrn_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_scrn_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32, i32)* }
%struct.TYPE_19__ = type { i32 }

@MOUSE_VISIBLE = common dso_local global i32 0, align 4
@MOUSE_MOVED = common dso_local global i32 0, align 4
@MOUSE_HIDDEN = common dso_local global i32 0, align 4
@CURSOR_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"scrn_update(): scp->end %d > size_of_screen!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"scrn_update(): scp->start %d < 0\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CONS_BLINK_CURSOR = common dso_local global i32 0, align 4
@SC_MOUSE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32)* @scrn_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrn_update(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 10
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %12 = call i32 @SC_VIDEO_LOCK(%struct.TYPE_18__* %11)
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MOUSE_VISIBLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %108

19:                                               ; preds = %2
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %25, %28
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MOUSE_MOVED, align 4
  %35 = load i32, i32* @MOUSE_HIDDEN, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %81, label %39

39:                                               ; preds = %19
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @and_region(i32* %7, i32* %8, i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %81, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CURSOR_ENABLED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %107

55:                                               ; preds = %48
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %107

63:                                               ; preds = %55
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @and_region(i32* %7, i32* %8, i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %63
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @and_region(i32* %7, i32* %8, i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %72, %63, %39, %19
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %83 = call i32 @sc_remove_mouse_image(%struct.TYPE_21__* %82)
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = icmp sge i32 %86, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %81
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = sub nsw i32 %102, 1
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %95, %81
  br label %107

107:                                              ; preds = %106, %72, %55, %48
  br label %108

108:                                              ; preds = %107, %2
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %114, %117
  %119 = icmp sge i32 %111, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %108
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %127, %130
  %132 = sub nsw i32 %131, 1
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %120, %108
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 3
  store i32 0, i32* %146, align 4
  br label %147

147:                                              ; preds = %140, %135
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = icmp sle i32 %150, %153
  br i1 %154, label %155, label %308

155:                                              ; preds = %147
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %287

160:                                              ; preds = %155
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = icmp sle i32 %163, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %160
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %5, align 4
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %6, align 4
  br label %183

175:                                              ; preds = %160
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %5, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %175, %168
  %184 = load i32, i32* %5, align 4
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %8, align 4
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @and_region(i32* %7, i32* %8, i32 %188, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %266

194:                                              ; preds = %183
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 11
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = load i32 (%struct.TYPE_21__*, i32, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32, i32)** %198, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %7, align 4
  %204 = sub nsw i32 %202, %203
  %205 = add nsw i32 %204, 1
  %206 = load i32, i32* @TRUE, align 4
  %207 = call i32 %199(%struct.TYPE_21__* %200, i32 %201, i32 %205, i32 %206)
  store i32 0, i32* %7, align 4
  %208 = load i32, i32* %5, align 4
  %209 = sub nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = call i64 @and_region(i32* %7, i32* %8, i32 %212, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %232

218:                                              ; preds = %194
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 11
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 1
  %223 = load i32 (%struct.TYPE_21__*, i32, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32, i32)** %222, align 8
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %7, align 4
  %228 = sub nsw i32 %226, %227
  %229 = add nsw i32 %228, 1
  %230 = load i32, i32* @FALSE, align 4
  %231 = call i32 %223(%struct.TYPE_21__* %224, i32 %225, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %218, %194
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 %237, %240
  %242 = sub nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i64 @and_region(i32* %7, i32* %8, i32 %245, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %265

251:                                              ; preds = %232
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 11
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 1
  %256 = load i32 (%struct.TYPE_21__*, i32, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32, i32)** %255, align 8
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %7, align 4
  %261 = sub nsw i32 %259, %260
  %262 = add nsw i32 %261, 1
  %263 = load i32, i32* @FALSE, align 4
  %264 = call i32 %256(%struct.TYPE_21__* %257, i32 %258, i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %251, %232
  br label %286

266:                                              ; preds = %183
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 11
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = load i32 (%struct.TYPE_21__*, i32, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32, i32)** %270, align 8
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = sub nsw i32 %278, %281
  %283 = add nsw i32 %282, 1
  %284 = load i32, i32* @FALSE, align 4
  %285 = call i32 %271(%struct.TYPE_21__* %272, i32 %275, i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %266, %265
  br label %307

287:                                              ; preds = %155
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 11
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 1
  %292 = load i32 (%struct.TYPE_21__*, i32, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32, i32)** %291, align 8
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %299, %302
  %304 = add nsw i32 %303, 1
  %305 = load i32, i32* @FALSE, align 4
  %306 = call i32 %292(%struct.TYPE_21__* %293, i32 %296, i32 %304, i32 %305)
  br label %307

307:                                              ; preds = %287, %286
  br label %308

308:                                              ; preds = %307, %147
  %309 = load i32, i32* %4, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %328, label %311

311:                                              ; preds = %308
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 4
  store i32 0, i32* %313, align 8
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = mul nsw i32 %316, %319
  %321 = sub nsw i32 %320, 1
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 4
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i32 0, i32 10
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %325, align 8
  %327 = call i32 @SC_VIDEO_UNLOCK(%struct.TYPE_18__* %326)
  br label %448

328:                                              ; preds = %308
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @CURSOR_ENABLED, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %403

335:                                              ; preds = %328
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %7, align 4
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  store i32 %341, i32* %8, align 4
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 6
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %344, %347
  br i1 %348, label %349, label %364

349:                                              ; preds = %335
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 6
  %355 = load i32, i32* %354, align 8
  %356 = call i64 @and_region(i32* %7, i32* %8, i32 %352, i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %349
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %360 = call i32 @sc_remove_cursor_image(%struct.TYPE_21__* %359)
  br label %361

361:                                              ; preds = %358, %349
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %363 = call i32 @sc_draw_cursor_image(%struct.TYPE_21__* %362)
  br label %402

364:                                              ; preds = %335
  %365 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 5
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 4
  %371 = call i64 @and_region(i32* %7, i32* %8, i32 %367, i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %364
  %374 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %375 = call i32 @sc_draw_cursor_image(%struct.TYPE_21__* %374)
  br label %401

376:                                              ; preds = %364
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i32 0, i32 12
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @CONS_BLINK_CURSOR, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %400

384:                                              ; preds = %376
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 11
  %387 = load %struct.TYPE_20__*, %struct.TYPE_20__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %387, i32 0, i32 0
  %389 = load i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32)** %388, align 8
  %390 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 5
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %395 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @sc_inside_cutmark(%struct.TYPE_21__* %394, i32 %397)
  %399 = call i32 %389(%struct.TYPE_21__* %390, i32 %393, i32 %398)
  br label %400

400:                                              ; preds = %384, %376
  br label %401

401:                                              ; preds = %400, %373
  br label %402

402:                                              ; preds = %401, %361
  br label %403

403:                                              ; preds = %402, %328
  %404 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %404, i32 0, i32 10
  %406 = load %struct.TYPE_18__*, %struct.TYPE_18__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @SC_MOUSE_ENABLED, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %431

412:                                              ; preds = %403
  %413 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @MOUSE_VISIBLE, align 4
  %417 = load i32, i32* @MOUSE_HIDDEN, align 4
  %418 = or i32 %416, %417
  %419 = and i32 %415, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %430, label %421

421:                                              ; preds = %412
  %422 = load i32, i32* @MOUSE_MOVED, align 4
  %423 = xor i32 %422, -1
  %424 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = and i32 %426, %423
  store i32 %427, i32* %425, align 8
  %428 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %429 = call i32 @sc_draw_mouse_image(%struct.TYPE_21__* %428)
  br label %430

430:                                              ; preds = %421, %412
  br label %431

431:                                              ; preds = %430, %403
  %432 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %432, i32 0, i32 4
  store i32 0, i32* %433, align 8
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %437, i32 0, i32 7
  %439 = load i32, i32* %438, align 4
  %440 = mul nsw i32 %436, %439
  %441 = sub nsw i32 %440, 1
  %442 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %442, i32 0, i32 3
  store i32 %441, i32* %443, align 4
  %444 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %444, i32 0, i32 10
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %445, align 8
  %447 = call i32 @SC_VIDEO_UNLOCK(%struct.TYPE_18__* %446)
  br label %448

448:                                              ; preds = %431, %311
  ret void
}

declare dso_local i32 @SC_VIDEO_LOCK(%struct.TYPE_18__*) #1

declare dso_local i64 @and_region(i32*, i32*, i32, i32) #1

declare dso_local i32 @sc_remove_mouse_image(%struct.TYPE_21__*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @SC_VIDEO_UNLOCK(%struct.TYPE_18__*) #1

declare dso_local i32 @sc_remove_cursor_image(%struct.TYPE_21__*) #1

declare dso_local i32 @sc_draw_cursor_image(%struct.TYPE_21__*) #1

declare dso_local i32 @sc_inside_cutmark(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @sc_draw_mouse_image(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
