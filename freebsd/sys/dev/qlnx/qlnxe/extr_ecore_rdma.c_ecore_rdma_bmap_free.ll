; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_bmap_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_bmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_bmap = type { i64*, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"%s bitmap not free - size=%d, weight=%d, 512 bits per line\0A\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"line 0x%04x: 0x%016llx 0x%016llx 0x%016llx 0x%016llx 0x%016llx 0x%016llx 0x%016llx 0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"line 0x%04x: \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0x%016llx \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@OSAL_NULL = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_rdma_bmap_free(%struct.ecore_hwfn* %0, %struct.ecore_bmap* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_bmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca [200 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_bmap* %1, %struct.ecore_bmap** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %16 = icmp ne %struct.ecore_bmap* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %3
  br label %194

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %183

27:                                               ; preds = %23
  %28 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @OSAL_BITMAP_WEIGHT(i64* %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %183

38:                                               ; preds = %27
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %40 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %41 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %44 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_NOTICE(%struct.ecore_hwfn* %39, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %46)
  %48 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %49 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  store i64* %50, i64** %12, align 8
  %51 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %52 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %53, 512
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %55, 8
  %57 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %58 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = srem i32 %59, 512
  %61 = add nsw i32 %60, 63
  %62 = sdiv i32 %61, 64
  %63 = add nsw i32 %56, %62
  store i32 %63, i32* %11, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %127, %38
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %132

68:                                               ; preds = %64
  %69 = load i64*, i64** %12, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = call i32 @OSAL_BITMAP_WEIGHT(i64* %72, i32 512)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %126

75:                                               ; preds = %68
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i64*, i64** %12, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %12, align 8
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %12, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %12, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 3
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %12, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %12, align 8
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 5
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %12, align 8
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 6
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %12, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 7
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_NOTICE(%struct.ecore_hwfn* %76, i32 0, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %77, i64 %82, i64 %88, i64 %94, i64 %100, i64 %106, i64 %112, i64 %118, i64 %124)
  br label %126

126:                                              ; preds = %75, %68
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 8
  store i32 %131, i32* %9, align 4
  br label %64

132:                                              ; preds = %64
  %133 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %134 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = srem i32 %135, 512
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %182

138:                                              ; preds = %132
  %139 = load i64*, i64** %12, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %144 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = mul nsw i32 %146, 64
  %148 = sub nsw i32 %145, %147
  %149 = call i32 @OSAL_BITMAP_WEIGHT(i64* %142, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %182

151:                                              ; preds = %138
  %152 = bitcast [200 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %152, i8 0, i64 800, i1 false)
  %153 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = call i32 @OSAL_SPRINTF(i32* %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %155)
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %174, %151
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %157
  %162 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i64*, i64** %12, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @OSAL_SPRINTF(i32* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %170)
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %161
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  br label %157

177:                                              ; preds = %157
  %178 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %179 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %180 = ptrtoint i32* %179 to i32
  %181 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_NOTICE(%struct.ecore_hwfn* %178, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %177, %138, %132
  br label %183

183:                                              ; preds = %182, %37, %26
  %184 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %185 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %188 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = call i32 @OSAL_FREE(i32 %186, i64* %189)
  %191 = load i64*, i64** @OSAL_NULL, align 8
  %192 = load %struct.ecore_bmap*, %struct.ecore_bmap** %5, align 8
  %193 = getelementptr inbounds %struct.ecore_bmap, %struct.ecore_bmap* %192, i32 0, i32 0
  store i64* %191, i64** %193, align 8
  br label %194

194:                                              ; preds = %183, %22
  ret void
}

declare dso_local i32 @OSAL_BITMAP_WEIGHT(i64*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @OSAL_SPRINTF(i32*, i8*, i64) #1

declare dso_local i32 @OSAL_FREE(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
