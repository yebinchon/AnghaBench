; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_hptmv_allocate_edma_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_hptmv_allocate_edma_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32*, %struct.TYPE_4__, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@REQUESTS_ARRAY_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"RR18xx[%d]: Failed to allocate memory for EDMA request queues\0A\00", align 1
@MV_EDMA_REQUEST_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"RR18xx[%d]: Error in Request Quueues Alignment\0A\00", align 1
@RESPONSES_ARRAY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"RR18xx[%d]: Failed to allocate memory for EDMA response queues\0A\00", align 1
@MV_EDMA_RESPONSE_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"RR18xx[%d]: Error in Response Queues Alignment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @hptmv_allocate_edma_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptmv_allocate_edma_queues(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load i32, i32* @REQUESTS_ARRAY_SIZE, align 4
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = call i64 @contigmalloc(i32 %4, i32 %5, i32 %6, i32 0, i32 -1, i32 %7, i64 0)
  %9 = inttoptr i64 %8 to i32*
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  store i32* %9, i32** %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @MV_ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %2, align 4
  br label %212

22:                                               ; preds = %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i8* @fOsPhysicalAddress(i32* %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 8
  store i32* %32, i32** %34, align 8
  %35 = load i32, i32* @MV_EDMA_REQUEST_QUEUE_SIZE, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %37, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 8
  %43 = load i32*, i32** %42, align 8
  %44 = ptrtoint i32* %43 to i32
  %45 = load i32, i32* @MV_EDMA_REQUEST_QUEUE_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = xor i32 %46, -1
  %48 = and i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 8
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @MV_EDMA_REQUEST_QUEUE_SIZE, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @MV_EDMA_REQUEST_QUEUE_SIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = xor i32 %64, -1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 8
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = ptrtoint i32* %80 to i64
  %85 = ptrtoint i32* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = icmp ne i64 %77, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %22
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @MV_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @REQUESTS_ARRAY_SIZE, align 4
  %99 = load i32, i32* @M_DEVBUF, align 4
  %100 = call i32 @contigfree(i32* %97, i32 %98, i32 %99)
  store i32 -1, i32* %2, align 4
  br label %212

101:                                              ; preds = %22
  %102 = load i32, i32* @RESPONSES_ARRAY_SIZE, align 4
  %103 = load i32, i32* @M_DEVBUF, align 4
  %104 = load i32, i32* @M_NOWAIT, align 4
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = call i64 @contigmalloc(i32 %102, i32 %103, i32 %104, i32 0, i32 -1, i32 %105, i64 0)
  %107 = inttoptr i64 %106 to i32*
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  store i32* %107, i32** %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %101
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @MV_ERROR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @RESPONSES_ARRAY_SIZE, align 4
  %124 = load i32, i32* @M_DEVBUF, align 4
  %125 = call i32 @contigfree(i32* %122, i32 %123, i32 %124)
  store i32 -1, i32* %2, align 4
  br label %212

126:                                              ; preds = %101
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = call i8* @fOsPhysicalAddress(i32* %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 7
  store i32* %136, i32** %138, align 8
  %139 = load i32, i32* @MV_EDMA_RESPONSE_QUEUE_SIZE, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 7
  %142 = load i32*, i32** %141, align 8
  %143 = sext i32 %139 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %141, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 7
  %147 = load i32*, i32** %146, align 8
  %148 = ptrtoint i32* %147 to i32
  %149 = load i32, i32* @MV_EDMA_RESPONSE_QUEUE_SIZE, align 4
  %150 = sub nsw i32 %149, 1
  %151 = xor i32 %150, -1
  %152 = and i32 %148, %151
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i32*
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 7
  store i32* %154, i32** %156, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @MV_EDMA_RESPONSE_QUEUE_SIZE, align 4
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* @MV_EDMA_RESPONSE_QUEUE_SIZE, align 4
  %168 = sub nsw i32 %167, 1
  %169 = xor i32 %168, -1
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %176, %179
  %181 = sext i32 %180 to i64
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 7
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = ptrtoint i32* %184 to i64
  %189 = ptrtoint i32* %187 to i64
  %190 = sub i64 %188, %189
  %191 = sdiv exact i64 %190, 4
  %192 = icmp ne i64 %181, %191
  br i1 %192, label %193, label %211

193:                                              ; preds = %126
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 6
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @MV_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %197)
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 5
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* @REQUESTS_ARRAY_SIZE, align 4
  %203 = load i32, i32* @M_DEVBUF, align 4
  %204 = call i32 @contigfree(i32* %201, i32 %202, i32 %203)
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* @RESPONSES_ARRAY_SIZE, align 4
  %209 = load i32, i32* @M_DEVBUF, align 4
  %210 = call i32 @contigfree(i32* %207, i32 %208, i32 %209)
  store i32 -1, i32* %2, align 4
  br label %212

211:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %211, %193, %114, %89, %16
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i64 @contigmalloc(i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @MV_ERROR(i8*, i32) #1

declare dso_local i8* @fOsPhysicalAddress(i32*) #1

declare dso_local i32 @contigfree(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
