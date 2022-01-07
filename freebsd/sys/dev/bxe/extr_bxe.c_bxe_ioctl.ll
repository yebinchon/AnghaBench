; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32, i32 }

@ETH_MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@MJUM9BYTES = common dso_local global i32 0, align 4
@ETH_OVERHEAD = common dso_local global i32 0, align 4
@IP_HEADER_ALIGNMENT_PADDING = common dso_local global i32 0, align 4
@DBG_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Received SIOCSIFMTU ioctl (mtu=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unsupported MTU size %d (range is %d-%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Received SIOCSIFFLAGS ioctl\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@BXE_STATE_DISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Received SIOCADDMULTI/SIOCDELMULTI ioctl\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Received SIOCSIFCAP ioctl (mask=0x%08x)\0A\00", align 1
@IFCAP_LRO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Turning LRO %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"Turning TXCSUM %s\0A\00", align 1
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Turning RXCSUM %s\0A\00", align 1
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"Turning TSO4 %s\0A\00", align 1
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"Turning TSO6 %s\0A\00", align 1
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"Turning VLAN_HWTSO %s\0A\00", align 1
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"Changing VLAN_HWCSUM is not supported!\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [37 x i8] c"Changing VLAN_MTU is not supported!\0A\00", align 1
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [43 x i8] c"Changing VLAN_HWTAGGING is not supported!\0A\00", align 1
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [42 x i8] c"Changing VLAN_HWFILTER is not supported!\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"Received SIOCSIFMEDIA/SIOCGIFMEDIA ioctl (cmd=%lu)\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Received Unknown Ioctl (cmd=%lu)\0A\00", align 1
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [44 x i8] c"Re-initializing hardware from IOCTL change\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @bxe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_ioctl(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.bxe_softc* @if_getsoftc(i32 %14)
  store %struct.bxe_softc* %15, %struct.bxe_softc** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @ETH_MIN_PACKET_SIZE, align 4
  %19 = load i32, i32* @ETH_HLEN, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @MJUM9BYTES, align 4
  %22 = load i32, i32* @ETH_OVERHEAD, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* @IP_HEADER_ALIGNMENT_PADDING, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %358 [
    i32 128, label %27
    i32 130, label %76
    i32 134, label %122
    i32 133, label %122
    i32 131, label %139
    i32 129, label %346
    i32 132, label %346
  ]

27:                                               ; preds = %3
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %29 = load i32, i32* @DBG_IOCTL, align 4
  %30 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %28, i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %35 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %38 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %368

42:                                               ; preds = %27
  %43 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %44 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %50 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48, %42
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %56 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %57 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %11, align 4
  br label %368

63:                                               ; preds = %48
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %65 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %64, i32 0, i32 0
  %66 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %67 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @atomic_store_rel_int(i32* %65, i64 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %73 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @if_setmtu(i32 %71, i32 %74)
  store i32 1, i32* %10, align 4
  br label %368

76:                                               ; preds = %3
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %78 = load i32, i32* @DBG_IOCTL, align 4
  %79 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %77, i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %81 = call i32 @BXE_CORE_LOCK(%struct.bxe_softc* %80)
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @if_getflags(i32 %82)
  %84 = load i32, i32* @IFF_UP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %76
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @if_getdrvflags(i32 %88)
  %90 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %95 = call i32 @bxe_set_rx_mode(%struct.bxe_softc* %94)
  br label %106

96:                                               ; preds = %87
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %98 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BXE_STATE_DISABLED, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %104 = call i32 @bxe_init_locked(%struct.bxe_softc* %103)
  br label %105

105:                                              ; preds = %102, %96
  br label %106

106:                                              ; preds = %105, %93
  br label %119

107:                                              ; preds = %76
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @if_getdrvflags(i32 %108)
  %110 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %115 = call i32 @bxe_periodic_stop(%struct.bxe_softc* %114)
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %117 = call i32 @bxe_stop_locked(%struct.bxe_softc* %116)
  br label %118

118:                                              ; preds = %113, %107
  br label %119

119:                                              ; preds = %118, %106
  %120 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %121 = call i32 @BXE_CORE_UNLOCK(%struct.bxe_softc* %120)
  br label %368

122:                                              ; preds = %3, %3
  %123 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %124 = load i32, i32* @DBG_IOCTL, align 4
  %125 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %123, i32 %124, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @if_getdrvflags(i32 %126)
  %128 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %122
  %132 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %133 = call i32 @BXE_CORE_LOCK(%struct.bxe_softc* %132)
  %134 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %135 = call i32 @bxe_set_rx_mode(%struct.bxe_softc* %134)
  %136 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %137 = call i32 @BXE_CORE_UNLOCK(%struct.bxe_softc* %136)
  br label %138

138:                                              ; preds = %131, %122
  br label %368

139:                                              ; preds = %3
  %140 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %141 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @if_getcapenable(i32 %143)
  %145 = xor i32 %142, %144
  store i32 %145, i32* %9, align 4
  %146 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %147 = load i32, i32* @DBG_IOCTL, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %146, i32 %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @IFCAP_LRO, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %139
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @IFCAP_LRO, align 4
  %157 = call i32 @if_togglecapenable(i32 %155, i32 %156)
  %158 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %159 = load i32, i32* @DBG_IOCTL, align 4
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @if_getcapenable(i32 %160)
  %162 = load i32, i32* @IFCAP_LRO, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %167 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %158, i32 %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %166)
  store i32 1, i32* %10, align 4
  br label %168

168:                                              ; preds = %154, %139
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @IFCAP_TXCSUM, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %210

173:                                              ; preds = %168
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @IFCAP_TXCSUM, align 4
  %176 = call i32 @if_togglecapenable(i32 %174, i32 %175)
  %177 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %178 = load i32, i32* @DBG_IOCTL, align 4
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @if_getcapenable(i32 %179)
  %181 = load i32, i32* @IFCAP_TXCSUM, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %186 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %177, i32 %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %185)
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @if_getcapenable(i32 %187)
  %189 = load i32, i32* @IFCAP_TXCSUM, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %173
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* @CSUM_IP, align 4
  %195 = load i32, i32* @CSUM_TCP, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @CSUM_UDP, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @CSUM_TSO, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %204 = or i32 %202, %203
  %205 = call i32 @if_sethwassistbits(i32 %193, i32 %204, i32 0)
  br label %209

206:                                              ; preds = %173
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @if_clearhwassist(i32 %207)
  br label %209

209:                                              ; preds = %206, %192
  br label %210

210:                                              ; preds = %209, %168
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* @IFCAP_RXCSUM, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %252

215:                                              ; preds = %210
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @IFCAP_RXCSUM, align 4
  %218 = call i32 @if_togglecapenable(i32 %216, i32 %217)
  %219 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %220 = load i32, i32* @DBG_IOCTL, align 4
  %221 = load i32, i32* %4, align 4
  %222 = call i32 @if_getcapenable(i32 %221)
  %223 = load i32, i32* @IFCAP_RXCSUM, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %228 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %219, i32 %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %227)
  %229 = load i32, i32* %4, align 4
  %230 = call i32 @if_getcapenable(i32 %229)
  %231 = load i32, i32* @IFCAP_RXCSUM, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %248

234:                                              ; preds = %215
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @CSUM_IP, align 4
  %237 = load i32, i32* @CSUM_TCP, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @CSUM_UDP, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @CSUM_TSO, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %246 = or i32 %244, %245
  %247 = call i32 @if_sethwassistbits(i32 %235, i32 %246, i32 0)
  br label %251

248:                                              ; preds = %215
  %249 = load i32, i32* %4, align 4
  %250 = call i32 @if_clearhwassist(i32 %249)
  br label %251

251:                                              ; preds = %248, %234
  br label %252

252:                                              ; preds = %251, %210
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @IFCAP_TSO4, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %271

257:                                              ; preds = %252
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* @IFCAP_TSO4, align 4
  %260 = call i32 @if_togglecapenable(i32 %258, i32 %259)
  %261 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %262 = load i32, i32* @DBG_IOCTL, align 4
  %263 = load i32, i32* %4, align 4
  %264 = call i32 @if_getcapenable(i32 %263)
  %265 = load i32, i32* @IFCAP_TSO4, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %270 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %261, i32 %262, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %269)
  br label %271

271:                                              ; preds = %257, %252
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* @IFCAP_TSO6, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %290

276:                                              ; preds = %271
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* @IFCAP_TSO6, align 4
  %279 = call i32 @if_togglecapenable(i32 %277, i32 %278)
  %280 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %281 = load i32, i32* @DBG_IOCTL, align 4
  %282 = load i32, i32* %4, align 4
  %283 = call i32 @if_getcapenable(i32 %282)
  %284 = load i32, i32* @IFCAP_TSO6, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  %287 = zext i1 %286 to i64
  %288 = select i1 %286, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %289 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %280, i32 %281, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %288)
  br label %290

290:                                              ; preds = %276, %271
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %309

295:                                              ; preds = %290
  %296 = load i32, i32* %4, align 4
  %297 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %298 = call i32 @if_togglecapenable(i32 %296, i32 %297)
  %299 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %300 = load i32, i32* @DBG_IOCTL, align 4
  %301 = load i32, i32* %4, align 4
  %302 = call i32 @if_getcapenable(i32 %301)
  %303 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  %306 = zext i1 %305 to i64
  %307 = select i1 %305, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %308 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %299, i32 %300, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %307)
  br label %309

309:                                              ; preds = %295, %290
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %309
  %315 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %316 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %315, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %317 = load i32, i32* @EINVAL, align 4
  store i32 %317, i32* %11, align 4
  br label %318

318:                                              ; preds = %314, %309
  %319 = load i32, i32* %9, align 4
  %320 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %318
  %324 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %325 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %324, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %326 = load i32, i32* @EINVAL, align 4
  store i32 %326, i32* %11, align 4
  br label %327

327:                                              ; preds = %323, %318
  %328 = load i32, i32* %9, align 4
  %329 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %327
  %333 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %334 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %333, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0))
  %335 = load i32, i32* @EINVAL, align 4
  store i32 %335, i32* %11, align 4
  br label %336

336:                                              ; preds = %332, %327
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %336
  %342 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %343 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %342, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  %344 = load i32, i32* @EINVAL, align 4
  store i32 %344, i32* %11, align 4
  br label %345

345:                                              ; preds = %341, %336
  br label %368

346:                                              ; preds = %3, %3
  %347 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %348 = load i32, i32* @DBG_IOCTL, align 4
  %349 = load i32, i32* %5, align 4
  %350 = and i32 %349, 255
  %351 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %347, i32 %348, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i32 %350)
  %352 = load i32, i32* %4, align 4
  %353 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %354 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %355 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %354, i32 0, i32 2
  %356 = load i32, i32* %5, align 4
  %357 = call i32 @ifmedia_ioctl(i32 %352, %struct.ifreq* %353, i32* %355, i32 %356)
  store i32 %357, i32* %11, align 4
  br label %368

358:                                              ; preds = %3
  %359 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %360 = load i32, i32* @DBG_IOCTL, align 4
  %361 = load i32, i32* %5, align 4
  %362 = and i32 %361, 255
  %363 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %359, i32 %360, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 %362)
  %364 = load i32, i32* %4, align 4
  %365 = load i32, i32* %5, align 4
  %366 = load i64, i64* %6, align 8
  %367 = call i32 @ether_ioctl(i32 %364, i32 %365, i64 %366)
  store i32 %367, i32* %11, align 4
  br label %368

368:                                              ; preds = %358, %346, %345, %138, %119, %63, %54, %41
  %369 = load i32, i32* %10, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %395

371:                                              ; preds = %368
  %372 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %373 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @if_getdrvflags(i32 %374)
  %376 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %395

379:                                              ; preds = %371
  %380 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %381 = load i32, i32* @DBG_LOAD, align 4
  %382 = load i32, i32* @DBG_IOCTL, align 4
  %383 = or i32 %381, %382
  %384 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %380, i32 %383, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0))
  %385 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %386 = call i32 @bxe_periodic_stop(%struct.bxe_softc* %385)
  %387 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %388 = call i32 @BXE_CORE_LOCK(%struct.bxe_softc* %387)
  %389 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %390 = call i32 @bxe_stop_locked(%struct.bxe_softc* %389)
  %391 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %392 = call i32 @bxe_init_locked(%struct.bxe_softc* %391)
  %393 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %394 = call i32 @BXE_CORE_UNLOCK(%struct.bxe_softc* %393)
  br label %395

395:                                              ; preds = %379, %371, %368
  %396 = load i32, i32* %11, align 4
  ret i32 %396
}

declare dso_local %struct.bxe_softc* @if_getsoftc(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i64) #1

declare dso_local i32 @if_setmtu(i32, i32) #1

declare dso_local i32 @BXE_CORE_LOCK(%struct.bxe_softc*) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @bxe_set_rx_mode(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_init_locked(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_periodic_stop(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_stop_locked(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_CORE_UNLOCK(%struct.bxe_softc*) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @if_togglecapenable(i32, i32) #1

declare dso_local i32 @if_sethwassistbits(i32, i32, i32) #1

declare dso_local i32 @if_clearhwassist(i32) #1

declare dso_local i32 @ifmedia_ioctl(i32, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
