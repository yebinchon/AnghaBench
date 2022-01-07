; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_int_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_int_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32, i32 }

@ALE_INTR_STATUS = common dso_local global i32 0, align 4
@INTR_RX_PKT = common dso_local global i32 0, align 4
@ALE_INTRS = common dso_local global i32 0, align 4
@INTR_DIS_INT = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@INTR_DMA_RD_TO_RST = common dso_local global i32 0, align 4
@INTR_DMA_WR_TO_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DMA read error! -- resetting\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DMA write error! -- resetting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ale_int_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_int_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ale_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ale_softc*
  store %struct.ale_softc* %10, %struct.ale_softc** %5, align 8
  %11 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %12 = load i32, i32* @ALE_INTR_STATUS, align 4
  %13 = call i32 @CSR_READ_4(%struct.ale_softc* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %15 = call i32 @ALE_LOCK(%struct.ale_softc* %14)
  %16 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @INTR_RX_PKT, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ALE_INTRS, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %147

30:                                               ; preds = %24
  %31 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %32 = load i32, i32* @ALE_INTR_STATUS, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @INTR_DIS_INT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @CSR_WRITE_4(%struct.ale_softc* %31, i32 %32, i32 %35)
  %37 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %38 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %37, i32 0, i32 6
  %39 = load %struct.ifnet*, %struct.ifnet** %38, align 8
  store %struct.ifnet* %39, %struct.ifnet** %6, align 8
  store i32 0, i32* %8, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %126

46:                                               ; preds = %30
  %47 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %48 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %49 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ale_rxeof(%struct.ale_softc* %47, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %57 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %79

58:                                               ; preds = %46
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EIO, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %64 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %75 = call i32 @ale_init_locked(%struct.ale_softc* %74)
  %76 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %77 = call i32 @ALE_UNLOCK(%struct.ale_softc* %76)
  br label %153

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @INTR_DMA_RD_TO_RST, align 4
  %82 = load i32, i32* @INTR_DMA_WR_TO_RST, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %117

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @INTR_DMA_RD_TO_RST, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %93 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @device_printf(i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @INTR_DMA_WR_TO_RST, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %103 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @device_printf(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %110 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %114 = call i32 @ale_init_locked(%struct.ale_softc* %113)
  %115 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %116 = call i32 @ALE_UNLOCK(%struct.ale_softc* %115)
  br label %153

117:                                              ; preds = %79
  %118 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %119 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %118, i32 0, i32 1
  %120 = call i32 @IFQ_DRV_IS_EMPTY(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %124 = call i32 @ale_start_locked(%struct.ifnet* %123)
  br label %125

125:                                              ; preds = %122, %117
  br label %126

126:                                              ; preds = %125, %30
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @EAGAIN, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %132 = load i32, i32* @ALE_INTR_STATUS, align 4
  %133 = call i32 @CSR_READ_4(%struct.ale_softc* %131, i32 %132)
  %134 = load i32, i32* @ALE_INTRS, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %130, %126
  %138 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %139 = call i32 @ALE_UNLOCK(%struct.ale_softc* %138)
  %140 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %141 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %144 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %143, i32 0, i32 1
  %145 = call i32 @taskqueue_enqueue(i32 %142, i32* %144)
  br label %153

146:                                              ; preds = %130
  br label %147

147:                                              ; preds = %146, %29
  %148 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %149 = call i32 @ALE_UNLOCK(%struct.ale_softc* %148)
  %150 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %151 = load i32, i32* @ALE_INTR_STATUS, align 4
  %152 = call i32 @CSR_WRITE_4(%struct.ale_softc* %150, i32 %151, i32 2147483647)
  br label %153

153:                                              ; preds = %147, %137, %106, %62
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.ale_softc*, i32) #1

declare dso_local i32 @ALE_LOCK(%struct.ale_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ale_softc*, i32, i32) #1

declare dso_local i32 @ale_rxeof(%struct.ale_softc*, i32) #1

declare dso_local i32 @ale_init_locked(%struct.ale_softc*) #1

declare dso_local i32 @ALE_UNLOCK(%struct.ale_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @ale_start_locked(%struct.ifnet*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
