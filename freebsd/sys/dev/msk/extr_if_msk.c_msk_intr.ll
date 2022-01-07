; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32, i32, i32, %struct.msk_if_softc** }
%struct.msk_if_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@B0_Y2_SP_ISRC2 = common dso_local global i32 0, align 4
@MSK_FLAG_SUSPEND = common dso_local global i32 0, align 4
@B0_Y2_SP_ICR = common dso_local global i32 0, align 4
@MSK_PORT_A = common dso_local global i64 0, align 8
@MSK_PORT_B = common dso_local global i64 0, align 8
@Y2_IS_IRQ_PHY1 = common dso_local global i32 0, align 4
@Y2_IS_IRQ_PHY2 = common dso_local global i32 0, align 4
@Y2_IS_IRQ_MAC1 = common dso_local global i32 0, align 4
@Y2_IS_IRQ_MAC2 = common dso_local global i32 0, align 4
@Y2_IS_CHK_RX1 = common dso_local global i32 0, align 4
@Y2_IS_CHK_RX2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Rx descriptor error\0A\00", align 1
@B0_IMSK = common dso_local global i32 0, align 4
@Y2_IS_CHK_TXA1 = common dso_local global i32 0, align 4
@Y2_IS_CHK_TXA2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Tx descriptor error\0A\00", align 1
@Y2_IS_HW_ERR = common dso_local global i32 0, align 4
@Y2_IS_STAT_BMU = common dso_local global i32 0, align 4
@STAT_CTRL = common dso_local global i32 0, align 4
@SC_STAT_CLR_IRQ = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @msk_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca %struct.msk_if_softc*, align 8
  %5 = alloca %struct.msk_if_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.msk_softc*
  store %struct.msk_softc* %11, %struct.msk_softc** %3, align 8
  %12 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %13 = call i32 @MSK_LOCK(%struct.msk_softc* %12)
  %14 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %15 = load i32, i32* @B0_Y2_SP_ISRC2, align 4
  %16 = call i32 @CSR_READ_4(%struct.msk_softc* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %24 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MSK_FLAG_SUSPEND, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %32 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29, %22, %19, %1
  %37 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %38 = load i32, i32* @B0_Y2_SP_ICR, align 4
  %39 = call i32 @CSR_WRITE_4(%struct.msk_softc* %37, i32 %38, i32 2)
  %40 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %41 = call i32 @MSK_UNLOCK(%struct.msk_softc* %40)
  br label %235

42:                                               ; preds = %29
  %43 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %44 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %43, i32 0, i32 3
  %45 = load %struct.msk_if_softc**, %struct.msk_if_softc*** %44, align 8
  %46 = load i64, i64* @MSK_PORT_A, align 8
  %47 = getelementptr inbounds %struct.msk_if_softc*, %struct.msk_if_softc** %45, i64 %46
  %48 = load %struct.msk_if_softc*, %struct.msk_if_softc** %47, align 8
  store %struct.msk_if_softc* %48, %struct.msk_if_softc** %4, align 8
  %49 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %50 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %49, i32 0, i32 3
  %51 = load %struct.msk_if_softc**, %struct.msk_if_softc*** %50, align 8
  %52 = load i64, i64* @MSK_PORT_B, align 8
  %53 = getelementptr inbounds %struct.msk_if_softc*, %struct.msk_if_softc** %51, i64 %52
  %54 = load %struct.msk_if_softc*, %struct.msk_if_softc** %53, align 8
  store %struct.msk_if_softc* %54, %struct.msk_if_softc** %5, align 8
  store %struct.ifnet* null, %struct.ifnet** %7, align 8
  store %struct.ifnet* null, %struct.ifnet** %6, align 8
  %55 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %56 = icmp ne %struct.msk_if_softc* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %59 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %58, i32 0, i32 0
  %60 = load %struct.ifnet*, %struct.ifnet** %59, align 8
  store %struct.ifnet* %60, %struct.ifnet** %6, align 8
  br label %61

61:                                               ; preds = %57, %42
  %62 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %63 = icmp ne %struct.msk_if_softc* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %66 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %65, i32 0, i32 0
  %67 = load %struct.ifnet*, %struct.ifnet** %66, align 8
  store %struct.ifnet* %67, %struct.ifnet** %7, align 8
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @Y2_IS_IRQ_PHY1, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %75 = icmp ne %struct.msk_if_softc* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %78 = call i32 @msk_intr_phy(%struct.msk_if_softc* %77)
  br label %79

79:                                               ; preds = %76, %73, %68
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @Y2_IS_IRQ_PHY2, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %86 = icmp ne %struct.msk_if_softc* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %89 = call i32 @msk_intr_phy(%struct.msk_if_softc* %88)
  br label %90

90:                                               ; preds = %87, %84, %79
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @Y2_IS_IRQ_MAC1, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %97 = icmp ne %struct.msk_if_softc* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %100 = call i32 @msk_intr_gmac(%struct.msk_if_softc* %99)
  br label %101

101:                                              ; preds = %98, %95, %90
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @Y2_IS_IRQ_MAC2, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %108 = icmp ne %struct.msk_if_softc* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %111 = call i32 @msk_intr_gmac(%struct.msk_if_softc* %110)
  br label %112

112:                                              ; preds = %109, %106, %101
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @Y2_IS_CHK_RX1, align 4
  %115 = load i32, i32* @Y2_IS_CHK_RX2, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %113, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %112
  %120 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %121 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @device_printf(i32 %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %124 = load i32, i32* @Y2_IS_CHK_RX1, align 4
  %125 = load i32, i32* @Y2_IS_CHK_RX2, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %129 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %133 = load i32, i32* @B0_IMSK, align 4
  %134 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %135 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @CSR_WRITE_4(%struct.msk_softc* %132, i32 %133, i32 %136)
  %138 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %139 = load i32, i32* @B0_IMSK, align 4
  %140 = call i32 @CSR_READ_4(%struct.msk_softc* %138, i32 %139)
  br label %141

141:                                              ; preds = %119, %112
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @Y2_IS_CHK_TXA1, align 4
  %144 = load i32, i32* @Y2_IS_CHK_TXA2, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %141
  %149 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %150 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @device_printf(i32 %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32, i32* @Y2_IS_CHK_TXA1, align 4
  %154 = load i32, i32* @Y2_IS_CHK_TXA2, align 4
  %155 = or i32 %153, %154
  %156 = xor i32 %155, -1
  %157 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %158 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %162 = load i32, i32* @B0_IMSK, align 4
  %163 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %164 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @CSR_WRITE_4(%struct.msk_softc* %161, i32 %162, i32 %165)
  %167 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %168 = load i32, i32* @B0_IMSK, align 4
  %169 = call i32 @CSR_READ_4(%struct.msk_softc* %167, i32 %168)
  br label %170

170:                                              ; preds = %148, %141
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @Y2_IS_HW_ERR, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %177 = call i32 @msk_intr_hwerr(%struct.msk_softc* %176)
  br label %178

178:                                              ; preds = %175, %170
  %179 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %180 = call i32 @msk_handle_events(%struct.msk_softc* %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @Y2_IS_STAT_BMU, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %178
  %186 = load i32, i32* %9, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %190 = load i32, i32* @STAT_CTRL, align 4
  %191 = load i32, i32* @SC_STAT_CLR_IRQ, align 4
  %192 = call i32 @CSR_WRITE_4(%struct.msk_softc* %189, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %188, %185, %178
  %194 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %195 = load i32, i32* @B0_Y2_SP_ICR, align 4
  %196 = call i32 @CSR_WRITE_4(%struct.msk_softc* %194, i32 %195, i32 2)
  %197 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %198 = icmp ne %struct.ifnet* %197, null
  br i1 %198, label %199, label %214

199:                                              ; preds = %193
  %200 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %201 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %199
  %207 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %208 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %207, i32 0, i32 1
  %209 = call i32 @IFQ_DRV_IS_EMPTY(i32* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %206
  %212 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %213 = call i32 @msk_start_locked(%struct.ifnet* %212)
  br label %214

214:                                              ; preds = %211, %206, %199, %193
  %215 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %216 = icmp ne %struct.ifnet* %215, null
  br i1 %216, label %217, label %232

217:                                              ; preds = %214
  %218 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %219 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %217
  %225 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %226 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %225, i32 0, i32 1
  %227 = call i32 @IFQ_DRV_IS_EMPTY(i32* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %224
  %230 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %231 = call i32 @msk_start_locked(%struct.ifnet* %230)
  br label %232

232:                                              ; preds = %229, %224, %217, %214
  %233 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %234 = call i32 @MSK_UNLOCK(%struct.msk_softc* %233)
  br label %235

235:                                              ; preds = %232, %36
  ret void
}

declare dso_local i32 @MSK_LOCK(%struct.msk_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.msk_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @MSK_UNLOCK(%struct.msk_softc*) #1

declare dso_local i32 @msk_intr_phy(%struct.msk_if_softc*) #1

declare dso_local i32 @msk_intr_gmac(%struct.msk_if_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @msk_intr_hwerr(%struct.msk_softc*) #1

declare dso_local i32 @msk_handle_events(%struct.msk_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @msk_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
