; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_chan_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_chan_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32 }
%struct.cs4231_channel = type { i64, i32, %struct.cs4231_softc* }

@CS4231_SBUS = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@APC_PVA = common dso_local global i32 0, align 4
@APC_CVA = common dso_local global i32 0, align 4
@EBDMA_DADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @cs4231_chan_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cs4231_chan_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cs4231_softc*, align 8
  %6 = alloca %struct.cs4231_channel*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.cs4231_channel*
  store %struct.cs4231_channel* %11, %struct.cs4231_channel** %6, align 8
  %12 = load %struct.cs4231_channel*, %struct.cs4231_channel** %6, align 8
  %13 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %12, i32 0, i32 2
  %14 = load %struct.cs4231_softc*, %struct.cs4231_softc** %13, align 8
  store %struct.cs4231_softc* %14, %struct.cs4231_softc** %5, align 8
  %15 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %16 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %15)
  %17 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %18 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CS4231_SBUS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.cs4231_channel*, %struct.cs4231_channel** %6, align 8
  %25 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCMDIR_PLAY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %31 = load i32, i32* @APC_PVA, align 4
  %32 = call i64 @APC_READ(%struct.cs4231_softc* %30, i32 %31)
  br label %37

33:                                               ; preds = %23
  %34 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %35 = load i32, i32* @APC_CVA, align 4
  %36 = call i64 @APC_READ(%struct.cs4231_softc* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  store i64 %38, i64* %7, align 8
  br label %55

39:                                               ; preds = %2
  %40 = load %struct.cs4231_channel*, %struct.cs4231_channel** %6, align 8
  %41 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCMDIR_PLAY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %47 = load i32, i32* @EBDMA_DADDR, align 4
  %48 = call i64 @EBDMA_P_READ(%struct.cs4231_softc* %46, i32 %47)
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %51 = load i32, i32* @EBDMA_DADDR, align 4
  %52 = call i64 @EBDMA_C_READ(%struct.cs4231_softc* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i64 [ %48, %45 ], [ %52, %49 ]
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %53, %37
  %56 = load %struct.cs4231_channel*, %struct.cs4231_channel** %6, align 8
  %57 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @sndbuf_getsize(i32 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.cs4231_channel*, %struct.cs4231_channel** %6, align 8
  %62 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @sndbuf_getbufaddr(i32 %63)
  %65 = sub nsw i64 %60, %64
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %65, %66
  store i64 %67, i64* %8, align 8
  %68 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  %69 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %68)
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = srem i64 %71, %70
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  ret i64 %73
}

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i64 @APC_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i64 @EBDMA_P_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i64 @EBDMA_C_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i64 @sndbuf_getsize(i32) #1

declare dso_local i64 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
