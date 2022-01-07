; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32, i32 }

@VGE_FLAG_SUSPENDED = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@VGE_CRC3 = common dso_local global i32 0, align 4
@VGE_CR3_INT_GMSK = common dso_local global i32 0, align 4
@VGE_ISR = common dso_local global i32 0, align 4
@VGE_ISR_HOLDOFF_RELOAD = common dso_local global i32 0, align 4
@VGE_INTRS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@VGE_ISR_RXOK = common dso_local global i32 0, align 4
@VGE_ISR_RXOK_HIPRIO = common dso_local global i32 0, align 4
@VGE_RX_DESC_CNT = common dso_local global i32 0, align 4
@VGE_ISR_RXOFLOW = common dso_local global i32 0, align 4
@VGE_ISR_RXNODESC = common dso_local global i32 0, align 4
@VGE_RXQCSRS = common dso_local global i32 0, align 4
@VGE_RXQCSR_RUN = common dso_local global i32 0, align 4
@VGE_RXQCSR_WAK = common dso_local global i32 0, align 4
@VGE_ISR_TXOK0 = common dso_local global i32 0, align 4
@VGE_ISR_TXOK_HIPRIO = common dso_local global i32 0, align 4
@VGE_ISR_TXDMA_STALL = common dso_local global i32 0, align 4
@VGE_ISR_RXDMA_STALL = common dso_local global i32 0, align 4
@VGE_ISR_LINKSTS = common dso_local global i32 0, align 4
@VGE_CRS3 = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vge_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vge_softc*
  store %struct.vge_softc* %7, %struct.vge_softc** %3, align 8
  %8 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %9 = call i32 @VGE_LOCK(%struct.vge_softc* %8)
  %10 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %10, i32 0, i32 1
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %14 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VGE_FLAG_SUSPENDED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %1
  %27 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %28 = call i32 @VGE_UNLOCK(%struct.vge_softc* %27)
  br label %147

29:                                               ; preds = %19
  %30 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %31 = load i32, i32* @VGE_CRC3, align 4
  %32 = load i32, i32* @VGE_CR3_INT_GMSK, align 4
  %33 = call i32 @CSR_WRITE_1(%struct.vge_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %35 = load i32, i32* @VGE_ISR, align 4
  %36 = call i32 @CSR_READ_4(%struct.vge_softc* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %38 = load i32, i32* @VGE_ISR, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @VGE_ISR_HOLDOFF_RELOAD, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @CSR_WRITE_4(%struct.vge_softc* %37, i32 %38, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %50, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @VGE_INTRS, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %29
  br label %124

51:                                               ; preds = %45
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %123

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @VGE_ISR_RXOK, align 4
  %61 = load i32, i32* @VGE_ISR_RXOK_HIPRIO, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %67 = load i32, i32* @VGE_RX_DESC_CNT, align 4
  %68 = call i32 @vge_rxeof(%struct.vge_softc* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %58
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @VGE_ISR_RXOFLOW, align 4
  %72 = load i32, i32* @VGE_ISR_RXNODESC, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %78 = load i32, i32* @VGE_RX_DESC_CNT, align 4
  %79 = call i32 @vge_rxeof(%struct.vge_softc* %77, i32 %78)
  %80 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %81 = load i32, i32* @VGE_RXQCSRS, align 4
  %82 = load i32, i32* @VGE_RXQCSR_RUN, align 4
  %83 = call i32 @CSR_WRITE_1(%struct.vge_softc* %80, i32 %81, i32 %82)
  %84 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %85 = load i32, i32* @VGE_RXQCSRS, align 4
  %86 = load i32, i32* @VGE_RXQCSR_WAK, align 4
  %87 = call i32 @CSR_WRITE_1(%struct.vge_softc* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %76, %69
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @VGE_ISR_TXOK0, align 4
  %91 = load i32, i32* @VGE_ISR_TXOK_HIPRIO, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %97 = call i32 @vge_txeof(%struct.vge_softc* %96)
  br label %98

98:                                               ; preds = %95, %88
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @VGE_ISR_TXDMA_STALL, align 4
  %101 = load i32, i32* @VGE_ISR_RXDMA_STALL, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %109 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %113 = call i32 @vge_init_locked(%struct.vge_softc* %112)
  br label %114

114:                                              ; preds = %105, %98
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @VGE_ISR_LINKSTS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %121 = call i32 @vge_link_statchg(%struct.vge_softc* %120)
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %122, %51
  br label %124

124:                                              ; preds = %123, %50
  %125 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %126 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %124
  %132 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %133 = load i32, i32* @VGE_CRS3, align 4
  %134 = load i32, i32* @VGE_CR3_INT_GMSK, align 4
  %135 = call i32 @CSR_WRITE_1(%struct.vge_softc* %132, i32 %133, i32 %134)
  %136 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %137 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %136, i32 0, i32 3
  %138 = call i32 @IFQ_DRV_IS_EMPTY(i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %131
  %141 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %142 = call i32 @vge_start_locked(%struct.ifnet* %141)
  br label %143

143:                                              ; preds = %140, %131
  br label %144

144:                                              ; preds = %143, %124
  %145 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %146 = call i32 @VGE_UNLOCK(%struct.vge_softc* %145)
  br label %147

147:                                              ; preds = %144, %26
  ret void
}

declare dso_local i32 @VGE_LOCK(%struct.vge_softc*) #1

declare dso_local i32 @VGE_UNLOCK(%struct.vge_softc*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.vge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @vge_rxeof(%struct.vge_softc*, i32) #1

declare dso_local i32 @vge_txeof(%struct.vge_softc*) #1

declare dso_local i32 @vge_init_locked(%struct.vge_softc*) #1

declare dso_local i32 @vge_link_statchg(%struct.vge_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @vge_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
