; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_setup_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_setup_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i8*, i8*, i32, i32, %struct.TYPE_4__*, %struct.ifnet*, i32 }
%struct.TYPE_4__ = type { %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, %struct.vtnet_softc*, i32 }
%struct.TYPE_5__ = type { i64 }

@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot allocate ifnet structure\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@vtnet_init = common dso_local global i32 0, align 4
@vtnet_ioctl = common dso_local global i32 0, align 4
@vtnet_get_counter = common dso_local global i32 0, align 4
@vtnet_txq_mq_start = common dso_local global i32 0, align 4
@vtnet_qflush = common dso_local global i32 0, align 4
@IFM_IMASK = common dso_local global i32 0, align 4
@vtnet_ifmedia_upd = common dso_local global i32 0, align 4
@vtnet_ifmedia_sts = common dso_local global i32 0, align 4
@VTNET_MEDIATYPE = common dso_local global i32 0, align 4
@VIRTIO_NET_F_STATUS = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@VIRTIO_NET_F_CSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GSO = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@VTNET_FLAG_TSO_ECN = common dso_local global i32 0, align 4
@VIRTIO_NET_F_HOST_TSO4 = common dso_local global i32 0, align 4
@VIRTIO_NET_F_HOST_TSO6 = common dso_local global i32 0, align 4
@VIRTIO_NET_F_HOST_ECN = common dso_local global i32 0, align 4
@IFCAP_TSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_CSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_TSO4 = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_TSO6 = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@VTNET_FLAG_VLAN_FILTER = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@vlan_config = common dso_local global i32 0, align 4
@vtnet_register_vlan = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_FIRST = common dso_local global i32 0, align 4
@vlan_unconfig = common dso_local global i32 0, align 4
@vtnet_unregister_vlan = common dso_local global i32 0, align 4
@vtnet = common dso_local global i32 0, align 4
@vtnet_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_softc*)* @vtnet_setup_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_setup_interface(%struct.vtnet_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtnet_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %3, align 8
  %6 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @IFT_ETHER, align 4
  %10 = call %struct.ifnet* @if_alloc(i32 %9)
  %11 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %11, i32 0, i32 6
  store %struct.ifnet* %10, %struct.ifnet** %12, align 8
  store %struct.ifnet* %10, %struct.ifnet** %5, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %14 = icmp eq %struct.ifnet* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOSPC, align 4
  store i32 %18, i32* %2, align 4
  br label %256

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @device_get_name(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @device_get_unit(i32 %23)
  %25 = call i32 @if_initname(%struct.ifnet* %20, i32 %22, i32 %24)
  %26 = call i32 @IF_Gbps(i32 10)
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 12
  store i32 %26, i32* %28, align 8
  %29 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 11
  store %struct.vtnet_softc* %29, %struct.vtnet_softc** %31, align 8
  %32 = load i32, i32* @IFF_BROADCAST, align 4
  %33 = load i32, i32* @IFF_SIMPLEX, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IFF_MULTICAST, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @vtnet_init, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 10
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @vtnet_ioctl, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @vtnet_get_counter, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @vtnet_txq_mq_start, align 4
  %49 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @vtnet_qflush, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %55 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %54, i32 0, i32 4
  %56 = load i32, i32* @IFM_IMASK, align 4
  %57 = load i32, i32* @vtnet_ifmedia_upd, align 4
  %58 = load i32, i32* @vtnet_ifmedia_sts, align 4
  %59 = call i32 @ifmedia_init(i32* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %61 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %60, i32 0, i32 4
  %62 = load i32, i32* @VTNET_MEDIATYPE, align 4
  %63 = call i32 @ifmedia_add(i32* %61, i32 %62, i32 0, i32* null)
  %64 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %65 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %64, i32 0, i32 4
  %66 = load i32, i32* @VTNET_MEDIATYPE, align 4
  %67 = call i32 @ifmedia_set(i32* %65, i32 %66)
  %68 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %69 = call i32 @vtnet_get_hwaddr(%struct.vtnet_softc* %68)
  %70 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %71 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %72 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ether_ifattach(%struct.ifnet* %70, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @VIRTIO_NET_F_STATUS, align 4
  %77 = call i64 @virtio_with_feature(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %19
  %80 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %81 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %19
  %86 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 2
  store i32 4, i32* %87, align 8
  %88 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %89 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @VIRTIO_NET_F_CSUM, align 4
  %97 = call i64 @virtio_with_feature(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %172

99:                                               ; preds = %85
  %100 = load i32, i32* @IFCAP_TXCSUM, align 4
  %101 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %104 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @VIRTIO_NET_F_GSO, align 4
  %109 = call i64 @virtio_with_feature(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %99
  %112 = load i32, i32* @IFCAP_TSO4, align 4
  %113 = load i32, i32* @IFCAP_TSO6, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* @VTNET_FLAG_TSO_ECN, align 4
  %120 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %121 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %158

124:                                              ; preds = %99
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @VIRTIO_NET_F_HOST_TSO4, align 4
  %127 = call i64 @virtio_with_feature(i32 %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* @IFCAP_TSO4, align 4
  %131 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %132 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %124
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @VIRTIO_NET_F_HOST_TSO6, align 4
  %138 = call i64 @virtio_with_feature(i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* @IFCAP_TSO6, align 4
  %142 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %143 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %135
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @VIRTIO_NET_F_HOST_ECN, align 4
  %149 = call i64 @virtio_with_feature(i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i32, i32* @VTNET_FLAG_TSO_ECN, align 4
  %153 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %154 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %146
  br label %158

158:                                              ; preds = %157, %111
  %159 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %160 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @IFCAP_TSO, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %167 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %168 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %165, %158
  br label %172

172:                                              ; preds = %171, %85
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @VIRTIO_NET_F_GUEST_CSUM, align 4
  %175 = call i64 @virtio_with_feature(i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %201

177:                                              ; preds = %172
  %178 = load i32, i32* @IFCAP_RXCSUM, align 4
  %179 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %182 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @VIRTIO_NET_F_GUEST_TSO4, align 4
  %187 = call i64 @virtio_with_feature(i32 %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %177
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @VIRTIO_NET_F_GUEST_TSO6, align 4
  %192 = call i64 @virtio_with_feature(i32 %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %189, %177
  %195 = load i32, i32* @IFCAP_LRO, align 4
  %196 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %197 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %194, %189
  br label %201

201:                                              ; preds = %200, %172
  %202 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %203 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @IFCAP_HWCSUM, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %201
  %209 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %210 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %211 = or i32 %209, %210
  %212 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %213 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %208, %201
  %217 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %218 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %221 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  %222 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %223 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @VTNET_FLAG_VLAN_FILTER, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %248

228:                                              ; preds = %216
  %229 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %230 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %231 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* @vlan_config, align 4
  %235 = load i32, i32* @vtnet_register_vlan, align 4
  %236 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %237 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %238 = call i8* @EVENTHANDLER_REGISTER(i32 %234, i32 %235, %struct.vtnet_softc* %236, i32 %237)
  %239 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %240 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %239, i32 0, i32 2
  store i8* %238, i8** %240, align 8
  %241 = load i32, i32* @vlan_unconfig, align 4
  %242 = load i32, i32* @vtnet_unregister_vlan, align 4
  %243 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %244 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %245 = call i8* @EVENTHANDLER_REGISTER(i32 %241, i32 %242, %struct.vtnet_softc* %243, i32 %244)
  %246 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %247 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %246, i32 0, i32 1
  store i8* %245, i8** %247, align 8
  br label %248

248:                                              ; preds = %228, %216
  %249 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %250 = call i32 @vtnet_set_rx_process_limit(%struct.vtnet_softc* %249)
  %251 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %252 = call i32 @vtnet_set_tx_intr_threshold(%struct.vtnet_softc* %251)
  %253 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %254 = load i32, i32* @vtnet, align 4
  %255 = call i32 @DEBUGNET_SET(%struct.ifnet* %253, i32 %254)
  store i32 0, i32* %2, align 4
  br label %256

256:                                              ; preds = %248, %15
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IF_Gbps(i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @vtnet_get_hwaddr(%struct.vtnet_softc*) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i64 @virtio_with_feature(i32, i32) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, %struct.vtnet_softc*, i32) #1

declare dso_local i32 @vtnet_set_rx_process_limit(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_set_tx_intr_threshold(%struct.vtnet_softc*) #1

declare dso_local i32 @DEBUGNET_SET(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
