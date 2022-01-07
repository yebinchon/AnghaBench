; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/msgdma/extr_msgdma.c_msgdma_channel_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/msgdma/extr_msgdma.c_msgdma_channel_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_channel = type { i32, i8* }
%struct.msgdma_channel = type { i32, i32, i32, i64, i64, i64, %struct.msgdma_softc*, %struct.xdma_channel* }
%struct.msgdma_softc = type { %struct.msgdma_channel* }

@MSGDMA_NCHANNELS = common dso_local global i32 0, align 4
@XCHAN_CAP_IOMMU = common dso_local global i32 0, align 4
@XCHAN_CAP_BUSDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xdma_channel*)* @msgdma_channel_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgdma_channel_alloc(i32 %0, %struct.xdma_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdma_channel*, align 8
  %6 = alloca %struct.msgdma_channel*, align 8
  %7 = alloca %struct.msgdma_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.xdma_channel* %1, %struct.xdma_channel** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.msgdma_softc* @device_get_softc(i32 %9)
  store %struct.msgdma_softc* %10, %struct.msgdma_softc** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %64, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @MSGDMA_NCHANNELS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %11
  %16 = load %struct.msgdma_softc*, %struct.msgdma_softc** %7, align 8
  %17 = getelementptr inbounds %struct.msgdma_softc, %struct.msgdma_softc* %16, i32 0, i32 0
  %18 = load %struct.msgdma_channel*, %struct.msgdma_channel** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %18, i64 %20
  store %struct.msgdma_channel* %21, %struct.msgdma_channel** %6, align 8
  %22 = load %struct.msgdma_channel*, %struct.msgdma_channel** %6, align 8
  %23 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %15
  %27 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %28 = load %struct.msgdma_channel*, %struct.msgdma_channel** %6, align 8
  %29 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %28, i32 0, i32 7
  store %struct.xdma_channel* %27, %struct.xdma_channel** %29, align 8
  %30 = load %struct.msgdma_channel*, %struct.msgdma_channel** %6, align 8
  %31 = bitcast %struct.msgdma_channel* %30 to i8*
  %32 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %33 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %35 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @XCHAN_CAP_IOMMU, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load i32, i32* @XCHAN_CAP_BUSDMA, align 4
  %42 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %43 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %26
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.msgdma_channel*, %struct.msgdma_channel** %6, align 8
  %49 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.msgdma_softc*, %struct.msgdma_softc** %7, align 8
  %51 = load %struct.msgdma_channel*, %struct.msgdma_channel** %6, align 8
  %52 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %51, i32 0, i32 6
  store %struct.msgdma_softc* %50, %struct.msgdma_softc** %52, align 8
  %53 = load %struct.msgdma_channel*, %struct.msgdma_channel** %6, align 8
  %54 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.msgdma_channel*, %struct.msgdma_channel** %6, align 8
  %56 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.msgdma_channel*, %struct.msgdma_channel** %6, align 8
  %58 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.msgdma_channel*, %struct.msgdma_channel** %6, align 8
  %60 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.msgdma_channel*, %struct.msgdma_channel** %6, align 8
  %62 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %61, i32 0, i32 2
  store i32 1024, i32* %62, align 8
  store i32 0, i32* %3, align 4
  br label %68

63:                                               ; preds = %15
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %11

67:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.msgdma_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
