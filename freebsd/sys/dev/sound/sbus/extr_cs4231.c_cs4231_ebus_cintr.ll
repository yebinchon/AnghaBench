; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_ebus_cintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_ebus_cintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { %struct.cs4231_channel, i32 }
%struct.cs4231_channel = type { i32, i32, i32, i32 }

@EBDMA_DCSR = common dso_local global i32 0, align 4
@EBDCSR_INT = common dso_local global i32 0, align 4
@EBDCSR_ERR = common dso_local global i32 0, align 4
@CS_TEST_AND_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"dma error interrupt : stat = 0x%x\0A\00", align 1
@EBDCSR_TC = common dso_local global i32 0, align 4
@EBDMA_DADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cs4231_ebus_cintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_ebus_cintr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cs4231_softc*, align 8
  %4 = alloca %struct.cs4231_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.cs4231_softc*
  store %struct.cs4231_softc* %11, %struct.cs4231_softc** %3, align 8
  %12 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %13 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %12)
  %14 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %15 = load i32, i32* @EBDMA_DCSR, align 4
  %16 = call i32 @EBDMA_C_READ(%struct.cs4231_softc* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EBDCSR_INT, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %23 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %22)
  br label %92

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EBDCSR_ERR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %31 = load i32, i32* @CS_TEST_AND_INIT, align 4
  %32 = call i32 @cs4231_read(%struct.cs4231_softc* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %34 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %29, %24
  %39 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %40 = load i32, i32* @EBDMA_DCSR, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @EBDCSR_TC, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %39, i32 %40, i32 %43)
  store %struct.cs4231_channel* null, %struct.cs4231_channel** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @EBDCSR_TC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %38
  %50 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %51 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %50, i32 0, i32 0
  store %struct.cs4231_channel* %51, %struct.cs4231_channel** %4, align 8
  %52 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %53 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %56 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sndbuf_getbufaddr(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %60 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %67 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sndbuf_getblksz(i32 %68)
  %70 = add nsw i32 %65, %69
  %71 = icmp sge i32 %64, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %49
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %49
  %75 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %76 = load i32, i32* @EBDMA_DADDR, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %81 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %38
  %83 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %84 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %83)
  %85 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %86 = icmp ne %struct.cs4231_channel* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %89 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @chn_intr(i32 %90)
  br label %92

92:                                               ; preds = %21, %87, %82
  ret void
}

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @EBDMA_C_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @cs4231_read(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @EBDMA_C_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @sndbuf_getblksz(i32) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
