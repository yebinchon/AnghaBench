; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_int_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_int_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@ALC_INTR_STATUS = common dso_local global i32 0, align 4
@INTR_RX_PKT = common dso_local global i32 0, align 4
@ALC_INTRS = common dso_local global i32 0, align 4
@INTR_DIS_INT = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@INTR_DMA_RD_TO_RST = common dso_local global i32 0, align 4
@INTR_DMA_WR_TO_RST = common dso_local global i32 0, align 4
@INTR_TXQ_TO_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DMA read error! -- resetting\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DMA write error! -- resetting\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"TxQ reset! -- resetting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @alc_int_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_int_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alc_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.alc_softc*
  store %struct.alc_softc* %10, %struct.alc_softc** %5, align 8
  %11 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %12 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %11, i32 0, i32 5
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  %14 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %15 = load i32, i32* @ALC_INTR_STATUS, align 4
  %16 = call i32 @CSR_READ_4(%struct.alc_softc* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %18 = call i32 @ALC_LOCK(%struct.alc_softc* %17)
  %19 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %20 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %25 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* @INTR_RX_PKT, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %23, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ALC_INTRS, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %169

35:                                               ; preds = %29
  %36 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %37 = load i32, i32* @ALC_INTR_STATUS, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @INTR_DIS_INT, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @CSR_WRITE_4(%struct.alc_softc* %36, i32 %37, i32 %40)
  store i32 0, i32* %8, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %148

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @INTR_RX_PKT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %48
  %54 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %55 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %56 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @alc_rxintr(%struct.alc_softc* %54, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %64 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %81

65:                                               ; preds = %53
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @EIO, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %77 = call i32 @alc_init_locked(%struct.alc_softc* %76)
  %78 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %79 = call i32 @ALC_UNLOCK(%struct.alc_softc* %78)
  br label %183

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %62
  br label %82

82:                                               ; preds = %81, %48
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @INTR_DMA_RD_TO_RST, align 4
  %85 = load i32, i32* @INTR_DMA_WR_TO_RST, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @INTR_TXQ_TO_RST, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %83, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %132

91:                                               ; preds = %82
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @INTR_DMA_RD_TO_RST, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %98 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @INTR_DMA_WR_TO_RST, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %108 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %106, %101
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @INTR_TXQ_TO_RST, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %118 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %116, %111
  %122 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %125 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %129 = call i32 @alc_init_locked(%struct.alc_softc* %128)
  %130 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %131 = call i32 @ALC_UNLOCK(%struct.alc_softc* %130)
  br label %183

132:                                              ; preds = %82
  %133 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %134 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %141 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %140, i32 0, i32 1
  %142 = call i32 @IFQ_DRV_IS_EMPTY(i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %146 = call i32 @alc_start_locked(%struct.ifnet* %145)
  br label %147

147:                                              ; preds = %144, %139, %132
  br label %148

148:                                              ; preds = %147, %35
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %159, label %152

152:                                              ; preds = %148
  %153 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %154 = load i32, i32* @ALC_INTR_STATUS, align 4
  %155 = call i32 @CSR_READ_4(%struct.alc_softc* %153, i32 %154)
  %156 = load i32, i32* @ALC_INTRS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %152, %148
  %160 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %161 = call i32 @ALC_UNLOCK(%struct.alc_softc* %160)
  %162 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %163 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %166 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %165, i32 0, i32 1
  %167 = call i32 @taskqueue_enqueue(i32 %164, i32* %166)
  br label %183

168:                                              ; preds = %152
  br label %169

169:                                              ; preds = %168, %34
  %170 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %178 = load i32, i32* @ALC_INTR_STATUS, align 4
  %179 = call i32 @CSR_WRITE_4(%struct.alc_softc* %177, i32 %178, i32 2147483647)
  br label %180

180:                                              ; preds = %176, %169
  %181 = load %struct.alc_softc*, %struct.alc_softc** %5, align 8
  %182 = call i32 @ALC_UNLOCK(%struct.alc_softc* %181)
  br label %183

183:                                              ; preds = %180, %159, %121, %69
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @ALC_LOCK(%struct.alc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @alc_rxintr(%struct.alc_softc*, i32) #1

declare dso_local i32 @alc_init_locked(%struct.alc_softc*) #1

declare dso_local i32 @ALC_UNLOCK(%struct.alc_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @alc_start_locked(%struct.ifnet*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
