; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_channel_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_channel_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_channel = type { i32, i8* }
%struct.softdma_channel = type { i32, i32, i32, %struct.softdma_softc*, i64, i64, i64, %struct.xdma_channel* }
%struct.softdma_softc = type { %struct.softdma_channel* }

@SOFTDMA_NCHANNELS = common dso_local global i32 0, align 4
@XCHAN_CAP_NOSEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xdma_channel*)* @softdma_channel_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softdma_channel_alloc(i32 %0, %struct.xdma_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdma_channel*, align 8
  %6 = alloca %struct.softdma_channel*, align 8
  %7 = alloca %struct.softdma_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.xdma_channel* %1, %struct.xdma_channel** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.softdma_softc* @device_get_softc(i32 %9)
  store %struct.softdma_softc* %10, %struct.softdma_softc** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %61, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SOFTDMA_NCHANNELS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %11
  %16 = load %struct.softdma_softc*, %struct.softdma_softc** %7, align 8
  %17 = getelementptr inbounds %struct.softdma_softc, %struct.softdma_softc* %16, i32 0, i32 0
  %18 = load %struct.softdma_channel*, %struct.softdma_channel** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %18, i64 %20
  store %struct.softdma_channel* %21, %struct.softdma_channel** %6, align 8
  %22 = load %struct.softdma_channel*, %struct.softdma_channel** %6, align 8
  %23 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %15
  %27 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %28 = load %struct.softdma_channel*, %struct.softdma_channel** %6, align 8
  %29 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %28, i32 0, i32 7
  store %struct.xdma_channel* %27, %struct.xdma_channel** %29, align 8
  %30 = load %struct.softdma_channel*, %struct.softdma_channel** %6, align 8
  %31 = bitcast %struct.softdma_channel* %30 to i8*
  %32 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %33 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @XCHAN_CAP_NOSEG, align 4
  %35 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %36 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.softdma_channel*, %struct.softdma_channel** %6, align 8
  %41 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.softdma_channel*, %struct.softdma_channel** %6, align 8
  %43 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load %struct.softdma_channel*, %struct.softdma_channel** %6, align 8
  %45 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load %struct.softdma_channel*, %struct.softdma_channel** %6, align 8
  %47 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.softdma_channel*, %struct.softdma_channel** %6, align 8
  %49 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %48, i32 0, i32 2
  store i32 1024, i32* %49, align 8
  %50 = load %struct.softdma_softc*, %struct.softdma_softc** %7, align 8
  %51 = load %struct.softdma_channel*, %struct.softdma_channel** %6, align 8
  %52 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %51, i32 0, i32 3
  store %struct.softdma_softc* %50, %struct.softdma_softc** %52, align 8
  %53 = load %struct.softdma_channel*, %struct.softdma_channel** %6, align 8
  %54 = call i64 @softdma_proc_create(%struct.softdma_channel* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %65

57:                                               ; preds = %26
  %58 = load %struct.softdma_channel*, %struct.softdma_channel** %6, align 8
  %59 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  store i32 0, i32* %3, align 4
  br label %65

60:                                               ; preds = %15
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %11

64:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %57, %56
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.softdma_softc* @device_get_softc(i32) #1

declare dso_local i64 @softdma_proc_create(%struct.softdma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
