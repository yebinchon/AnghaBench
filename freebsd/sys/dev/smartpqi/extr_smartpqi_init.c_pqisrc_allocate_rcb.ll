; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_allocate_rcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_allocate_rcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i8*, i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Max Outstanding IO reset to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to allocate memory for rcb\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"sg_dma_buf%d\00", align 1
@PQISRC_DEFAULT_DMA_ALIGN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to Allocate sg desc %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"failed OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @pqisrc_allocate_rcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqisrc_allocate_rcb(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca [15 x i8], align 1
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %12 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %13 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DBG_INIT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 16
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.TYPE_11__* @os_mem_alloc(%struct.TYPE_12__* %30, i32 %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %9, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %37, i32* %4, align 4
  br label %133

38:                                               ; preds = %1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 1
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %10, align 8
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %123, %38
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %126

57:                                               ; preds = %53
  %58 = getelementptr inbounds [15 x i8], [15 x i8]* %11, i64 0, i64 0
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds [15 x i8], [15 x i8]* %11, i64 0, i64 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i8* %61, i8** %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store i32 %69, i32* %76, align 8
  %77 = load i32, i32* @PQISRC_DEFAULT_DMA_ALIGN, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 4
  store i32 %77, i32* %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %90
  %92 = call i32 @os_dma_mem_alloc(%struct.TYPE_12__* %85, %struct.TYPE_13__* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %57
  %96 = load i32, i32* %4, align 4
  %97 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %98, i32* %4, align 4
  br label %129

99:                                               ; preds = %57
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i32*
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  store i32* %108, i32** %110, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 1
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %10, align 8
  br label %123

123:                                              ; preds = %99
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %53

126:                                              ; preds = %53
  %127 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %136

129:                                              ; preds = %95
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @pqisrc_free_rcb(%struct.TYPE_12__* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %35
  %134 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %133, %126
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @DBG_INIT(i8*, i32) #1

declare dso_local %struct.TYPE_11__* @os_mem_alloc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @os_dma_mem_alloc(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @pqisrc_free_rcb(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
