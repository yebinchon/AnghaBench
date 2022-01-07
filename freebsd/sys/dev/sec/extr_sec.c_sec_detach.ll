; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@SEC_TIMEOUT = common dso_local global i32 0, align 4
@descriptors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"queue flush timeout!\0A\00", align 1
@SEC_CHANNELS = common dso_local global i32 0, align 4
@SEC_IER = common dso_local global i32 0, align 4
@SEC_DESCRIPTORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"bus_release_resource() failed for I/O memory, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sec_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sec_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.sec_softc* @device_get_softc(i32 %7)
  store %struct.sec_softc* %8, %struct.sec_softc** %3, align 8
  %9 = load i32, i32* @SEC_TIMEOUT, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %11 = load i32, i32* @descriptors, align 4
  %12 = call i32 @SEC_LOCK(%struct.sec_softc* %10, i32 %11)
  %13 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %14 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %16 = load i32, i32* @descriptors, align 4
  %17 = call i32 @SEC_UNLOCK(%struct.sec_softc* %15, i32 %16)
  br label %18

18:                                               ; preds = %1, %51
  %19 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %20 = load i32, i32* @descriptors, align 4
  %21 = call i32 @SEC_LOCK(%struct.sec_softc* %19, i32 %20)
  %22 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %23 = call i32 @SEC_READY_DESC_CNT(%struct.sec_softc* %22)
  %24 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %25 = call i32 @SEC_QUEUED_DESC_CNT(%struct.sec_softc* %24)
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %28 = load i32, i32* @descriptors, align 4
  %29 = call i32 @SEC_UNLOCK(%struct.sec_softc* %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %55

33:                                               ; preds = %18
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %47, %36
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SEC_CHANNELS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @sec_channel_reset(%struct.sec_softc* %44, i32 %45, i32 1)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %39

50:                                               ; preds = %39
  br label %55

51:                                               ; preds = %33
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 1000
  store i32 %53, i32* %6, align 4
  %54 = call i32 @DELAY(i32 1000)
  br label %18

55:                                               ; preds = %50, %32
  %56 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %57 = load i32, i32* @SEC_IER, align 4
  %58 = call i32 @SEC_WRITE(%struct.sec_softc* %56, i32 %57, i32 0)
  %59 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %60 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @crypto_unregister_all(i32 %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %75, %55
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SEC_DESCRIPTORS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %69 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %68, i32 0, i32 13
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @SEC_DESC_FREE_POINTERS(i32* %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %63

78:                                               ; preds = %63
  %79 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %80 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %79, i32 0, i32 12
  %81 = call i32 @sec_free_dma_mem(i32* %80)
  %82 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %83 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %82, i32 0, i32 11
  %84 = call i32 @sec_free_dma_mem(i32* %83)
  %85 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %86 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %87 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %90 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %93 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @sec_release_intr(%struct.sec_softc* %85, i32 %88, i32 %91, i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %97 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %98 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %101 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %104 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @sec_release_intr(%struct.sec_softc* %96, i32 %99, i32 %102, i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %107 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %108 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %130

111:                                              ; preds = %78
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @SYS_RES_MEMORY, align 4
  %114 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %115 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %118 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @bus_release_resource(i32 %112, i32 %113, i32 %116, i32* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %111
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 (i32, i8*, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %123, %111
  %128 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %129 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %128, i32 0, i32 3
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %127, %78
  %131 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %132 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %131, i32 0, i32 2
  %133 = call i32 @mtx_destroy(i32* %132)
  %134 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %135 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %134, i32 0, i32 1
  %136 = call i32 @mtx_destroy(i32* %135)
  ret i32 0
}

declare dso_local %struct.sec_softc* @device_get_softc(i32) #1

declare dso_local i32 @SEC_LOCK(%struct.sec_softc*, i32) #1

declare dso_local i32 @SEC_UNLOCK(%struct.sec_softc*, i32) #1

declare dso_local i32 @SEC_READY_DESC_CNT(%struct.sec_softc*) #1

declare dso_local i32 @SEC_QUEUED_DESC_CNT(%struct.sec_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @sec_channel_reset(%struct.sec_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @SEC_WRITE(%struct.sec_softc*, i32, i32) #1

declare dso_local i32 @crypto_unregister_all(i32) #1

declare dso_local i32 @SEC_DESC_FREE_POINTERS(i32*) #1

declare dso_local i32 @sec_free_dma_mem(i32*) #1

declare dso_local i32 @sec_release_intr(%struct.sec_softc*, i32, i32, i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
