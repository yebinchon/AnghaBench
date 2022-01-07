; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_plpar_iommu.c_phyp_iommu_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_plpar_iommu.c_phyp_iommu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.dma_window = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@M_BESTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"VMEM failure: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Alloc not page aligned\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Allocated segment does not match alignment constraint\00", align 1
@H_PUT_TCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"IOMMU mapping error: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Address needs to be positive\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Address not in range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phyp_iommu_map(i32 %0, %struct.TYPE_5__* %1, i32* %2, i64 %3, i64 %4, i64 %5, i64 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.dma_window*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  %27 = load i8*, i8** %17, align 8
  %28 = bitcast i8* %27 to %struct.dma_window*
  store %struct.dma_window* %28, %struct.dma_window** %18, align 8
  %29 = load %struct.dma_window*, %struct.dma_window** %18, align 8
  %30 = getelementptr inbounds %struct.dma_window, %struct.dma_window* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %19, align 8
  %32 = load %struct.dma_window*, %struct.dma_window** %18, align 8
  %33 = getelementptr inbounds %struct.dma_window, %struct.dma_window* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %20, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %20, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %8
  %39 = load i64, i64* %13, align 8
  store i64 %39, i64* %20, align 8
  br label %40

40:                                               ; preds = %38, %8
  store i32 0, i32* %24, align 4
  br label %41

41:                                               ; preds = %204, %40
  %42 = load i32, i32* %24, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %207

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = load i32, i32* %24, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = load i32, i32* %24, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PAGE_MASK, align 8
  %60 = and i64 %58, %59
  %61 = add nsw i64 %52, %60
  %62 = call i64 @round_page(i64 %61)
  store i64 %62, i64* %22, align 8
  %63 = load %struct.dma_window*, %struct.dma_window** %18, align 8
  %64 = getelementptr inbounds %struct.dma_window, %struct.dma_window* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %22, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* @PAGE_SIZE, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %46
  %73 = load i64, i64* @PAGE_SIZE, align 8
  br label %76

74:                                               ; preds = %46
  %75 = load i64, i64* %15, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* %20, align 8
  %81 = load i32, i32* @M_BESTFIT, align 4
  %82 = load i32, i32* @M_NOWAIT, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @vmem_xalloc(i32 %67, i64 %68, i64 %77, i32 0, i64 %78, i64 %79, i64 %80, i32 %83, i64* %21)
  store i32 %84, i32* %23, align 4
  %85 = load i32, i32* %23, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load i32, i32* %23, align 4
  %89 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %23, align 4
  store i32 %90, i32* %9, align 4
  br label %208

91:                                               ; preds = %76
  %92 = load i64, i64* %21, align 8
  %93 = load i64, i64* @PAGE_SIZE, align 8
  %94 = srem i64 %92, %93
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @KASSERT(i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i64, i64* %21, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %100 = load i32, i32* %24, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PAGE_MASK, align 8
  %106 = and i64 %104, %105
  %107 = add nsw i64 %98, %106
  %108 = load i64, i64* %15, align 8
  %109 = srem i64 %107, %108
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @KASSERT(i32 %111, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %114 = load i32, i32* %24, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @trunc_page(i64 %118)
  store i32 %119, i32* %26, align 4
  %120 = load i32, i32* %26, align 4
  %121 = or i32 %120, 3
  store i32 %121, i32* %26, align 4
  store i32 0, i32* %25, align 4
  br label %122

122:                                              ; preds = %149, %91
  %123 = load i32, i32* %25, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %22, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %122
  %128 = load i32, i32* @H_PUT_TCE, align 4
  %129 = load %struct.dma_window*, %struct.dma_window** %18, align 8
  %130 = getelementptr inbounds %struct.dma_window, %struct.dma_window* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* %21, align 8
  %135 = load i32, i32* %25, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %134, %136
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %25, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i32 @phyp_hcall(i32 %128, i32 %133, i64 %137, i32 %140)
  store i32 %141, i32* %23, align 4
  %142 = load i32, i32* %23, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %127
  %145 = load i32, i32* %23, align 4
  %146 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @ENOMEM, align 4
  store i32 %147, i32* %9, align 4
  br label %208

148:                                              ; preds = %127
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* @PAGE_SIZE, align 8
  %151 = load i32, i32* %25, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %25, align 4
  br label %122

155:                                              ; preds = %122
  %156 = load i64, i64* %21, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %158 = load i32, i32* %24, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @PAGE_MASK, align 8
  %164 = and i64 %162, %163
  %165 = add nsw i64 %156, %164
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %167 = load i32, i32* %24, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  store i64 %165, i64* %170, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %172 = load i32, i32* %24, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = call i32 @KASSERT(i32 %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %181 = load i32, i32* %24, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %187 = load i32, i32* %24, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %185, %191
  %193 = load i64, i64* %20, align 8
  %194 = icmp slt i64 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @KASSERT(i32 %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %197 = load i32, i32* %23, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %155
  %200 = load i32, i32* %23, align 4
  %201 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @ENOMEM, align 4
  store i32 %202, i32* %9, align 4
  br label %208

203:                                              ; preds = %155
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %24, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %24, align 4
  br label %41

207:                                              ; preds = %41
  store i32 0, i32* %9, align 4
  br label %208

208:                                              ; preds = %207, %199, %144, %87
  %209 = load i32, i32* %9, align 4
  ret i32 %209
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @vmem_xalloc(i32, i64, i64, i32, i64, i64, i64, i32, i64*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @trunc_page(i64) #1

declare dso_local i32 @phyp_hcall(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
