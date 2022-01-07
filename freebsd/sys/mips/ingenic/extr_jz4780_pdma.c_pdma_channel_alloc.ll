; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_pdma_channel_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_pdma_channel_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdma_channel = type { i32, i32, %struct.xdma_channel* }
%struct.xdma_channel = type { i8* }
%struct.pdma_softc = type { i32 }

@PDMA_NCHANNELS = common dso_local global i32 0, align 4
@pdma_channels = common dso_local global %struct.pdma_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xdma_channel*)* @pdma_channel_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdma_channel_alloc(i32 %0, %struct.xdma_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdma_channel*, align 8
  %6 = alloca %struct.pdma_channel*, align 8
  %7 = alloca %struct.pdma_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.xdma_channel* %1, %struct.xdma_channel** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.pdma_softc* @device_get_softc(i32 %9)
  store %struct.pdma_softc* %10, %struct.pdma_softc** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @PDMA_NCHANNELS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load %struct.pdma_channel*, %struct.pdma_channel** @pdma_channels, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %16, i64 %18
  store %struct.pdma_channel* %19, %struct.pdma_channel** %6, align 8
  %20 = load %struct.pdma_channel*, %struct.pdma_channel** %6, align 8
  %21 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %26 = load %struct.pdma_channel*, %struct.pdma_channel** %6, align 8
  %27 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %26, i32 0, i32 2
  store %struct.xdma_channel* %25, %struct.xdma_channel** %27, align 8
  %28 = load %struct.pdma_channel*, %struct.pdma_channel** %6, align 8
  %29 = bitcast %struct.pdma_channel* %28 to i8*
  %30 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %31 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.pdma_channel*, %struct.pdma_channel** %6, align 8
  %33 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.pdma_channel*, %struct.pdma_channel** %6, align 8
  %36 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.pdma_channel*, %struct.pdma_channel** %6, align 8
  %39 = call i32 @pdma_channel_setup_descriptors(i32 %37, %struct.pdma_channel* %38)
  store i32 0, i32* %3, align 4
  br label %45

40:                                               ; preds = %15
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %11

44:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.pdma_softc* @device_get_softc(i32) #1

declare dso_local i32 @pdma_channel_setup_descriptors(i32, %struct.pdma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
