; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.pci_xhci_softc* }
%struct.pci_xhci_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i64, %struct.pci_devinst* }
%struct.TYPE_2__ = type { i32, i32 }

@xhci_in_use = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pci_xhci controller already defined\0D\0A\00", align 1
@XHCI_MAX_DEVS = common dso_local global i32 0, align 4
@XHCI_CAPLEN = common dso_local global i64 0, align 8
@XHCI_MAX_SLOTS = common dso_local global i32 0, align 4
@XHCI_ERST_MAX = common dso_local global i32 0, align 4
@XHCI_STREAMS_MAX = common dso_local global i32 0, align 4
@XHCI_PORTREGS_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"pci_xhci dboff: 0x%x, rtsoff: 0x%x\0D\0A\00", align 1
@XHCI_STS_HCH = common dso_local global i32 0, align 4
@XHCI_PAGESIZE_4K = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_SERIALBUS = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_SERIALBUS_USB = common dso_local global i32 0, align 4
@PCIR_PROGIF = common dso_local global i32 0, align 4
@PCIP_SERIALBUS_USB_XHCI = common dso_local global i32 0, align 4
@PCI_USBREV = common dso_local global i32 0, align 4
@PCI_USB_REV_3_0 = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"pci_xhci pci_emu_alloc: %d\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @pci_xhci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pci_xhci_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @xhci_in_use, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @WPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %207

14:                                               ; preds = %3
  store i32 1, i32* @xhci_in_use, align 4
  %15 = call %struct.pci_xhci_softc* @calloc(i32 1, i32 72)
  store %struct.pci_xhci_softc* %15, %struct.pci_xhci_softc** %8, align 8
  %16 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %17 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %18 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %17, i32 0, i32 0
  store %struct.pci_xhci_softc* %16, %struct.pci_xhci_softc** %18, align 8
  %19 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %20 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %21 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %20, i32 0, i32 13
  store %struct.pci_devinst* %19, %struct.pci_devinst** %21, align 8
  %22 = load i32, i32* @XHCI_MAX_DEVS, align 4
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %23, 1
  %25 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %26 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %28 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @pci_xhci_parse_opts(%struct.pci_xhci_softc* %29, i8* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %199

35:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* @XHCI_CAPLEN, align 8
  %38 = call i32 @XHCI_SET_CAPLEN(i64 %37)
  %39 = call i32 @XHCI_SET_HCIVERSION(i32 256)
  %40 = or i32 %38, %39
  %41 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %42 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @XHCI_MAX_DEVS, align 4
  %44 = call i32 @XHCI_SET_HCSP1_MAXPORTS(i32 %43)
  %45 = call i32 @XHCI_SET_HCSP1_MAXINTR(i32 1)
  %46 = or i32 %44, %45
  %47 = load i32, i32* @XHCI_MAX_SLOTS, align 4
  %48 = call i32 @XHCI_SET_HCSP1_MAXSLOTS(i32 %47)
  %49 = or i32 %46, %48
  %50 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %51 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @XHCI_ERST_MAX, align 4
  %53 = call i32 @XHCI_SET_HCSP2_ERSTMAX(i32 %52)
  %54 = call i32 @XHCI_SET_HCSP2_IST(i32 4)
  %55 = or i32 %53, %54
  %56 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %57 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %59 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %58, i32 0, i32 12
  store i64 0, i64* %59, align 8
  %60 = call i32 @XHCI_SET_HCCP1_NSS(i32 1)
  %61 = call i32 @XHCI_SET_HCCP1_SPC(i32 1)
  %62 = or i32 %60, %61
  %63 = load i32, i32* @XHCI_STREAMS_MAX, align 4
  %64 = call i32 @XHCI_SET_HCCP1_MAXPSA(i32 %63)
  %65 = or i32 %62, %64
  %66 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %67 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = call i32 @XHCI_SET_HCCP2_LEC(i32 1)
  %69 = call i32 @XHCI_SET_HCCP2_U3C(i32 1)
  %70 = or i32 %68, %69
  %71 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %72 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* @XHCI_CAPLEN, align 8
  %74 = load i64, i64* @XHCI_PORTREGS_START, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* @XHCI_MAX_DEVS, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = add i64 %75, %78
  %80 = call i32 @XHCI_SET_DOORBELL(i64 %79)
  %81 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %82 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %84 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 3
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %36
  %89 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %90 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 3
  %93 = and i32 %92, -4
  %94 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %95 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %88, %36
  %97 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %98 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @XHCI_MAX_SLOTS, align 4
  %101 = add nsw i32 %100, 1
  %102 = mul nsw i32 %101, 32
  %103 = add nsw i32 %99, %102
  %104 = call i32 @XHCI_SET_RTSOFFSET(i32 %103)
  %105 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %106 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 8
  %107 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %108 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 31
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %96
  %113 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %114 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 31
  %117 = and i32 %116, -32
  %118 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %119 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %112, %96
  %121 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %122 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %125 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 @DPRINTF(i8* %128)
  %130 = load i32, i32* @XHCI_STS_HCH, align 4
  %131 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %132 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %131, i32 0, i32 11
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* @XHCI_PAGESIZE_4K, align 4
  %135 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %136 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %135, i32 0, i32 11
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 4
  %138 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %139 = call i32 @pci_xhci_reset(%struct.pci_xhci_softc* %138)
  %140 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %141 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 32
  %144 = add nsw i32 %143, 32
  %145 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %146 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %145, i32 0, i32 9
  store i32 %144, i32* %146, align 4
  %147 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %148 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %147, i32 0, i32 9
  %149 = load i32, i32* %148, align 4
  %150 = sdiv i32 %149, 4
  %151 = call i32 @XHCI_SET_HCCP1_XECP(i32 %150)
  %152 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %153 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %157 = load i32, i32* @PCIR_DEVICE, align 4
  %158 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %156, i32 %157, i32 7729)
  %159 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %160 = load i32, i32* @PCIR_VENDOR, align 4
  %161 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %159, i32 %160, i32 32902)
  %162 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %163 = load i32, i32* @PCIR_CLASS, align 4
  %164 = load i32, i32* @PCIC_SERIALBUS, align 4
  %165 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %162, i32 %163, i32 %164)
  %166 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %167 = load i32, i32* @PCIR_SUBCLASS, align 4
  %168 = load i32, i32* @PCIS_SERIALBUS_USB, align 4
  %169 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %166, i32 %167, i32 %168)
  %170 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %171 = load i32, i32* @PCIR_PROGIF, align 4
  %172 = load i32, i32* @PCIP_SERIALBUS_USB_XHCI, align 4
  %173 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %170, i32 %171, i32 %172)
  %174 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %175 = load i32, i32* @PCI_USBREV, align 4
  %176 = load i32, i32* @PCI_USB_REV_3_0, align 4
  %177 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %174, i32 %175, i32 %176)
  %178 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %179 = call i32 @pci_emul_add_msicap(%struct.pci_devinst* %178, i32 1)
  %180 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %181 = load i32, i32* @PCIBAR_MEM32, align 4
  %182 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %183 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 128
  %186 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %180, i32 0, i32 %181, i32 %185)
  %187 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %188 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 128
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = call i32 @DPRINTF(i8* %192)
  %194 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %195 = call i32 @pci_lintr_request(%struct.pci_devinst* %194)
  %196 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %197 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %196, i32 0, i32 10
  %198 = call i32 @pthread_mutex_init(i32* %197, i32* null)
  br label %199

199:                                              ; preds = %120, %34
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %8, align 8
  %204 = call i32 @free(%struct.pci_xhci_softc* %203)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i32, i32* %9, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %205, %12
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local %struct.pci_xhci_softc* @calloc(i32, i32) #1

declare dso_local i32 @pci_xhci_parse_opts(%struct.pci_xhci_softc*, i8*) #1

declare dso_local i32 @XHCI_SET_CAPLEN(i64) #1

declare dso_local i32 @XHCI_SET_HCIVERSION(i32) #1

declare dso_local i32 @XHCI_SET_HCSP1_MAXPORTS(i32) #1

declare dso_local i32 @XHCI_SET_HCSP1_MAXINTR(i32) #1

declare dso_local i32 @XHCI_SET_HCSP1_MAXSLOTS(i32) #1

declare dso_local i32 @XHCI_SET_HCSP2_ERSTMAX(i32) #1

declare dso_local i32 @XHCI_SET_HCSP2_IST(i32) #1

declare dso_local i32 @XHCI_SET_HCCP1_NSS(i32) #1

declare dso_local i32 @XHCI_SET_HCCP1_SPC(i32) #1

declare dso_local i32 @XHCI_SET_HCCP1_MAXPSA(i32) #1

declare dso_local i32 @XHCI_SET_HCCP2_LEC(i32) #1

declare dso_local i32 @XHCI_SET_HCCP2_U3C(i32) #1

declare dso_local i32 @XHCI_SET_DOORBELL(i64) #1

declare dso_local i32 @XHCI_SET_RTSOFFSET(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @pci_xhci_reset(%struct.pci_xhci_softc*) #1

declare dso_local i32 @XHCI_SET_HCCP1_XECP(i32) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_emul_add_msicap(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_emul_alloc_bar(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @pci_lintr_request(%struct.pci_devinst*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @free(%struct.pci_xhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
