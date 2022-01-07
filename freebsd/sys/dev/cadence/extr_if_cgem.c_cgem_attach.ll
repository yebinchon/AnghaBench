; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32*, i32*, i64, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ref-clock-num\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"could not allocate memory resources.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"could not allocate interrupt resource.\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"could not allocate ifnet structure\0A\00", align 1
@IF_CGEM_NAME = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@cgem_init = common dso_local global i32 0, align 4
@cgem_ioctl = common dso_local global i32 0, align 4
@cgem_start = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_HWCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@CGEM_NUM_TX_DESCS = common dso_local global i32 0, align 4
@DEFAULT_NUM_RX_BUFS = common dso_local global i32 0, align 4
@cgem_ifmedia_upd = common dso_local global i32 0, align 4
@cgem_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"could not set up dma mem for descs.\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_EXCL = common dso_local global i32 0, align 4
@cgem_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"could not set interrupt handler.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cgem_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgem_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgem_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.cgem_softc* @device_get_softc(i32 %13)
  store %struct.cgem_softc* %14, %struct.cgem_softc** %4, align 8
  store i32* null, i32** %5, align 8
  %15 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %21 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 8
  %22 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %23 = call i32 @CGEM_LOCK_INIT(%struct.cgem_softc* %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ofw_bus_get_node(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %27 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %26, i32 0, i32 10
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @OF_getprop(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %7, i32 4)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @fdt32_to_cpu(i32 %32)
  %34 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %35 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %34, i32 0, i32 10
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %1
  store i32 0, i32* %8, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = load i32, i32* @RF_ACTIVE, align 4
  %40 = call i8* @bus_alloc_resource_any(i32 %37, i32 %38, i32* %8, i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %43 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %42, i32 0, i32 9
  store i32* %41, i32** %43, align 8
  %44 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %45 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %44, i32 0, i32 9
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %216

52:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SYS_RES_IRQ, align 4
  %55 = load i32, i32* @RF_ACTIVE, align 4
  %56 = call i8* @bus_alloc_resource_any(i32 %53, i32 %54, i32* %8, i32 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %59 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %58, i32 0, i32 2
  store i32* %57, i32** %59, align 8
  %60 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %61 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @cgem_detach(i32 %67)
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %216

70:                                               ; preds = %52
  %71 = load i32, i32* @IFT_ETHER, align 4
  %72 = call i32* @if_alloc(i32 %71)
  %73 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %74 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %73, i32 0, i32 8
  store i32* %72, i32** %74, align 8
  store i32* %72, i32** %5, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @cgem_detach(i32 %80)
  %82 = load i32, i32* @ENOMEM, align 4
  store i32 %82, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %216

83:                                               ; preds = %70
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %86 = call i32 @if_setsoftc(i32* %84, %struct.cgem_softc* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @IF_CGEM_NAME, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @device_get_unit(i32 %89)
  %91 = call i32 @if_initname(i32* %87, i32 %88, i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* @IFF_BROADCAST, align 4
  %94 = load i32, i32* @IFF_SIMPLEX, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @IFF_MULTICAST, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @if_setflags(i32* %92, i32 %97)
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* @cgem_init, align 4
  %101 = call i32 @if_setinitfn(i32* %99, i32 %100)
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* @cgem_ioctl, align 4
  %104 = call i32 @if_setioctlfn(i32* %102, i32 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* @cgem_start, align 4
  %107 = call i32 @if_setstartfn(i32* %105, i32 %106)
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* @IFCAP_HWCSUM, align 4
  %110 = load i32, i32* @IFCAP_HWCSUM_IPV6, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @if_setcapabilitiesbit(i32* %108, i32 %115, i32 0)
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* @CGEM_NUM_TX_DESCS, align 4
  %119 = call i32 @if_setsendqlen(i32* %117, i32 %118)
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @if_setsendqready(i32* %120)
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @if_sethwassist(i32* %122, i32 0)
  %124 = load i32*, i32** %5, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @if_getcapabilities(i32* %125)
  %127 = load i32, i32* @IFCAP_HWCSUM, align 4
  %128 = load i32, i32* @IFCAP_HWCSUM_IPV6, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %131 = or i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = and i32 %126, %132
  %134 = call i32 @if_setcapenable(i32* %124, i32 %133)
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @if_getflags(i32* %135)
  %137 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %138 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @DEFAULT_NUM_RX_BUFS, align 4
  %140 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %141 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 4
  %142 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %143 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %145 = call i32 @CGEM_LOCK(%struct.cgem_softc* %144)
  %146 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %147 = call i32 @cgem_reset(%struct.cgem_softc* %146)
  %148 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %149 = call i32 @CGEM_UNLOCK(%struct.cgem_softc* %148)
  %150 = load i32, i32* %3, align 4
  %151 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %152 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %151, i32 0, i32 5
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* @cgem_ifmedia_upd, align 4
  %155 = load i32, i32* @cgem_ifmedia_sts, align 4
  %156 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %157 = load i32, i32* @MII_PHY_ANY, align 4
  %158 = load i32, i32* @MII_OFFSET_ANY, align 4
  %159 = call i32 @mii_attach(i32 %150, i32* %152, i32* %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 0)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %83
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @device_printf(i32 %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @cgem_detach(i32 %165)
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %216

168:                                              ; preds = %83
  %169 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %170 = call i32 @cgem_setup_descs(%struct.cgem_softc* %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @device_printf(i32 %174, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @cgem_detach(i32 %176)
  %178 = load i32, i32* @ENOMEM, align 4
  store i32 %178, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %216

179:                                              ; preds = %168
  %180 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %181 = call i32 @cgem_get_mac(%struct.cgem_softc* %180, i32* %18)
  %182 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %183 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %182, i32 0, i32 4
  %184 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %185 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %184, i32 0, i32 3
  %186 = call i32 @callout_init_mtx(i32* %183, i32* %185, i32 0)
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @ether_ifattach(i32* %187, i32* %18)
  %189 = load i32, i32* %3, align 4
  %190 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %191 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* @INTR_TYPE_NET, align 4
  %194 = load i32, i32* @INTR_MPSAFE, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @INTR_EXCL, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @cgem_intr, align 4
  %199 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %200 = load %struct.cgem_softc*, %struct.cgem_softc** %4, align 8
  %201 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %200, i32 0, i32 1
  %202 = call i32 @bus_setup_intr(i32 %189, i32* %192, i32 %197, i32* null, i32 %198, %struct.cgem_softc* %199, i32* %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %179
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @device_printf(i32 %206, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @ether_ifdetach(i32* %208)
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @cgem_detach(i32 %210)
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %216

213:                                              ; preds = %179
  %214 = load i32, i32* %3, align 4
  %215 = call i32 @cgem_add_sysctls(i32 %214)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %216

216:                                              ; preds = %213, %205, %173, %162, %77, %64, %48
  %217 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local %struct.cgem_softc* @device_get_softc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CGEM_LOCK_INIT(%struct.cgem_softc*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @fdt32_to_cpu(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cgem_detach(i32) #1

declare dso_local i32* @if_alloc(i32) #1

declare dso_local i32 @if_setsoftc(i32*, %struct.cgem_softc*) #1

declare dso_local i32 @if_initname(i32*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @if_setflags(i32*, i32) #1

declare dso_local i32 @if_setinitfn(i32*, i32) #1

declare dso_local i32 @if_setioctlfn(i32*, i32) #1

declare dso_local i32 @if_setstartfn(i32*, i32) #1

declare dso_local i32 @if_setcapabilitiesbit(i32*, i32, i32) #1

declare dso_local i32 @if_setsendqlen(i32*, i32) #1

declare dso_local i32 @if_setsendqready(i32*) #1

declare dso_local i32 @if_sethwassist(i32*, i32) #1

declare dso_local i32 @if_setcapenable(i32*, i32) #1

declare dso_local i32 @if_getcapabilities(i32*) #1

declare dso_local i32 @if_getflags(i32*) #1

declare dso_local i32 @CGEM_LOCK(%struct.cgem_softc*) #1

declare dso_local i32 @cgem_reset(%struct.cgem_softc*) #1

declare dso_local i32 @CGEM_UNLOCK(%struct.cgem_softc*) #1

declare dso_local i32 @mii_attach(i32, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cgem_setup_descs(%struct.cgem_softc*) #1

declare dso_local i32 @cgem_get_mac(%struct.cgem_softc*, i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @ether_ifattach(i32*, i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.cgem_softc*, i32*) #1

declare dso_local i32 @ether_ifdetach(i32*) #1

declare dso_local i32 @cgem_add_sysctls(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
