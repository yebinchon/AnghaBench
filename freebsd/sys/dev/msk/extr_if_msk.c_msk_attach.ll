; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32, i64, %struct.msk_if_softc**, i32 }
%struct.msk_if_softc = type { i32, i32, i32*, i32, %struct.ifnet*, %struct.msk_softc*, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.msk_if_softc* }
%struct.TYPE_3__ = type { i64 }
%struct.msk_mii_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSK_PORT_A = common dso_local global i32 0, align 4
@Q_XA1 = common dso_local global i32 0, align 4
@Q_XS1 = common dso_local global i32 0, align 4
@Q_R1 = common dso_local global i32 0, align 4
@Q_XA2 = common dso_local global i32 0, align 4
@Q_XS2 = common dso_local global i32 0, align 4
@Q_R2 = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can not if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@MSK_FLAG_DESCV2 = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@MSK_FLAG_NORX_CSUM = common dso_local global i32 0, align 4
@MSK_CSUM_FEATURES = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@msk_ioctl = common dso_local global i32 0, align 4
@msk_start = common dso_local global i32 0, align 4
@msk_init = common dso_local global i32 0, align 4
@MSK_TX_RING_CNT = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@B2_MAC_1 = common dso_local global i64 0, align 8
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@MSK_FLAG_NOHWVLAN = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@msk_mediachange = common dso_local global i32 0, align 4
@msk_mediastatus = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@PHY_ADDR_MARV = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @msk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msk_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.msk_softc*, align 8
  %5 = alloca %struct.msk_if_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.msk_mii_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %2, align 4
  br label %327

16:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @device_get_softc(i32* %17)
  %19 = bitcast i8* %18 to %struct.msk_if_softc*
  store %struct.msk_if_softc* %19, %struct.msk_if_softc** %5, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @device_get_parent(i32* %20)
  %22 = call i8* @device_get_softc(i32* %21)
  %23 = bitcast i8* %22 to %struct.msk_softc*
  store %struct.msk_softc* %23, %struct.msk_softc** %4, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call %struct.msk_mii_data* @device_get_ivars(i32* %24)
  store %struct.msk_mii_data* %25, %struct.msk_mii_data** %7, align 8
  %26 = load %struct.msk_mii_data*, %struct.msk_mii_data** %7, align 8
  %27 = getelementptr inbounds %struct.msk_mii_data, %struct.msk_mii_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %31 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %34 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %36 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %37 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %36, i32 0, i32 5
  store %struct.msk_softc* %35, %struct.msk_softc** %37, align 8
  %38 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %39 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %42 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %44 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %45 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %44, i32 0, i32 2
  %46 = load %struct.msk_if_softc**, %struct.msk_if_softc*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.msk_if_softc*, %struct.msk_if_softc** %46, i64 %48
  store %struct.msk_if_softc* %43, %struct.msk_if_softc** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @MSK_PORT_A, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %16
  %54 = load i32, i32* @Q_XA1, align 4
  %55 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %56 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @Q_XS1, align 4
  %58 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %59 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @Q_R1, align 4
  %61 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %62 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  br label %73

63:                                               ; preds = %16
  %64 = load i32, i32* @Q_XA2, align 4
  %65 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %66 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @Q_XS2, align 4
  %68 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %69 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @Q_R2, align 4
  %71 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %72 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %53
  %74 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %75 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %74, i32 0, i32 6
  %76 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %77 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %76, i32 0, i32 5
  %78 = load %struct.msk_softc*, %struct.msk_softc** %77, align 8
  %79 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %78, i32 0, i32 3
  %80 = call i32 @callout_init_mtx(i32* %75, i32* %79, i32 0)
  %81 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %82 = call i32 @msk_sysctl_node(%struct.msk_if_softc* %81)
  %83 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %84 = call i32 @msk_txrx_dma_alloc(%struct.msk_if_softc* %83)
  store i32 %84, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %313

87:                                               ; preds = %73
  %88 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %89 = call i32 @msk_rx_dma_jalloc(%struct.msk_if_softc* %88)
  %90 = load i32, i32* @IFT_ETHER, align 4
  %91 = call %struct.ifnet* @if_alloc(i32 %90)
  %92 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %93 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %92, i32 0, i32 4
  store %struct.ifnet* %91, %struct.ifnet** %93, align 8
  store %struct.ifnet* %91, %struct.ifnet** %6, align 8
  %94 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %95 = icmp eq %struct.ifnet* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %98 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @device_printf(i32* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @ENOSPC, align 4
  store i32 %101, i32* %10, align 4
  br label %313

102:                                              ; preds = %87
  %103 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %104 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %105 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %104, i32 0, i32 9
  store %struct.msk_if_softc* %103, %struct.msk_if_softc** %105, align 8
  %106 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @device_get_name(i32* %107)
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @device_get_unit(i32* %109)
  %111 = call i32 @if_initname(%struct.ifnet* %106, i32 %108, i32 %110)
  %112 = load i32, i32* @IFF_BROADCAST, align 4
  %113 = load i32, i32* @IFF_SIMPLEX, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @IFF_MULTICAST, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @IFCAP_TXCSUM, align 4
  %120 = load i32, i32* @IFCAP_TSO4, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %123 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %125 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %102
  %131 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %132 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load i32, i32* @IFCAP_RXCSUM, align 4
  %138 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %139 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %130, %102
  %143 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %144 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %142
  %150 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %151 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @MSK_FLAG_NORX_CSUM, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load i32, i32* @IFCAP_RXCSUM, align 4
  %158 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %159 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %156, %149, %142
  %163 = load i32, i32* @MSK_CSUM_FEATURES, align 4
  %164 = load i32, i32* @CSUM_TSO, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %167 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %169 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @msk_ioctl, align 4
  %174 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %175 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %174, i32 0, i32 8
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* @msk_start, align 4
  %177 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %178 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %177, i32 0, i32 7
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @msk_init, align 4
  %180 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %181 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 8
  %182 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %183 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %182, i32 0, i32 5
  %184 = load i64, i64* @MSK_TX_RING_CNT, align 8
  %185 = sub nsw i64 %184, 1
  %186 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %183, i64 %185)
  %187 = load i64, i64* @MSK_TX_RING_CNT, align 8
  %188 = sub nsw i64 %187, 1
  %189 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %190 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  store i64 %188, i64* %191, align 8
  %192 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %193 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %192, i32 0, i32 5
  %194 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %193)
  %195 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %196 = call i32 @MSK_IF_LOCK(%struct.msk_if_softc* %195)
  store i32 0, i32* %8, align 4
  br label %197

197:                                              ; preds = %215, %162
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %197
  %202 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %203 = load i64, i64* @B2_MAC_1, align 8
  %204 = load i32, i32* %9, align 4
  %205 = mul nsw i32 %204, 8
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %203, %206
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %207, %209
  %211 = call i32 @CSR_READ_1(%struct.msk_softc* %202, i64 %210)
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 %213
  store i32 %211, i32* %214, align 4
  br label %215

215:                                              ; preds = %201
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %8, align 4
  br label %197

218:                                              ; preds = %197
  %219 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %220 = call i32 @MSK_IF_UNLOCK(%struct.msk_if_softc* %219)
  %221 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %222 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %223 = call i32 @ether_ifattach(%struct.ifnet* %221, i32* %222)
  %224 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %225 = call i32 @MSK_IF_LOCK(%struct.msk_if_softc* %224)
  %226 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %227 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %228 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %232 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @MSK_FLAG_NOHWVLAN, align 4
  %235 = and i32 %233, %234
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %265

237:                                              ; preds = %218
  %238 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %239 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %240 = or i32 %238, %239
  %241 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %242 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %246 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %237
  %252 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %253 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @MSK_FLAG_NORX_CSUM, align 4
  %256 = and i32 %254, %255
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %251
  %259 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %260 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %261 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %258, %251, %237
  br label %265

265:                                              ; preds = %264, %218
  %266 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %267 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %270 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 4
  %271 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %272 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %275 = and i32 %273, %274
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %265
  %278 = load i32, i32* @IFCAP_RXCSUM, align 4
  %279 = xor i32 %278, -1
  %280 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %281 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, %279
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %277, %265
  %285 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %286 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %285, i32 0, i32 4
  store i32 4, i32* %286, align 8
  %287 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %288 = call i32 @MSK_IF_UNLOCK(%struct.msk_if_softc* %287)
  %289 = load i32*, i32** %3, align 8
  %290 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %291 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %290, i32 0, i32 3
  %292 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %293 = load i32, i32* @msk_mediachange, align 4
  %294 = load i32, i32* @msk_mediastatus, align 4
  %295 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %296 = load i32, i32* @PHY_ADDR_MARV, align 4
  %297 = load i32, i32* @MII_OFFSET_ANY, align 4
  %298 = load %struct.msk_mii_data*, %struct.msk_mii_data** %7, align 8
  %299 = getelementptr inbounds %struct.msk_mii_data, %struct.msk_mii_data* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @mii_attach(i32* %289, i32* %291, %struct.ifnet* %292, i32 %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %300)
  store i32 %301, i32* %10, align 4
  %302 = load i32, i32* %10, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %284
  %305 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %306 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = call i32 @device_printf(i32* %307, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %309 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %310 = call i32 @ether_ifdetach(%struct.ifnet* %309)
  %311 = load i32, i32* @ENXIO, align 4
  store i32 %311, i32* %10, align 4
  br label %313

312:                                              ; preds = %284
  br label %313

313:                                              ; preds = %312, %304, %96, %86
  %314 = load i32, i32* %10, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %313
  %317 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %318 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %317, i32 0, i32 2
  %319 = load %struct.msk_if_softc**, %struct.msk_if_softc*** %318, align 8
  %320 = load i32, i32* %9, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.msk_if_softc*, %struct.msk_if_softc** %319, i64 %321
  store %struct.msk_if_softc* null, %struct.msk_if_softc** %322, align 8
  %323 = load i32*, i32** %3, align 8
  %324 = call i32 @msk_detach(i32* %323)
  br label %325

325:                                              ; preds = %316, %313
  %326 = load i32, i32* %10, align 4
  store i32 %326, i32* %2, align 4
  br label %327

327:                                              ; preds = %325, %14
  %328 = load i32, i32* %2, align 4
  ret i32 %328
}

declare dso_local i8* @device_get_softc(i32*) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local %struct.msk_mii_data* @device_get_ivars(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @msk_sysctl_node(%struct.msk_if_softc*) #1

declare dso_local i32 @msk_txrx_dma_alloc(%struct.msk_if_softc*) #1

declare dso_local i32 @msk_rx_dma_jalloc(%struct.msk_if_softc*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32*) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #1

declare dso_local i32 @MSK_IF_LOCK(%struct.msk_if_softc*) #1

declare dso_local i32 @CSR_READ_1(%struct.msk_softc*, i64) #1

declare dso_local i32 @MSK_IF_UNLOCK(%struct.msk_if_softc*) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #1

declare dso_local i32 @mii_attach(i32*, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @msk_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
