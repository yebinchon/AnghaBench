; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_intr_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_intr_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.fwohci_dbch*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fwohci_dbch = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.firewire_comm = type { i32, i32 }

@OHCI_INT_DMA_IR = common dso_local global i32 0, align 4
@FWXFERQ_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dma(%d) not active\0A\00", align 1
@OHCI_INT_DMA_IT = common dso_local global i32 0, align 4
@OHCI_INT_DMA_PRRS = common dso_local global i32 0, align 4
@OHCI_INT_DMA_PRRQ = common dso_local global i32 0, align 4
@OHCI_INT_CYC_LOST = common dso_local global i32 0, align 4
@FWOHCI_INTMASKCLR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"too many cycles lost, no cycle master present?\0A\00", align 1
@OHCI_INT_DMA_ATRQ = common dso_local global i32 0, align 4
@OHCI_INT_DMA_ATRS = common dso_local global i32 0, align 4
@OHCI_INT_PW_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"posted write error\0A\00", align 1
@OHCI_INT_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"unrecoverable error\0A\00", align 1
@OHCI_INT_PHY_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"phy int\0A\00", align 1
@ARRQ_CH = common dso_local global i32 0, align 4
@ARRS_CH = common dso_local global i32 0, align 4
@OHCI_CNTL_CYCTIMER = common dso_local global i32 0, align 4
@OHCI_LNKCTLCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwohci_softc*, i32, i32)* @fwohci_intr_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwohci_intr_dma(%struct.fwohci_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fwohci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.firewire_comm*, align 8
  %11 = alloca %struct.fwohci_dbch*, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %13 = bitcast %struct.fwohci_softc* %12 to %struct.firewire_comm*
  store %struct.firewire_comm* %13, %struct.firewire_comm** %10, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @OHCI_INT_DMA_IR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %3
  %19 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %20 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %19, i32 0, i32 8
  %21 = call i32 @atomic_readandclear_int(i32* %20)
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %60, %18
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %25 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %36 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %35, i32 0, i32 7
  %37 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %37, i64 %39
  store %struct.fwohci_dbch* %40, %struct.fwohci_dbch** %11, align 8
  %41 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %11, align 8
  %42 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FWXFERQ_OPEN, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %34
  %49 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %50 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %60

55:                                               ; preds = %34
  %56 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @fwohci_rbuf_update(%struct.fwohci_softc* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %28
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %22

63:                                               ; preds = %22
  br label %64

64:                                               ; preds = %63, %3
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @OHCI_INT_DMA_IT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %64
  %70 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %71 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %70, i32 0, i32 5
  %72 = call i32 @atomic_readandclear_int(i32* %71)
  store i32 %72, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %90, %69
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %76 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @fwohci_tbuf_update(%struct.fwohci_softc* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %79
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %73

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93, %64
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @OHCI_INT_DMA_PRRS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %101 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %102 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %101, i32 0, i32 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @fwohci_arcv(%struct.fwohci_softc* %100, i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %94
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @OHCI_INT_DMA_PRRQ, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %112 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %113 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %112, i32 0, i32 3
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @fwohci_arcv(%struct.fwohci_softc* %111, i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %105
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @OHCI_INT_CYC_LOST, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %148

121:                                              ; preds = %116
  %122 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %123 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %128 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %133 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 10
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %138 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %137, i32 0, i32 0
  store i32 -1, i32* %138, align 8
  %139 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %140 = load i32, i32* @FWOHCI_INTMASKCLR, align 4
  %141 = load i32, i32* @OHCI_INT_CYC_LOST, align 4
  %142 = call i32 @OWRITE(%struct.fwohci_softc* %139, i32 %140, i32 %141)
  %143 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %144 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %147

147:                                              ; preds = %136, %131
  br label %148

148:                                              ; preds = %147, %116
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @OHCI_INT_DMA_ATRQ, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %155 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %156 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %155, i32 0, i32 2
  %157 = call i32 @fwohci_txd(%struct.fwohci_softc* %154, i32* %156)
  br label %158

158:                                              ; preds = %153, %148
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @OHCI_INT_DMA_ATRS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %165 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %166 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %165, i32 0, i32 1
  %167 = call i32 @fwohci_txd(%struct.fwohci_softc* %164, i32* %166)
  br label %168

168:                                              ; preds = %163, %158
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @OHCI_INT_PW_ERR, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %175 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @device_printf(i32 %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %178

178:                                              ; preds = %173, %168
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @OHCI_INT_ERR, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %185 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, i8*, ...) @device_printf(i32 %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %188

188:                                              ; preds = %183, %178
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @OHCI_INT_PHY_INT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %195 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i32, i8*, ...) @device_printf(i32 %196, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %198

198:                                              ; preds = %193, %188
  ret void
}

declare dso_local i32 @atomic_readandclear_int(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @fwohci_rbuf_update(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @fwohci_tbuf_update(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @fwohci_arcv(%struct.fwohci_softc*, i32*, i32) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @fwohci_txd(%struct.fwohci_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
