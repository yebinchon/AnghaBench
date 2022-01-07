; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_pci_ident = type { i32 }
%struct.rtwn_pci_softc = type { i32, i32*, i32*, i32, i32, %struct.rtwn_softc }
%struct.rtwn_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PCIe capability structure not found!\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"can't map mem space\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"can't map interrupt\0A\00", align 1
@PCIER_LINK_CTL = common dso_local global i64 0, align 8
@PCIEM_LINK_CTL_ASPMC = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"could not allocate Rx buffers, error %d\0A\00", align 1
@RTWN_PCI_NTXQUEUES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"could not allocate Tx buffers, error %d\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@rtwn_pci_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"can't establish interrupt, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtwn_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtwn_pci_ident*, align 8
  %5 = alloca %struct.rtwn_pci_softc*, align 8
  %6 = alloca %struct.rtwn_softc*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.rtwn_pci_softc* @device_get_softc(i32 %13)
  store %struct.rtwn_pci_softc* %14, %struct.rtwn_pci_softc** %5, align 8
  %15 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %16 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %15, i32 0, i32 5
  store %struct.rtwn_softc* %16, %struct.rtwn_softc** %6, align 8
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %18 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %17, i32 0, i32 2
  store %struct.ieee80211com* %18, %struct.ieee80211com** %7, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call %struct.rtwn_pci_ident* @rtwn_pci_probe_sub(i32 %19)
  store %struct.rtwn_pci_ident* %20, %struct.rtwn_pci_ident** %4, align 8
  %21 = load %struct.rtwn_pci_ident*, %struct.rtwn_pci_ident** %4, align 8
  %22 = icmp eq %struct.rtwn_pci_ident* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %194

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @PCIY_EXPRESS, align 4
  %28 = call i32 @pci_find_cap(i32 %26, i32 %27, i32* %9)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %2, align 4
  br label %194

35:                                               ; preds = %25
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @pci_enable_busmaster(i32 %36)
  %38 = call i32 @PCIR_BAR(i32 2)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SYS_RES_MEMORY, align 4
  %41 = load i32, i32* @RF_ACTIVE, align 4
  %42 = call i8* @bus_alloc_resource_any(i32 %39, i32 %40, i32* %12, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %45 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %47 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  store i32 %53, i32* %2, align 4
  br label %194

54:                                               ; preds = %35
  %55 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %56 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @rman_get_bustag(i32* %57)
  %59 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %60 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %62 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @rman_get_bushandle(i32* %63)
  %65 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %66 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  store i32 1, i32* %12, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @pci_alloc_msi(i32 %67, i32* %12)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  br label %72

71:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @SYS_RES_IRQ, align 4
  %75 = load i32, i32* @RF_ACTIVE, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @RF_SHAREABLE, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i32 [ 0, %78 ], [ %80, %79 ]
  %83 = or i32 %75, %82
  %84 = call i8* @bus_alloc_resource_any(i32 %73, i32 %74, i32* %12, i32 %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %87 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  %88 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %89 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load i32, i32* %3, align 4
  %94 = call i32 (i32, i8*, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %190

95:                                               ; preds = %81
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* @PCIER_LINK_CTL, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @pci_read_config(i32 %96, i64 %100, i32 4)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* @PCIEM_LINK_CTL_ASPMC, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @PCIER_LINK_CTL, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @pci_write_config(i32 %106, i64 %110, i32 %111, i32 4)
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %115 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @device_get_nameunit(i32 %116)
  %118 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %121 = call i32 @rtwn_sysctlattach(%struct.rtwn_softc* %120)
  %122 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %123 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %122, i32 0, i32 0
  %124 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %128 = load i32, i32* @MTX_DEF, align 4
  %129 = call i32 @mtx_init(i32* %123, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %131 = call i32 @rtwn_pci_attach_methods(%struct.rtwn_softc* %130)
  %132 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %133 = load %struct.rtwn_pci_ident*, %struct.rtwn_pci_ident** %4, align 8
  %134 = getelementptr inbounds %struct.rtwn_pci_ident, %struct.rtwn_pci_ident* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @rtwn_pci_attach_private(%struct.rtwn_pci_softc* %132, i32 %135)
  %137 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %138 = call i32 @rtwn_pci_alloc_rx_list(%struct.rtwn_softc* %137)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %95
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  br label %190

145:                                              ; preds = %95
  store i32 0, i32* %10, align 4
  br label %146

146:                                              ; preds = %161, %145
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @RTWN_PCI_NTXQUEUES, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @rtwn_pci_alloc_tx_list(%struct.rtwn_softc* %151, i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* %11, align 4
  %159 = call i32 (i32, i8*, ...) @device_printf(i32 %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  br label %190

160:                                              ; preds = %150
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %146

164:                                              ; preds = %146
  %165 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %166 = call i32 @rtwn_attach(%struct.rtwn_softc* %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %190

170:                                              ; preds = %164
  %171 = load i32, i32* %3, align 4
  %172 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %173 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* @INTR_TYPE_NET, align 4
  %176 = load i32, i32* @INTR_MPSAFE, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @rtwn_pci_intr, align 4
  %179 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %180 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %181 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %180, i32 0, i32 0
  %182 = call i32 @bus_setup_intr(i32 %171, i32* %174, i32 %177, i32* null, i32 %178, %struct.rtwn_softc* %179, i32* %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %170
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* %11, align 4
  %188 = call i32 (i32, i8*, ...) @device_printf(i32 %186, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  br label %190

189:                                              ; preds = %170
  store i32 0, i32* %2, align 4
  br label %194

190:                                              ; preds = %185, %169, %156, %141, %92
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @rtwn_pci_detach(i32 %191)
  %193 = load i32, i32* @ENXIO, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %190, %189, %50, %31, %23
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.rtwn_pci_softc* @device_get_softc(i32) #1

declare dso_local %struct.rtwn_pci_ident* @rtwn_pci_probe_sub(i32) #1

declare dso_local i32 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @rtwn_sysctlattach(%struct.rtwn_softc*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @rtwn_pci_attach_methods(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_pci_attach_private(%struct.rtwn_pci_softc*, i32) #1

declare dso_local i32 @rtwn_pci_alloc_rx_list(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_pci_alloc_tx_list(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_attach(%struct.rtwn_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.rtwn_softc*, i32*) #1

declare dso_local i32 @rtwn_pci_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
