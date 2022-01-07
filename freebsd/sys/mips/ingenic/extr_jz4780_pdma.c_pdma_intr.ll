; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_pdma_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_pdma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdma_channel = type { i32, i32, i32*, i32, %struct.xdma_request* }
%struct.xdma_request = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pdma_softc = type { i32 }

@PDMA_DIRQP = common dso_local global i32 0, align 4
@PDMA_NCHANNELS = common dso_local global i32 0, align 4
@pdma_channels = common dso_local global %struct.pdma_channel* null, align 8
@CHAN_DESCR_RELINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pdma_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdma_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xdma_request*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.pdma_channel*, align 8
  %6 = alloca %struct.pdma_softc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.pdma_softc*
  store %struct.pdma_softc* %11, %struct.pdma_softc** %6, align 8
  %12 = load %struct.pdma_softc*, %struct.pdma_softc** %6, align 8
  %13 = load i32, i32* @PDMA_DIRQP, align 4
  %14 = call i32 @READ4(%struct.pdma_softc* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.pdma_softc*, %struct.pdma_softc** %6, align 8
  %16 = load i32, i32* @PDMA_DIRQP, align 4
  %17 = call i32 @WRITE4(%struct.pdma_softc* %15, i32 %16, i32 0)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %72, %1
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PDMA_NCHANNELS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %22
  %29 = load %struct.pdma_channel*, %struct.pdma_channel** @pdma_channels, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %29, i64 %31
  store %struct.pdma_channel* %32, %struct.pdma_channel** %5, align 8
  %33 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %34 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %7, align 8
  %36 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %37 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %36, i32 0, i32 4
  %38 = load %struct.xdma_request*, %struct.xdma_request** %37, align 8
  store %struct.xdma_request* %38, %struct.xdma_request** %3, align 8
  %39 = load %struct.pdma_softc*, %struct.pdma_softc** %6, align 8
  %40 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %41 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PDMA_DCS(i32 %42)
  %44 = call i32 @WRITE4(%struct.pdma_softc* %39, i32 %43, i32 0)
  %45 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %46 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CHAN_DESCR_RELINK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %28
  %52 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %53 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.xdma_request*, %struct.xdma_request** %3, align 8
  %57 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = srem i32 %55, %58
  %60 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %61 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.pdma_softc*, %struct.pdma_softc** %6, align 8
  %63 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %64 = call i32 @chan_start(%struct.pdma_softc* %62, %struct.pdma_channel* %63)
  br label %65

65:                                               ; preds = %51, %28
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %68 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @xdma_callback(i32* %69, %struct.TYPE_3__* %4)
  br label %71

71:                                               ; preds = %65, %22
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %18

75:                                               ; preds = %18
  ret void
}

declare dso_local i32 @READ4(%struct.pdma_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.pdma_softc*, i32, i32) #1

declare dso_local i32 @PDMA_DCS(i32) #1

declare dso_local i32 @chan_start(%struct.pdma_softc*, %struct.pdma_channel*) #1

declare dso_local i32 @xdma_callback(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
