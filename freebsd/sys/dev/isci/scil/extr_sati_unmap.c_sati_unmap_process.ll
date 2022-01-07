; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_unmap.c_sati_unmap_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_unmap.c_sati_unmap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i32*, i32* }
%struct.TYPE_15__ = type { i64, i64 }

@SATI_DSM_MAX_SECTOR_COUNT = common dso_local global i64 0, align 8
@SATI_DSM_MAX_SECTOR_ADDRESS = common dso_local global i64 0, align 8
@SATI_SEQUENCE_STATE_FINAL = common dso_local global i32 0, align 4
@SATI_SUCCESS_SGL_TRANSLATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_unmap_process(%struct.TYPE_14__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %7, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 9
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 8
  store i32* %19, i32** %21, align 8
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %100, %3
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i1 [ false, %22 ], [ %32, %28 ]
  br i1 %34, label %35, label %116

35:                                               ; preds = %33
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SATI_DSM_MAX_SECTOR_COUNT, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load i64, i64* @SATI_DSM_MAX_SECTOR_COUNT, align 8
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* @SATI_DSM_MAX_SECTOR_COUNT, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SATI_DSM_MAX_SECTOR_COUNT, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  br label %61

55:                                               ; preds = %35
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %8, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %41
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = bitcast i32* %67 to %struct.TYPE_15__*
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i64 %64, i64* %69, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 8
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast i32* %73 to %struct.TYPE_15__*
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  store i64 %70, i64* %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %61
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, -1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @sati_unmap_load_next_descriptor(%struct.TYPE_14__* %90, i8* %91)
  br label %93

93:                                               ; preds = %89, %80
  br label %100

94:                                               ; preds = %61
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %94, %93
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SATI_DSM_MAX_SECTOR_ADDRESS, align 8
  %105 = icmp sle i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load i64, i64* %9, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %9, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 8
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 8
  store i32* %113, i32** %115, align 8
  br label %22

116:                                              ; preds = %33
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @sati_unmap_calculate_dsm_blocks(%struct.TYPE_14__* %117, i64 %118)
  store i64 %119, i64* %12, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = mul nsw i64 %120, %125
  store i64 %126, i64* %10, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %128 = call i64 @sati_unmap_get_max_buffer_size_in_blocks(%struct.TYPE_14__* %127)
  store i64 %128, i64* %13, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %11, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 8
  %136 = load i32*, i32** %135, align 8
  %137 = ptrtoint i32* %136 to i32
  %138 = sext i32 %137 to i64
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %143, 1
  %145 = and i64 %138, %144
  %146 = load i64, i64* %11, align 8
  %147 = sub nsw i64 %146, %145
  store i64 %147, i64* %11, align 8
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %148, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %116
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %12, align 8
  %163 = sub nsw i64 %161, %162
  %164 = mul nsw i64 %160, %163
  %165 = load i64, i64* %11, align 8
  %166 = add nsw i64 %165, %164
  store i64 %166, i64* %11, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 8
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* %11, align 8
  %171 = call i32 @memset(i32* %169, i32 0, i64 %170)
  br label %172

172:                                              ; preds = %155, %116
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = load i64, i64* %10, align 8
  %183 = call i32 @sati_cb_sge_write(i32 %175, i32 %178, i32 %181, i64 %182)
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %185 = load i8*, i8** %5, align 8
  %186 = load i8*, i8** %6, align 8
  %187 = load i64, i64* %12, align 8
  %188 = call i32 @sati_unmap_construct(%struct.TYPE_14__* %184, i8* %185, i8* %186, i64 %187)
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %172
  %194 = load i32, i32* @SATI_SEQUENCE_STATE_FINAL, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  br label %197

197:                                              ; preds = %193, %172
  %198 = load i32, i32* @SATI_SUCCESS_SGL_TRANSLATED, align 4
  ret i32 %198
}

declare dso_local i32 @sati_unmap_load_next_descriptor(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @sati_unmap_calculate_dsm_blocks(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @sati_unmap_get_max_buffer_size_in_blocks(%struct.TYPE_14__*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @sati_cb_sge_write(i32, i32, i32, i64) #1

declare dso_local i32 @sati_unmap_construct(%struct.TYPE_14__*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
