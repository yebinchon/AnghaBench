; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i64, i64, i64, %struct.g_geom* }
%struct.g_geom = type { i32, %struct.g_slicer*, i32 }
%struct.g_slicer = type { i64, %struct.g_slice* }
%struct.g_slice = type { i64, i64, %struct.g_provider* }
%struct.g_consumer = type { i64, i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"g_slice_access but no consumer\00", align 1
@EPERM = common dso_local global i32 0, align 4
@G_GEOM_WITHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @g_slice_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_slice_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.g_geom*, align 8
  %13 = alloca %struct.g_consumer*, align 8
  %14 = alloca %struct.g_provider*, align 8
  %15 = alloca %struct.g_slicer*, align 8
  %16 = alloca %struct.g_slice*, align 8
  %17 = alloca %struct.g_slice*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 3
  %20 = load %struct.g_geom*, %struct.g_geom** %19, align 8
  store %struct.g_geom* %20, %struct.g_geom** %12, align 8
  %21 = load %struct.g_geom*, %struct.g_geom** %12, align 8
  %22 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %21, i32 0, i32 2
  %23 = call %struct.g_consumer* @LIST_FIRST(i32* %22)
  store %struct.g_consumer* %23, %struct.g_consumer** %13, align 8
  %24 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %25 = icmp ne %struct.g_consumer* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.g_geom*, %struct.g_geom** %12, align 8
  %29 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %28, i32 0, i32 1
  %30 = load %struct.g_slicer*, %struct.g_slicer** %29, align 8
  store %struct.g_slicer* %30, %struct.g_slicer** %15, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %135

39:                                               ; preds = %36, %33, %4
  %40 = load %struct.g_slicer*, %struct.g_slicer** %15, align 8
  %41 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %40, i32 0, i32 1
  %42 = load %struct.g_slice*, %struct.g_slice** %41, align 8
  %43 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %44 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %42, i64 %45
  store %struct.g_slice* %46, %struct.g_slice** %16, align 8
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %131, %39
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.g_slicer*, %struct.g_slicer** %15, align 8
  %50 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %134

53:                                               ; preds = %47
  %54 = load %struct.g_slicer*, %struct.g_slicer** %15, align 8
  %55 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %54, i32 0, i32 1
  %56 = load %struct.g_slice*, %struct.g_slice** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %56, i64 %57
  store %struct.g_slice* %58, %struct.g_slice** %17, align 8
  %59 = load %struct.g_slice*, %struct.g_slice** %17, align 8
  %60 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %131

64:                                               ; preds = %53
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %67 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %131

71:                                               ; preds = %64
  %72 = load %struct.g_slice*, %struct.g_slice** %16, align 8
  %73 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.g_slice*, %struct.g_slice** %16, align 8
  %76 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load %struct.g_slice*, %struct.g_slice** %17, align 8
  %80 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %131

84:                                               ; preds = %71
  %85 = load %struct.g_slice*, %struct.g_slice** %17, align 8
  %86 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.g_slice*, %struct.g_slice** %17, align 8
  %89 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = load %struct.g_slice*, %struct.g_slice** %16, align 8
  %93 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %131

97:                                               ; preds = %84
  %98 = load %struct.g_slice*, %struct.g_slice** %17, align 8
  %99 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %98, i32 0, i32 2
  %100 = load %struct.g_provider*, %struct.g_provider** %99, align 8
  store %struct.g_provider* %100, %struct.g_provider** %14, align 8
  %101 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %102 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %97
  %109 = load %struct.g_provider*, %struct.g_provider** %14, align 8
  %110 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @EPERM, align 4
  store i32 %114, i32* %5, align 4
  br label %213

115:                                              ; preds = %108, %97
  %116 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %117 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %115
  %124 = load %struct.g_provider*, %struct.g_provider** %14, align 8
  %125 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @EPERM, align 4
  store i32 %129, i32* %5, align 4
  br label %213

130:                                              ; preds = %123, %115
  br label %131

131:                                              ; preds = %130, %96, %83, %70, %63
  %132 = load i64, i64* %11, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %11, align 8
  br label %47

134:                                              ; preds = %47
  br label %135

135:                                              ; preds = %134, %36
  %136 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %137 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %142 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %147 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %150, %145, %140, %135
  %154 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %155 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %156, %158
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %179

161:                                              ; preds = %153
  %162 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %163 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %164, %166
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %161
  %170 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %171 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %172, %173
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %176, %169, %161, %153
  %180 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @g_access(%struct.g_consumer* %180, i32 %181, i32 %182, i32 %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %211

187:                                              ; preds = %179
  %188 = load %struct.g_geom*, %struct.g_geom** %12, align 8
  %189 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @G_GEOM_WITHER, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %187
  %195 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %196 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %199 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %197, %200
  %202 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %203 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %201, %205
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %194
  %209 = load %struct.g_geom*, %struct.g_geom** %12, align 8
  %210 = call i32 @g_slice_free(%struct.g_geom* %209)
  br label %211

211:                                              ; preds = %208, %194, %187, %179
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %211, %128, %113
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_slice_free(%struct.g_geom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
