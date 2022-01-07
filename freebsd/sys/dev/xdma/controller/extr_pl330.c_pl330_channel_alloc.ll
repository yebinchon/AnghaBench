; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/controller/extr_pl330.c_pl330_channel_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/controller/extr_pl330.c_pl330_channel_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_channel = type { i32, i8* }
%struct.pl330_channel = type { i32, i32, i8*, i32, %struct.pl330_softc*, %struct.xdma_channel* }
%struct.pl330_softc = type { %struct.pl330_channel* }

@PL330_NCHANNELS = common dso_local global i32 0, align 4
@XCHAN_CAP_BUSDMA = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xdma_channel*)* @pl330_channel_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl330_channel_alloc(i32 %0, %struct.xdma_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdma_channel*, align 8
  %6 = alloca %struct.pl330_channel*, align 8
  %7 = alloca %struct.pl330_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.xdma_channel* %1, %struct.xdma_channel** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.pl330_softc* @device_get_softc(i32 %9)
  store %struct.pl330_softc* %10, %struct.pl330_softc** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %63, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @PL330_NCHANNELS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %11
  %16 = load %struct.pl330_softc*, %struct.pl330_softc** %7, align 8
  %17 = getelementptr inbounds %struct.pl330_softc, %struct.pl330_softc* %16, i32 0, i32 0
  %18 = load %struct.pl330_channel*, %struct.pl330_channel** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pl330_channel, %struct.pl330_channel* %18, i64 %20
  store %struct.pl330_channel* %21, %struct.pl330_channel** %6, align 8
  %22 = load %struct.pl330_channel*, %struct.pl330_channel** %6, align 8
  %23 = getelementptr inbounds %struct.pl330_channel, %struct.pl330_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %15
  %27 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %28 = load %struct.pl330_channel*, %struct.pl330_channel** %6, align 8
  %29 = getelementptr inbounds %struct.pl330_channel, %struct.pl330_channel* %28, i32 0, i32 5
  store %struct.xdma_channel* %27, %struct.xdma_channel** %29, align 8
  %30 = load %struct.pl330_channel*, %struct.pl330_channel** %6, align 8
  %31 = bitcast %struct.pl330_channel* %30 to i8*
  %32 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %33 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @XCHAN_CAP_BUSDMA, align 4
  %35 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %36 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.pl330_channel*, %struct.pl330_channel** %6, align 8
  %41 = getelementptr inbounds %struct.pl330_channel, %struct.pl330_channel* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pl330_softc*, %struct.pl330_softc** %7, align 8
  %43 = load %struct.pl330_channel*, %struct.pl330_channel** %6, align 8
  %44 = getelementptr inbounds %struct.pl330_channel, %struct.pl330_channel* %43, i32 0, i32 4
  store %struct.pl330_softc* %42, %struct.pl330_softc** %44, align 8
  %45 = load %struct.pl330_channel*, %struct.pl330_channel** %6, align 8
  %46 = getelementptr inbounds %struct.pl330_channel, %struct.pl330_channel* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = mul nsw i32 %47, 8
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %52 = call i64 @kmem_alloc_contig(i32 %48, i32 %49, i32 0, i32 -1, i32 %50, i32 0, i32 %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.pl330_channel*, %struct.pl330_channel** %6, align 8
  %55 = getelementptr inbounds %struct.pl330_channel, %struct.pl330_channel* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.pl330_channel*, %struct.pl330_channel** %6, align 8
  %57 = getelementptr inbounds %struct.pl330_channel, %struct.pl330_channel* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @vtophys(i8* %58)
  %60 = load %struct.pl330_channel*, %struct.pl330_channel** %6, align 8
  %61 = getelementptr inbounds %struct.pl330_channel, %struct.pl330_channel* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %67

62:                                               ; preds = %15
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %11

66:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.pl330_softc* @device_get_softc(i32) #1

declare dso_local i64 @kmem_alloc_contig(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vtophys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
