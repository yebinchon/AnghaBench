; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_int_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_int_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@JME_INTR_STATUS = common dso_local global i32 0, align 4
@INTR_RXQ_COAL = common dso_local global i32 0, align 4
@INTR_RXQ_COAL_TO = common dso_local global i32 0, align 4
@JME_INTRS = common dso_local global i32 0, align 4
@INTR_TXQ_COMP = common dso_local global i32 0, align 4
@INTR_RXQ_COMP = common dso_local global i32 0, align 4
@INTR_TXQ_COAL = common dso_local global i32 0, align 4
@INTR_TXQ_COAL_TO = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@INTR_RXQ_DESC_EMPTY = common dso_local global i32 0, align 4
@JME_RXCSR = common dso_local global i32 0, align 4
@RXCSR_RX_ENB = common dso_local global i32 0, align 4
@RXCSR_RXQ_START = common dso_local global i32 0, align 4
@JME_INTR_MASK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @jme_int_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_int_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.jme_softc*
  store %struct.jme_softc* %10, %struct.jme_softc** %5, align 8
  %11 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %12 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %11, i32 0, i32 5
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  %14 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %15 = call i32 @JME_LOCK(%struct.jme_softc* %14)
  %16 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %17 = load i32, i32* @JME_INTR_STATUS, align 4
  %18 = call i32 @CSR_READ_4(%struct.jme_softc* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %20 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %25 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* @INTR_RXQ_COAL, align 4
  %27 = load i32, i32* @INTR_RXQ_COAL_TO, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %23, %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @JME_INTRS, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %31
  br label %151

40:                                               ; preds = %36
  %41 = load i32, i32* @INTR_TXQ_COMP, align 4
  %42 = load i32, i32* @INTR_RXQ_COMP, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @INTR_TXQ_COAL, align 4
  %49 = load i32, i32* @INTR_TXQ_COAL_TO, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %40
  %54 = load i32, i32* @INTR_TXQ_COAL, align 4
  %55 = load i32, i32* @INTR_TXQ_COAL_TO, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @INTR_TXQ_COMP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %53, %40
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @INTR_RXQ_COAL, align 4
  %64 = load i32, i32* @INTR_RXQ_COAL_TO, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load i32, i32* @INTR_RXQ_COAL, align 4
  %70 = load i32, i32* @INTR_RXQ_COAL_TO, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @INTR_RXQ_COMP, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %68, %61
  %77 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %78 = load i32, i32* @JME_INTR_STATUS, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @CSR_WRITE_4(%struct.jme_softc* %77, i32 %78, i32 %79)
  store i32 0, i32* %8, align 4
  %81 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %131

87:                                               ; preds = %76
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @INTR_RXQ_COAL, align 4
  %90 = load i32, i32* @INTR_RXQ_COAL_TO, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %87
  %95 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %96 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %97 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @jme_rxintr(%struct.jme_softc* %95, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %104 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %94
  br label %106

106:                                              ; preds = %105, %87
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @INTR_RXQ_DESC_EMPTY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %113 = load i32, i32* @JME_RXCSR, align 4
  %114 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %115 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @RXCSR_RX_ENB, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @RXCSR_RXQ_START, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @CSR_WRITE_4(%struct.jme_softc* %112, i32 %113, i32 %120)
  br label %122

122:                                              ; preds = %111, %106
  %123 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 1
  %125 = call i32 @IFQ_DRV_IS_EMPTY(i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %129 = call i32 @jme_start_locked(%struct.ifnet* %128)
  br label %130

130:                                              ; preds = %127, %122
  br label %131

131:                                              ; preds = %130, %76
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %136 = load i32, i32* @JME_INTR_STATUS, align 4
  %137 = call i32 @CSR_READ_4(%struct.jme_softc* %135, i32 %136)
  %138 = load i32, i32* @JME_INTRS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %134, %131
  %142 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %143 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %146 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %145, i32 0, i32 2
  %147 = call i32 @taskqueue_enqueue(i32 %144, i32* %146)
  %148 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %149 = call i32 @JME_UNLOCK(%struct.jme_softc* %148)
  br label %158

150:                                              ; preds = %134
  br label %151

151:                                              ; preds = %150, %39
  %152 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %153 = call i32 @JME_UNLOCK(%struct.jme_softc* %152)
  %154 = load %struct.jme_softc*, %struct.jme_softc** %5, align 8
  %155 = load i32, i32* @JME_INTR_MASK_SET, align 4
  %156 = load i32, i32* @JME_INTRS, align 4
  %157 = call i32 @CSR_WRITE_4(%struct.jme_softc* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %151, %141
  ret void
}

declare dso_local i32 @JME_LOCK(%struct.jme_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @jme_rxintr(%struct.jme_softc*, i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @jme_start_locked(%struct.ifnet*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @JME_UNLOCK(%struct.jme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
