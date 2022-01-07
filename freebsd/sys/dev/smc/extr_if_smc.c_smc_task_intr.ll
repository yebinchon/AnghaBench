; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_task_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_task_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_softc = type { i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32, %struct.smc_softc* }

@IST = common dso_local global i32 0, align 4
@TX_INT = common dso_local global i32 0, align 4
@FIFO_TX = common dso_local global i32 0, align 4
@FIFO_EMPTY = common dso_local global i32 0, align 4
@PNR = common dso_local global i32 0, align 4
@PTR = common dso_local global i32 0, align 4
@PTR_READ = common dso_local global i32 0, align 4
@PTR_AUTO_INCR = common dso_local global i32 0, align 4
@EPHSR = common dso_local global i32 0, align 4
@MMUCR = common dso_local global i32 0, align 4
@MMUCR_CMD_RELEASE_PKT = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@TCR_TXENA = common dso_local global i32 0, align 4
@TCR_PAD_EN = common dso_local global i32 0, align 4
@ACK = common dso_local global i32 0, align 4
@RCV_INT = common dso_local global i32 0, align 4
@ALLOC_INT = common dso_local global i32 0, align 4
@RX_OVRN_INT = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@TX_EMPTY_INT = common dso_local global i32 0, align 4
@ECR = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@ECR_SNGLCOL_MASK = common dso_local global i32 0, align 4
@ECR_SNGLCOL_SHIFT = common dso_local global i32 0, align 4
@ECR_MULCOL_MASK = common dso_local global i32 0, align 4
@ECR_MULCOL_SHIFT = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@MSK = common dso_local global i32 0, align 4
@EPHSR_TX_SUC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @smc_task_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_task_intr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.ifnet*
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 1
  %16 = load %struct.smc_softc*, %struct.smc_softc** %15, align 8
  store %struct.smc_softc* %16, %struct.smc_softc** %5, align 8
  %17 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %18 = call i32 @SMC_LOCK(%struct.smc_softc* %17)
  %19 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %20 = call i32 @smc_select_bank(%struct.smc_softc* %19, i32 2)
  %21 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %22 = load i32, i32* @IST, align 4
  %23 = call i32 @smc_read_1(%struct.smc_softc* %21, i32 %22)
  %24 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %25 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @TX_INT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %97

32:                                               ; preds = %2
  %33 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %34 = load i32, i32* @FIFO_TX, align 4
  %35 = call i32 @smc_read_1(%struct.smc_softc* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @FIFO_EMPTY, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %92

40:                                               ; preds = %32
  %41 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %42 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %41, i32 0, i32 3
  %43 = call i32 @callout_stop(i32* %42)
  %44 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %45 = call i32 @smc_select_bank(%struct.smc_softc* %44, i32 2)
  %46 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %47 = load i32, i32* @PNR, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @smc_write_1(%struct.smc_softc* %46, i32 %47, i32 %48)
  %50 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %51 = load i32, i32* @PTR, align 4
  %52 = load i32, i32* @PTR_READ, align 4
  %53 = or i32 0, %52
  %54 = load i32, i32* @PTR_AUTO_INCR, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @smc_write_2(%struct.smc_softc* %50, i32 %51, i32 %55)
  %57 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %58 = call i32 @smc_select_bank(%struct.smc_softc* %57, i32 0)
  %59 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %60 = load i32, i32* @EPHSR, align 4
  %61 = call i32 @smc_read_2(%struct.smc_softc* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %63 = call i32 @smc_select_bank(%struct.smc_softc* %62, i32 2)
  %64 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %65 = call i32 @smc_mmu_wait(%struct.smc_softc* %64)
  %66 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %67 = load i32, i32* @MMUCR, align 4
  %68 = load i32, i32* @MMUCR_CMD_RELEASE_PKT, align 4
  %69 = call i32 @smc_write_2(%struct.smc_softc* %66, i32 %67, i32 %68)
  %70 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %71 = call i32 @smc_select_bank(%struct.smc_softc* %70, i32 0)
  %72 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %73 = load i32, i32* @TCR, align 4
  %74 = call i32 @smc_read_2(%struct.smc_softc* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* @TCR_TXENA, align 4
  %76 = load i32, i32* @TCR_PAD_EN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %81 = load i32, i32* @TCR, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @smc_write_2(%struct.smc_softc* %80, i32 %81, i32 %82)
  %84 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %85 = call i32 @smc_select_bank(%struct.smc_softc* %84, i32 2)
  %86 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %87 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %90 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %89, i32 0, i32 1
  %91 = call i32 @taskqueue_enqueue(i32 %88, i32* %90)
  br label %92

92:                                               ; preds = %40, %32
  %93 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %94 = load i32, i32* @ACK, align 4
  %95 = load i32, i32* @TX_INT, align 4
  %96 = call i32 @smc_write_1(%struct.smc_softc* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %2
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @RCV_INT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %104 = load i32, i32* @ACK, align 4
  %105 = load i32, i32* @RCV_INT, align 4
  %106 = call i32 @smc_write_1(%struct.smc_softc* %103, i32 %104, i32 %105)
  %107 = load i32, i32* @RCV_INT, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %110 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %114 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %117 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %116, i32 0, i32 4
  %118 = call i32 @taskqueue_enqueue(i32 %115, i32* %117)
  br label %119

119:                                              ; preds = %102, %97
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @ALLOC_INT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %119
  %125 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %126 = load i32, i32* @ACK, align 4
  %127 = load i32, i32* @ALLOC_INT, align 4
  %128 = call i32 @smc_write_1(%struct.smc_softc* %125, i32 %126, i32 %127)
  %129 = load i32, i32* @ALLOC_INT, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %132 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %136 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %139 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %138, i32 0, i32 1
  %140 = call i32 @taskqueue_enqueue(i32 %137, i32* %139)
  br label %141

141:                                              ; preds = %124, %119
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @RX_OVRN_INT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %148 = load i32, i32* @ACK, align 4
  %149 = load i32, i32* @RX_OVRN_INT, align 4
  %150 = call i32 @smc_write_1(%struct.smc_softc* %147, i32 %148, i32 %149)
  %151 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %152 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %153 = call i32 @if_inc_counter(%struct.ifnet* %151, i32 %152, i32 1)
  br label %154

154:                                              ; preds = %146, %141
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @TX_EMPTY_INT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %200

159:                                              ; preds = %154
  %160 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %161 = load i32, i32* @ACK, align 4
  %162 = load i32, i32* @TX_EMPTY_INT, align 4
  %163 = call i32 @smc_write_1(%struct.smc_softc* %160, i32 %161, i32 %162)
  %164 = load i32, i32* @TX_EMPTY_INT, align 4
  %165 = xor i32 %164, -1
  %166 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %167 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %171 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %170, i32 0, i32 3
  %172 = call i32 @callout_stop(i32* %171)
  %173 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %174 = call i32 @smc_select_bank(%struct.smc_softc* %173, i32 0)
  %175 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %176 = load i32, i32* @ECR, align 4
  %177 = call i32 @smc_read_2(%struct.smc_softc* %175, i32 %176)
  store i32 %177, i32* %9, align 4
  %178 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %179 = call i32 @smc_select_bank(%struct.smc_softc* %178, i32 2)
  %180 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %181 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @ECR_SNGLCOL_MASK, align 4
  %184 = and i32 %182, %183
  %185 = load i32, i32* @ECR_SNGLCOL_SHIFT, align 4
  %186 = ashr i32 %184, %185
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @ECR_MULCOL_MASK, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* @ECR_MULCOL_SHIFT, align 4
  %191 = ashr i32 %189, %190
  %192 = add nsw i32 %186, %191
  %193 = call i32 @if_inc_counter(%struct.ifnet* %180, i32 %181, i32 %192)
  %194 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %195 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %198 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %197, i32 0, i32 1
  %199 = call i32 @taskqueue_enqueue(i32 %196, i32* %198)
  br label %200

200:                                              ; preds = %159, %154
  %201 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %202 = call i32 @smc_select_bank(%struct.smc_softc* %201, i32 2)
  %203 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %204 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @IFCAP_POLLING, align 4
  %207 = and i32 %205, %206
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %200
  %210 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %211 = load i32, i32* @MSK, align 4
  %212 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %213 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @smc_write_1(%struct.smc_softc* %210, i32 %211, i32 %214)
  br label %216

216:                                              ; preds = %209, %200
  %217 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %218 = call i32 @SMC_UNLOCK(%struct.smc_softc* %217)
  ret void
}

declare dso_local i32 @SMC_LOCK(%struct.smc_softc*) #1

declare dso_local i32 @smc_select_bank(%struct.smc_softc*, i32) #1

declare dso_local i32 @smc_read_1(%struct.smc_softc*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @smc_write_1(%struct.smc_softc*, i32, i32) #1

declare dso_local i32 @smc_write_2(%struct.smc_softc*, i32, i32) #1

declare dso_local i32 @smc_read_2(%struct.smc_softc*, i32) #1

declare dso_local i32 @smc_mmu_wait(%struct.smc_softc*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @SMC_UNLOCK(%struct.smc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
