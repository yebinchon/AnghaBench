; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_8__, %union.cdu_context* }
%struct.TYPE_8__ = type { i64 }
%union.cdu_context = type { i32 }

@CDU_ILT_PAGE_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cdu context\00", align 1
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ilt=%p start_line=%u lines=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"c%d page_size=%u start=%u end=%u num=%u flags=0x%x\0A\00", align 1
@ILT_MEMOP_ALLOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ecore_ilt_mem_op ILT_MEMOP_ALLOC failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_alloc_mem(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %8 = call i32 @BXE_L2_CID_COUNT(%struct.bxe_softc* %7)
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %80, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %83

16:                                               ; preds = %12
  %17 = load i32, i32* @CDU_ILT_PAGE_SZ, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call i64 @min(i32 %17, i32 %20)
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %21, i64* %28, align 8
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %29, i64 %37, %struct.TYPE_8__* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %16
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %49 = call i32 @bxe_free_mem(%struct.bxe_softc* %48)
  store i32 -1, i32* %2, align 4
  br label %174

50:                                               ; preds = %16
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %52 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %union.cdu_context*
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %62 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store %union.cdu_context* %60, %union.cdu_context** %67, align 8
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %69 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %50
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %12

83:                                               ; preds = %12
  %84 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %85 = call i32 @bxe_alloc_ilt_lines_mem(%struct.bxe_softc* %84)
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %87 = load i32, i32* @DBG_LOAD, align 4
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %89 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %92 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %97 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %86, i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %90, i32 %95, i32 %100)
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %160, %83
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %163

105:                                              ; preds = %102
  %106 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %107 = load i32, i32* @DBG_LOAD, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %110 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %120 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %130 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %140 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %150 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %106, i32 %107, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %118, i32 %128, i32 %138, i32 %148, i32 %158)
  br label %160

160:                                              ; preds = %105
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %102

163:                                              ; preds = %102
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %165 = load i32, i32* @ILT_MEMOP_ALLOC, align 4
  %166 = call i64 @ecore_ilt_mem_op(%struct.bxe_softc* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %170 = call i32 @BLOGE(%struct.bxe_softc* %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %171 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %172 = call i32 @bxe_free_mem(%struct.bxe_softc* %171)
  store i32 -1, i32* %2, align 4
  br label %174

173:                                              ; preds = %163
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %173, %168, %47
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @BXE_L2_CID_COUNT(%struct.bxe_softc*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i64 @bxe_dma_alloc(%struct.bxe_softc*, i64, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @bxe_free_mem(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_alloc_ilt_lines_mem(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i64 @ecore_ilt_mem_op(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
