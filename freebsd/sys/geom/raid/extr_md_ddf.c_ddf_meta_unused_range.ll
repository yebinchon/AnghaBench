; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_unused_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_unused_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ddf_meta = type { i32 }
%struct.ddf_vdc_record = type { i32, i32*, i32, i32 }

@pdd = common dso_local global %struct.TYPE_7__* null, align 8
@pdr = common dso_local global %struct.TYPE_6__* null, align 8
@DDF_VDCR_SIGNATURE = common dso_local global i64 0, align 8
@hdr = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddf_meta*, i64*, i64*)* @ddf_meta_unused_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddf_meta_unused_range(%struct.ddf_meta* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.ddf_meta*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ddf_vdc_record*, align 8
  %8 = alloca [32 x i64], align 16
  %9 = alloca [32 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.ddf_meta* %0, %struct.ddf_meta** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %19 = load i64*, i64** %5, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %6, align 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pdd, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @GET32(%struct.ddf_meta* %21, i32 %24)
  store i64 %25, i64* %18, align 8
  %26 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %27 = load i64, i64* %18, align 8
  %28 = call i32 @ddf_meta_find_pd(%struct.ddf_meta* %26, i32* null, i64 %27)
  store i32 %28, i32* %17, align 4
  %29 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 0
  store i64 0, i64* %29, align 16
  %30 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pdr, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @GET64(%struct.ddf_meta* %30, i32 %38)
  %40 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 0
  store i64 %39, i64* %40, align 16
  store i32 1, i32* %15, align 4
  %41 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %42 = call i32 @GETCRNUM(%struct.ddf_meta* %41)
  store i32 %42, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %191, %3
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %194

47:                                               ; preds = %43
  %48 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.ddf_vdc_record* @GETVDCPTR(%struct.ddf_meta* %48, i32 %49)
  store %struct.ddf_vdc_record* %50, %struct.ddf_vdc_record** %7, align 8
  %51 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %52 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %7, align 8
  %53 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @GET32D(%struct.ddf_meta* %51, i32 %54)
  %56 = load i64, i64* @DDF_VDCR_SIGNATURE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %191

59:                                               ; preds = %47
  store i32 0, i32* %17, align 4
  br label %60

60:                                               ; preds = %82, %59
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %63 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %7, align 8
  %64 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @GET16D(%struct.ddf_meta* %62, i32 %65)
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %60
  %69 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %70 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %7, align 8
  %71 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @GET32D(%struct.ddf_meta* %69, i32 %76)
  %78 = load i64, i64* %18, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %85

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %17, align 4
  br label %60

85:                                               ; preds = %80, %60
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %88 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %7, align 8
  %89 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @GET16D(%struct.ddf_meta* %87, i32 %90)
  %92 = icmp eq i32 %86, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %191

94:                                               ; preds = %85
  %95 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %7, align 8
  %96 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hdr, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @GET16(%struct.ddf_meta* %98, i32 %101)
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  store i32* %103, i32** %12, align 8
  %104 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = call i64 @GET64P(%struct.ddf_meta* %104, i32* %108)
  store i64 %109, i64* %10, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %112 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %7, align 8
  %113 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @GET64D(%struct.ddf_meta* %111, i32 %114)
  %116 = add nsw i64 %110, %115
  store i64 %116, i64* %11, align 8
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %187, %94
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %190

121:                                              ; preds = %117
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %11, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = icmp sle i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128, %121
  br label %187

136:                                              ; preds = %128
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %136
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %11, align 8
  %149 = icmp sgt i64 %147, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %143
  %151 = load i64, i64* %11, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 %153
  store i64 %151, i64* %154, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %160
  store i64 %158, i64* %161, align 8
  %162 = load i64, i64* %10, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %164
  store i64 %162, i64* %165, align 8
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %186

168:                                              ; preds = %143, %136
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %10, align 8
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load i64, i64* %10, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %178
  store i64 %176, i64* %179, align 8
  br label %185

180:                                              ; preds = %168
  %181 = load i64, i64* %11, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 %183
  store i64 %181, i64* %184, align 8
  br label %185

185:                                              ; preds = %180, %175
  br label %186

186:                                              ; preds = %185, %150
  br label %187

187:                                              ; preds = %186, %135
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %117

190:                                              ; preds = %117
  br label %191

191:                                              ; preds = %190, %93, %58
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %13, align 4
  br label %43

194:                                              ; preds = %43
  store i32 0, i32* %14, align 4
  br label %195

195:                                              ; preds = %229, %194
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %15, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %232

199:                                              ; preds = %195
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %203, %207
  %209 = load i64*, i64** %6, align 8
  %210 = load i64, i64* %209, align 8
  %211 = icmp sgt i64 %208, %210
  br i1 %211, label %212, label %228

212:                                              ; preds = %199
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = load i64*, i64** %5, align 8
  store i64 %216, i64* %217, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = sub nsw i64 %221, %225
  %227 = load i64*, i64** %6, align 8
  store i64 %226, i64* %227, align 8
  br label %228

228:                                              ; preds = %212, %199
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %14, align 4
  br label %195

232:                                              ; preds = %195
  %233 = load i64*, i64** %6, align 8
  %234 = load i64, i64* %233, align 8
  %235 = icmp sgt i64 %234, 0
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 1, i32 0
  ret i32 %237
}

declare dso_local i64 @GET32(%struct.ddf_meta*, i32) #1

declare dso_local i32 @ddf_meta_find_pd(%struct.ddf_meta*, i32*, i64) #1

declare dso_local i64 @GET64(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GETCRNUM(%struct.ddf_meta*) #1

declare dso_local %struct.ddf_vdc_record* @GETVDCPTR(%struct.ddf_meta*, i32) #1

declare dso_local i64 @GET32D(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GET16D(%struct.ddf_meta*, i32) #1

declare dso_local i64 @GET16(%struct.ddf_meta*, i32) #1

declare dso_local i64 @GET64P(%struct.ddf_meta*, i32*) #1

declare dso_local i64 @GET64D(%struct.ddf_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
