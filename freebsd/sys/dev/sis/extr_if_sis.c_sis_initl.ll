; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_initl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_initl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i64, i64, i64, i32, i32, i32, i32, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32, i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@SIS_TYPE_83815 = common dso_local global i64 0, align 8
@SIS_RXFILT_CTL = common dso_local global i32 0, align 4
@NS_FILTADDR_PAR0 = common dso_local global i32 0, align 4
@SIS_RXFILT_DATA = common dso_local global i32 0, align 4
@NS_FILTADDR_PAR1 = common dso_local global i32 0, align 4
@NS_FILTADDR_PAR2 = common dso_local global i32 0, align 4
@SIS_FILTADDR_PAR0 = common dso_local global i32 0, align 4
@SIS_FILTADDR_PAR1 = common dso_local global i32 0, align 4
@SIS_FILTADDR_PAR2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"initialization failed: no memory for rx buffers\0A\00", align 1
@SIS_FLAG_MANUAL_PAD = common dso_local global i32 0, align 4
@NS_SRR_15D = common dso_local global i64 0, align 8
@NS_PHY_PAGE = common dso_local global i32 0, align 4
@NS_PHY_CR = common dso_local global i32 0, align 4
@NS_PHY_TDATA = common dso_local global i32 0, align 4
@NS_PHY_DSPCFG = common dso_local global i32 0, align 4
@NS_PHY_SDCFG = common dso_local global i32 0, align 4
@SIS_RX_LISTPTR = common dso_local global i32 0, align 4
@SIS_TX_LISTPTR = common dso_local global i32 0, align 4
@SIS_CFG = common dso_local global i32 0, align 4
@SIS_CFG_EDB_MASTER_EN = common dso_local global i32 0, align 4
@SIS_RX_CFG = common dso_local global i32 0, align 4
@SIS_RXCFG64 = common dso_local global i32 0, align 4
@SIS_RXCFG256 = common dso_local global i32 0, align 4
@SIS_RXCFG_RX_JABBER = common dso_local global i32 0, align 4
@SIS_TX_CFG = common dso_local global i32 0, align 4
@SIS_TXCFG_100 = common dso_local global i32 0, align 4
@SIS_IMR = common dso_local global i32 0, align 4
@SIS_INTRS = common dso_local global i32 0, align 4
@SIS_IER = common dso_local global i32 0, align 4
@SIS_CSR = common dso_local global i32 0, align 4
@SIS_CSR_TX_DISABLE = common dso_local global i32 0, align 4
@SIS_CSR_RX_DISABLE = common dso_local global i32 0, align 4
@SIS_FLAG_LINK = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@sis_tick = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@NS_IHR = common dso_local global i32 0, align 4
@NS_SRR_16A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_softc*)* @sis_initl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_initl(%struct.sis_softc* %0) #0 {
  %2 = alloca %struct.sis_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32*, align 8
  store %struct.sis_softc* %0, %struct.sis_softc** %2, align 8
  %6 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %7 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %6, i32 0, i32 8
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %10 = call i32 @SIS_LOCK_ASSERT(%struct.sis_softc* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %275

18:                                               ; preds = %1
  %19 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %20 = call i32 @sis_stop(%struct.sis_softc* %19)
  %21 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %22 = call i32 @sis_reset(%struct.sis_softc* %21)
  %23 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %24 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.mii_data* @device_get_softc(i32 %25)
  store %struct.mii_data* %26, %struct.mii_data** %4, align 8
  %27 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %28 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %27, i32 0, i32 8
  %29 = load %struct.ifnet*, %struct.ifnet** %28, align 8
  %30 = call i32* @IF_LLADDR(%struct.ifnet* %29)
  store i32* %30, i32** %5, align 8
  %31 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %32 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SIS_TYPE_83815, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %18
  %37 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %38 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %39 = load i32, i32* @NS_FILTADDR_PAR0, align 4
  %40 = call i32 @CSR_WRITE_4(%struct.sis_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %42 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = or i32 %45, %49
  %51 = call i32 @CSR_WRITE_4(%struct.sis_softc* %41, i32 %42, i32 %50)
  %52 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %53 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %54 = load i32, i32* @NS_FILTADDR_PAR1, align 4
  %55 = call i32 @CSR_WRITE_4(%struct.sis_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %57 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %60, %64
  %66 = call i32 @CSR_WRITE_4(%struct.sis_softc* %56, i32 %57, i32 %65)
  %67 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %68 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %69 = load i32, i32* @NS_FILTADDR_PAR2, align 4
  %70 = call i32 @CSR_WRITE_4(%struct.sis_softc* %67, i32 %68, i32 %69)
  %71 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %72 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %75, %79
  %81 = call i32 @CSR_WRITE_4(%struct.sis_softc* %71, i32 %72, i32 %80)
  br label %128

82:                                               ; preds = %18
  %83 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %84 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %85 = load i32, i32* @SIS_FILTADDR_PAR0, align 4
  %86 = call i32 @CSR_WRITE_4(%struct.sis_softc* %83, i32 %84, i32 %85)
  %87 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %88 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 8
  %96 = or i32 %91, %95
  %97 = call i32 @CSR_WRITE_4(%struct.sis_softc* %87, i32 %88, i32 %96)
  %98 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %99 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %100 = load i32, i32* @SIS_FILTADDR_PAR1, align 4
  %101 = call i32 @CSR_WRITE_4(%struct.sis_softc* %98, i32 %99, i32 %100)
  %102 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %103 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 8
  %111 = or i32 %106, %110
  %112 = call i32 @CSR_WRITE_4(%struct.sis_softc* %102, i32 %103, i32 %111)
  %113 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %114 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %115 = load i32, i32* @SIS_FILTADDR_PAR2, align 4
  %116 = call i32 @CSR_WRITE_4(%struct.sis_softc* %113, i32 %114, i32 %115)
  %117 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %118 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 5
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 8
  %126 = or i32 %121, %125
  %127 = call i32 @CSR_WRITE_4(%struct.sis_softc* %117, i32 %118, i32 %126)
  br label %128

128:                                              ; preds = %82, %36
  %129 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %130 = call i64 @sis_ring_init(%struct.sis_softc* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %134 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @device_printf(i32 %135, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %137 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %138 = call i32 @sis_stop(%struct.sis_softc* %137)
  br label %275

139:                                              ; preds = %128
  %140 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %141 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SIS_TYPE_83815, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %139
  %146 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %147 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i32, i32* @SIS_FLAG_MANUAL_PAD, align 4
  %152 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %153 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %163

156:                                              ; preds = %145
  %157 = load i32, i32* @SIS_FLAG_MANUAL_PAD, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %160 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %156, %150
  br label %164

164:                                              ; preds = %163, %139
  %165 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %166 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SIS_TYPE_83815, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %195

170:                                              ; preds = %164
  %171 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %172 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @NS_SRR_15D, align 8
  %175 = icmp sle i64 %173, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %170
  %177 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %178 = load i32, i32* @NS_PHY_PAGE, align 4
  %179 = call i32 @CSR_WRITE_4(%struct.sis_softc* %177, i32 %178, i32 1)
  %180 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %181 = load i32, i32* @NS_PHY_CR, align 4
  %182 = call i32 @CSR_WRITE_4(%struct.sis_softc* %180, i32 %181, i32 6300)
  %183 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %184 = load i32, i32* @NS_PHY_TDATA, align 4
  %185 = call i32 @CSR_WRITE_4(%struct.sis_softc* %183, i32 %184, i32 0)
  %186 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %187 = load i32, i32* @NS_PHY_DSPCFG, align 4
  %188 = call i32 @CSR_WRITE_4(%struct.sis_softc* %186, i32 %187, i32 20544)
  %189 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %190 = load i32, i32* @NS_PHY_SDCFG, align 4
  %191 = call i32 @CSR_WRITE_4(%struct.sis_softc* %189, i32 %190, i32 140)
  %192 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %193 = load i32, i32* @NS_PHY_PAGE, align 4
  %194 = call i32 @CSR_WRITE_4(%struct.sis_softc* %192, i32 %193, i32 0)
  br label %195

195:                                              ; preds = %176, %170, %164
  %196 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %197 = call i32 @sis_rxfilter(%struct.sis_softc* %196)
  %198 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %199 = load i32, i32* @SIS_RX_LISTPTR, align 4
  %200 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %201 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @SIS_ADDR_LO(i32 %202)
  %204 = call i32 @CSR_WRITE_4(%struct.sis_softc* %198, i32 %199, i32 %203)
  %205 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %206 = load i32, i32* @SIS_TX_LISTPTR, align 4
  %207 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %208 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @SIS_ADDR_LO(i32 %209)
  %211 = call i32 @CSR_WRITE_4(%struct.sis_softc* %205, i32 %206, i32 %210)
  %212 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %213 = load i32, i32* @SIS_CFG, align 4
  %214 = call i32 @CSR_READ_4(%struct.sis_softc* %212, i32 %213)
  %215 = load i32, i32* @SIS_CFG_EDB_MASTER_EN, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %195
  %219 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %220 = load i32, i32* @SIS_RX_CFG, align 4
  %221 = load i32, i32* @SIS_RXCFG64, align 4
  %222 = call i32 @CSR_WRITE_4(%struct.sis_softc* %219, i32 %220, i32 %221)
  br label %228

223:                                              ; preds = %195
  %224 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %225 = load i32, i32* @SIS_RX_CFG, align 4
  %226 = load i32, i32* @SIS_RXCFG256, align 4
  %227 = call i32 @CSR_WRITE_4(%struct.sis_softc* %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %223, %218
  %229 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %230 = load i32, i32* @SIS_RX_CFG, align 4
  %231 = load i32, i32* @SIS_RXCFG_RX_JABBER, align 4
  %232 = call i32 @SIS_SETBIT(%struct.sis_softc* %229, i32 %230, i32 %231)
  %233 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %234 = load i32, i32* @SIS_TX_CFG, align 4
  %235 = load i32, i32* @SIS_TXCFG_100, align 4
  %236 = call i32 @CSR_WRITE_4(%struct.sis_softc* %233, i32 %234, i32 %235)
  %237 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %238 = load i32, i32* @SIS_IMR, align 4
  %239 = load i32, i32* @SIS_INTRS, align 4
  %240 = call i32 @CSR_WRITE_4(%struct.sis_softc* %237, i32 %238, i32 %239)
  %241 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %242 = load i32, i32* @SIS_IER, align 4
  %243 = call i32 @CSR_WRITE_4(%struct.sis_softc* %241, i32 %242, i32 1)
  %244 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %245 = load i32, i32* @SIS_CSR, align 4
  %246 = load i32, i32* @SIS_CSR_TX_DISABLE, align 4
  %247 = load i32, i32* @SIS_CSR_RX_DISABLE, align 4
  %248 = or i32 %246, %247
  %249 = call i32 @SIS_CLRBIT(%struct.sis_softc* %244, i32 %245, i32 %248)
  %250 = load i32, i32* @SIS_FLAG_LINK, align 4
  %251 = xor i32 %250, -1
  %252 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %253 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 4
  %256 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %257 = call i32 @mii_mediachg(%struct.mii_data* %256)
  %258 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %259 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %260 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  %263 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %266 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %270 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %269, i32 0, i32 3
  %271 = load i32, i32* @hz, align 4
  %272 = load i32, i32* @sis_tick, align 4
  %273 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %274 = call i32 @callout_reset(i32* %270, i32 %271, i32 %272, %struct.sis_softc* %273)
  br label %275

275:                                              ; preds = %228, %132, %17
  ret void
}

declare dso_local i32 @SIS_LOCK_ASSERT(%struct.sis_softc*) #1

declare dso_local i32 @sis_stop(%struct.sis_softc*) #1

declare dso_local i32 @sis_reset(%struct.sis_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i32, i32) #1

declare dso_local i64 @sis_ring_init(%struct.sis_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sis_rxfilter(%struct.sis_softc*) #1

declare dso_local i32 @SIS_ADDR_LO(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i32) #1

declare dso_local i32 @SIS_SETBIT(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @SIS_CLRBIT(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.sis_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
