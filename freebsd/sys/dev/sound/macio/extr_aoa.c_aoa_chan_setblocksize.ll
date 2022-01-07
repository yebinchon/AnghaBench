; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_aoa.c_aoa_chan_setblocksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_aoa.c_aoa_chan_setblocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoa_dma = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"aoa_chan_setblocksize: blocksz = %u, dma->blksz = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dma is running\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"bad blocksz\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"blocksz = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"sndbuf_resize returned %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"dbdma_resize_channel returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @aoa_chan_setblocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoa_chan_setblocksize(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aoa_dma*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.aoa_dma*
  store %struct.aoa_dma* %12, %struct.aoa_dma** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %15 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @DPRINTF(i8* %18)
  %20 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %21 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  %32 = call i32 asm sideeffect "cntlzw $0,$1", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %31) #2, !srcloc !2
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 31, %33
  %35 = shl i32 1, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @DPRINTF(i8* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %42 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %47 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %3
  %50 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %51 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %54 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sdiv i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @sndbuf_resize(i32 %52, i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @DPRINTF(i8* %65)
  store i32 0, i32* %4, align 4
  br label %104

67:                                               ; preds = %49
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %70 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %75 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %4, align 4
  br label %104

77:                                               ; preds = %67
  %78 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %79 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %82 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sdiv i32 %83, %84
  %86 = add nsw i32 2, %85
  %87 = call i32 @dbdma_resize_channel(i32 %80, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %77
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @DPRINTF(i8* %93)
  store i32 0, i32* %4, align 4
  br label %104

95:                                               ; preds = %77
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %98 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %100 = call i32 @aoa_dma_set_program(%struct.aoa_dma* %99)
  %101 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %102 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %95, %90, %73, %62
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sndbuf_resize(i32, i32, i32) #1

declare dso_local i32 @dbdma_resize_channel(i32, i32) #1

declare dso_local i32 @aoa_dma_set_program(%struct.aoa_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 781}
