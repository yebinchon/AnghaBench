; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_dump_sglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_dump_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scb = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ahd_dma64_seg = type { i32, i32 }
%struct.ahd_dma_seg = type { i32, i32 }

@AHD_64BIT_ADDRESSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sg[%d] - Addr 0x%x%x : Length %d%s\0A\00", align 1
@AHD_SG_LEN_MASK = common dso_local global i32 0, align 4
@AHD_DMA_LAST_SEG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" Last\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AHD_SG_HIGH_ADDR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_dump_sglist(%struct.scb* %0) #0 {
  %2 = alloca %struct.scb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahd_dma64_seg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ahd_dma_seg*, align 8
  %7 = alloca i32, align 4
  store %struct.scb* %0, %struct.scb** %2, align 8
  %8 = load %struct.scb*, %struct.scb** %2, align 8
  %9 = getelementptr inbounds %struct.scb, %struct.scb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %114

12:                                               ; preds = %1
  %13 = load %struct.scb*, %struct.scb** %2, align 8
  %14 = getelementptr inbounds %struct.scb, %struct.scb* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AHD_64BIT_ADDRESSING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %12
  %22 = load %struct.scb*, %struct.scb** %2, align 8
  %23 = getelementptr inbounds %struct.scb, %struct.scb* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ahd_dma64_seg*
  store %struct.ahd_dma64_seg* %25, %struct.ahd_dma64_seg** %4, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %64, %21
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.scb*, %struct.scb** %2, align 8
  %29 = getelementptr inbounds %struct.scb, %struct.scb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %4, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %33, i64 %35
  %37 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @aic_le64toh(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 32
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %4, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %44, i64 %46
  %48 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %4, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %52, i64 %54
  %56 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AHD_DMA_LAST_SEG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42, i32 %43, i32 %51, i8* %62)
  br label %64

64:                                               ; preds = %32
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %26

67:                                               ; preds = %26
  br label %113

68:                                               ; preds = %12
  %69 = load %struct.scb*, %struct.scb** %2, align 8
  %70 = getelementptr inbounds %struct.scb, %struct.scb* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.ahd_dma_seg*
  store %struct.ahd_dma_seg* %72, %struct.ahd_dma_seg** %6, align 8
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %109, %68
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.scb*, %struct.scb** %2, align 8
  %76 = getelementptr inbounds %struct.scb, %struct.scb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %112

79:                                               ; preds = %73
  %80 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %6, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %80, i64 %82
  %84 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @aic_le32toh(i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @AHD_SG_HIGH_ADDR_MASK, align 4
  %90 = and i32 %88, %89
  %91 = ashr i32 %90, 24
  %92 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %6, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %92, i64 %94
  %96 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @aic_le32toh(i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @AHD_DMA_LAST_SEG, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %108 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %91, i32 %98, i32 %101, i8* %107)
  br label %109

109:                                              ; preds = %79
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %73

112:                                              ; preds = %73
  br label %113

113:                                              ; preds = %112, %67
  br label %114

114:                                              ; preds = %113, %1
  ret void
}

declare dso_local i32 @aic_le64toh(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @aic_le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
