; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_dma_map_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_dma_map_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.bxe_dma = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed DMA alloc '%s' (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32, i32)* @bxe_dma_map_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_dma_map_addr(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bxe_dma*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.bxe_dma*
  store %struct.bxe_dma* %11, %struct.bxe_dma** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = load %struct.bxe_dma*, %struct.bxe_dma** %9, align 8
  %16 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.bxe_dma*, %struct.bxe_dma** %9, align 8
  %18 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.bxe_dma*, %struct.bxe_dma** %9, align 8
  %20 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bxe_dma*, %struct.bxe_dma** %9, align 8
  %23 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @BLOGE(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %36

27:                                               ; preds = %4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bxe_dma*, %struct.bxe_dma** %9, align 8
  %32 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.bxe_dma*, %struct.bxe_dma** %9, align 8
  %35 = getelementptr inbounds %struct.bxe_dma, %struct.bxe_dma* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %27, %14
  ret void
}

declare dso_local i32 @BLOGE(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
