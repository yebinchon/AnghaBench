; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i64, i32 (%struct.dtsec_softc*, i32)*, i32 (%struct.dtsec_softc*, i32)*, i64, i32, i32, i8*, i32, %struct.ifnet*, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.dtsec_softc* }
%struct.TYPE_3__ = type { i64, i32 }

@NO_IRQ = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"DTSEC Global Lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"DTSEC MII Lock\00", align 1
@CALLOUT_MPSAFE = common dso_local global i32 0, align 4
@DTSEC_MODE_REGULAR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"if_alloc() failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@dtsec_if_init = common dso_local global i32 0, align 4
@dtsec_if_start = common dso_local global i32 0, align 4
@dtsec_if_ioctl = common dso_local global i32 0, align 4
@IFQ_MAXLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"dtsec_phy\00", align 1
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@dtsec_ifmedia_upd = common dso_local global i32 0, align 4
@dtsec_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"attaching PHYs failed: %d\0A\00", align 1
@TSEC_TX_NUM_DESC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtsec_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dtsec_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.dtsec_softc*
  store %struct.dtsec_softc* %10, %struct.dtsec_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %15 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @NO_IRQ, align 4
  %17 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %18 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %17, i32 0, i32 15
  store i32 %16, i32* %18, align 8
  %19 = call i64 (...) @XX_MallocSmartInit()
  %20 = load i64, i64* @E_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %255

24:                                               ; preds = %1
  %25 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %26 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %25, i32 0, i32 14
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_nameunit(i32 %27)
  %29 = load i32, i32* @MTX_DEF, align 4
  %30 = call i32 @mtx_init(i32* %26, i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %32 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %31, i32 0, i32 13
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_get_nameunit(i32 %33)
  %35 = load i32, i32* @MTX_DEF, align 4
  %36 = call i32 @mtx_init(i32* %32, i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %38 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %37, i32 0, i32 12
  %39 = load i32, i32* @CALLOUT_MPSAFE, align 4
  %40 = call i32 @callout_init(i32* %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %43 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %42, i32 0, i32 11
  %44 = call i32 @fman_get_handle(i32 %41, i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %24
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %255

48:                                               ; preds = %24
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %51 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %50, i32 0, i32 10
  %52 = call i32 @fman_get_muram_handle(i32 %49, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %255

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %59 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %58, i32 0, i32 9
  %60 = call i32 @fman_get_bushandle(i32 %57, i32* %59)
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %255

64:                                               ; preds = %56
  %65 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %66 = call i32 @dtsec_configure_mode(%struct.dtsec_softc* %65)
  %67 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %68 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DTSEC_MODE_REGULAR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %64
  %73 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %74 = call i32 @dtsec_rm_pool_rx_init(%struct.dtsec_softc* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @EIO, align 4
  store i32 %78, i32* %2, align 4
  br label %255

79:                                               ; preds = %72
  %80 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %81 = call i32 @dtsec_rm_fqr_rx_init(%struct.dtsec_softc* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @EIO, align 4
  store i32 %85, i32* %2, align 4
  br label %255

86:                                               ; preds = %79
  %87 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %88 = call i32 @dtsec_rm_fi_pool_init(%struct.dtsec_softc* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @EIO, align 4
  store i32 %92, i32* %2, align 4
  br label %255

93:                                               ; preds = %86
  %94 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %95 = call i32 @dtsec_rm_fqr_tx_init(%struct.dtsec_softc* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @EIO, align 4
  store i32 %99, i32* %2, align 4
  br label %255

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %64
  %102 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %103 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %104 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dtsec_fm_mac_init(%struct.dtsec_softc* %102, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @dtsec_detach(i32 %110)
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %2, align 4
  br label %255

113:                                              ; preds = %101
  %114 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %115 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %114, i32 0, i32 1
  %116 = load i32 (%struct.dtsec_softc*, i32)*, i32 (%struct.dtsec_softc*, i32)** %115, align 8
  %117 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %118 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %119 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @device_get_unit(i32 %120)
  %122 = call i32 %116(%struct.dtsec_softc* %117, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %113
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @dtsec_detach(i32 %126)
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %2, align 4
  br label %255

129:                                              ; preds = %113
  %130 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %131 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %130, i32 0, i32 2
  %132 = load i32 (%struct.dtsec_softc*, i32)*, i32 (%struct.dtsec_softc*, i32)** %131, align 8
  %133 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %134 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %135 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @device_get_unit(i32 %136)
  %138 = call i32 %132(%struct.dtsec_softc* %133, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %129
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @dtsec_detach(i32 %142)
  %144 = load i32, i32* @ENXIO, align 4
  store i32 %144, i32* %2, align 4
  br label %255

145:                                              ; preds = %129
  %146 = load i32, i32* @IFT_ETHER, align 4
  %147 = call %struct.ifnet* @if_alloc(i32 %146)
  %148 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %149 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %148, i32 0, i32 8
  store %struct.ifnet* %147, %struct.ifnet** %149, align 8
  store %struct.ifnet* %147, %struct.ifnet** %7, align 8
  %150 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %151 = icmp eq %struct.ifnet* %150, null
  br i1 %151, label %152, label %160

152:                                              ; preds = %145
  %153 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %154 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @dtsec_detach(i32 %157)
  %159 = load i32, i32* @ENOMEM, align 4
  store i32 %159, i32* %2, align 4
  br label %255

160:                                              ; preds = %145
  %161 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %162 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %163 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %162, i32 0, i32 8
  store %struct.dtsec_softc* %161, %struct.dtsec_softc** %163, align 8
  %164 = load i32, i32* @ETHERMTU, align 4
  %165 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %166 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @IFF_SIMPLEX, align 4
  %168 = load i32, i32* @IFF_BROADCAST, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @dtsec_if_init, align 4
  %173 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @dtsec_if_start, align 4
  %176 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %177 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @dtsec_if_ioctl, align 4
  %179 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %180 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @IFQ_MAXLEN, align 4
  %182 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %183 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i32 %181, i32* %184, align 8
  %185 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %186 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp sge i64 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %160
  %190 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %191 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %192 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @device_get_name(i32 %193)
  %195 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %196 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @device_get_unit(i32 %197)
  %199 = call i32 @if_initname(%struct.ifnet* %190, i8* %194, i32 %198)
  br label %207

200:                                              ; preds = %160
  %201 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %202 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %203 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @device_get_unit(i32 %204)
  %206 = call i32 @if_initname(%struct.ifnet* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %200, %189
  %208 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %209 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %210 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %212 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %215 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  %216 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %217 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %220 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %219, i32 0, i32 5
  %221 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %222 = load i32, i32* @dtsec_ifmedia_upd, align 4
  %223 = load i32, i32* @dtsec_ifmedia_sts, align 4
  %224 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %225 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %226 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* @MII_OFFSET_ANY, align 4
  %229 = call i32 @mii_attach(i32 %218, i32* %220, %struct.ifnet* %221, i32 %222, i32 %223, i32 %224, i64 %227, i32 %228, i32 0)
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %6, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %207
  %233 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %234 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = call i32 (i32, i8*, ...) @device_printf(i32 %235, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %236)
  %238 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %239 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @dtsec_detach(i32 %240)
  %242 = load i32, i32* %6, align 4
  store i32 %242, i32* %2, align 4
  br label %255

243:                                              ; preds = %207
  %244 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %245 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = call i8* @device_get_softc(i32 %246)
  %248 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %249 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %248, i32 0, i32 6
  store i8* %247, i8** %249, align 8
  %250 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %251 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %252 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @ether_ifattach(%struct.ifnet* %250, i32 %253)
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %243, %232, %152, %141, %125, %109, %98, %91, %84, %77, %62, %54, %46, %22
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @XX_MallocSmartInit(...) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @fman_get_handle(i32, i32*) #1

declare dso_local i32 @fman_get_muram_handle(i32, i32*) #1

declare dso_local i32 @fman_get_bushandle(i32, i32*) #1

declare dso_local i32 @dtsec_configure_mode(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_rm_pool_rx_init(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_rm_fqr_rx_init(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_rm_fi_pool_init(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_rm_fqr_tx_init(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_fm_mac_init(%struct.dtsec_softc*, i32) #1

declare dso_local i32 @dtsec_detach(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i8*, i32) #1

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
