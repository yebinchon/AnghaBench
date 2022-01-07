; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_start_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_start_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i32, i32, i32, i64, i32, %struct.TYPE_9__, i32 (i32, i32, i32)*, %struct.TYPE_6__, i32, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.usb_page_search = type { i64, %struct.xhci_hw_root* }
%struct.xhci_hw_root = type { %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i8**, i8** }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.xhci_dev_ctx_addr = type { %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i8**, i8** }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"CONFIG=0x%08x -> 0x%08x\0A\00", align 1
@oper = common dso_local global i32 0, align 4
@XHCI_CONFIG = common dso_local global i32 0, align 4
@XHCI_USBSTS = common dso_local global i32 0, align 4
@XHCI_DNCTRL = common dso_local global i32 0, align 4
@XHCI_DCBAAP_LO = common dso_local global i32 0, align 4
@XHCI_DCBAAP_HI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ERSTSZ=0x%08x -> 0x%08x\0A\00", align 1
@runt = common dso_local global i32 0, align 4
@XHCI_MAX_EVENTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"ERDP(0)=0x%016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ERSTBA(0)=0x%016llx\0A\00", align 1
@XHCI_IMAN_INTR_ENA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"CRCR=0x%016llx\0A\00", align 1
@XHCI_CRCR_LO = common dso_local global i32 0, align 4
@XHCI_CRCR_LO_RCS = common dso_local global i32 0, align 4
@XHCI_CRCR_HI = common dso_local global i32 0, align 4
@XHCI_MAX_COMMANDS = common dso_local global i32 0, align 4
@xhci_iterate_hw_softc = common dso_local global i32 0, align 4
@XHCI_USBCMD = common dso_local global i32 0, align 4
@XHCI_CMD_RS = common dso_local global i32 0, align 4
@XHCI_CMD_INTE = common dso_local global i32 0, align 4
@XHCI_CMD_HSEE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@XHCI_STS_HCH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Run timeout.\0A\00", align 1
@USB_ERR_IOERROR = common dso_local global i64 0, align 8
@xhciroute = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xhci_start_controller(%struct.xhci_softc* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca %struct.usb_page_search, align 8
  %5 = alloca %struct.xhci_hw_root*, align 8
  %6 = alloca %struct.xhci_dev_ctx_addr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.usb_page_search, align 8
  store %struct.xhci_softc* %0, %struct.xhci_softc** %3, align 8
  %12 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %14 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %16 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %15, i32 0, i32 10
  store i64 0, i64* %16, align 8
  %17 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %18 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %20 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %22 = call i64 @xhci_reset_controller(%struct.xhci_softc* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %2, align 8
  br label %330

27:                                               ; preds = %1
  %28 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %29 = load i32, i32* @oper, align 4
  %30 = load i32, i32* @XHCI_CONFIG, align 4
  %31 = call i32 @XREAD4(%struct.xhci_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %33 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %37 = load i32, i32* @oper, align 4
  %38 = load i32, i32* @XHCI_CONFIG, align 4
  %39 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %40 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @XWRITE4(%struct.xhci_softc* %36, i32 %37, i32 %38, i32 %41)
  %43 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %44 = load i32, i32* @oper, align 4
  %45 = load i32, i32* @XHCI_USBSTS, align 4
  %46 = call i32 @XREAD4(%struct.xhci_softc* %43, i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %48 = load i32, i32* @oper, align 4
  %49 = load i32, i32* @XHCI_USBSTS, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @XWRITE4(%struct.xhci_softc* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %53 = load i32, i32* @oper, align 4
  %54 = load i32, i32* @XHCI_DNCTRL, align 4
  %55 = call i32 @XWRITE4(%struct.xhci_softc* %52, i32 %53, i32 %54, i32 0)
  %56 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %57 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = call i32 @usbd_get_page(i32* %58, i32 0, %struct.usb_page_search* %4)
  %60 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %61 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %60, align 8
  %62 = bitcast %struct.xhci_hw_root* %61 to %struct.xhci_dev_ctx_addr*
  store %struct.xhci_dev_ctx_addr* %62, %struct.xhci_dev_ctx_addr** %6, align 8
  %63 = load %struct.xhci_dev_ctx_addr*, %struct.xhci_dev_ctx_addr** %6, align 8
  %64 = bitcast %struct.xhci_dev_ctx_addr* %63 to %struct.xhci_hw_root*
  %65 = call i32 @memset(%struct.xhci_hw_root* %64, i32 0, i32 40)
  %66 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %8, align 8
  %68 = load i8**, i8*** getelementptr inbounds (%struct.xhci_dev_ctx_addr, %struct.xhci_dev_ctx_addr* null, i32 0, i32 3), align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = ptrtoint i8** %69 to i64
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i8* @htole64(i64 %73)
  %75 = load %struct.xhci_dev_ctx_addr*, %struct.xhci_dev_ctx_addr** %6, align 8
  %76 = getelementptr inbounds %struct.xhci_dev_ctx_addr, %struct.xhci_dev_ctx_addr* %75, i32 0, i32 4
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  store i8* %74, i8** %78, align 8
  store i64 0, i64* %10, align 8
  br label %79

79:                                               ; preds = %101, %27
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %82 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %79
  %86 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %87 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = call i32 @usbd_get_page(i32* %91, i32 0, %struct.usb_page_search* %11)
  %93 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %11, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i8* @htole64(i64 %94)
  %96 = load %struct.xhci_dev_ctx_addr*, %struct.xhci_dev_ctx_addr** %6, align 8
  %97 = getelementptr inbounds %struct.xhci_dev_ctx_addr, %struct.xhci_dev_ctx_addr* %96, i32 0, i32 3
  %98 = load i8**, i8*** %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  store i8* %95, i8** %100, align 8
  br label %101

101:                                              ; preds = %85
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %10, align 8
  br label %79

104:                                              ; preds = %79
  %105 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %8, align 8
  %107 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %108 = load i32, i32* @oper, align 4
  %109 = load i32, i32* @XHCI_DCBAAP_LO, align 4
  %110 = load i64, i64* %8, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @XWRITE4(%struct.xhci_softc* %107, i32 %108, i32 %109, i32 %111)
  %113 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %114 = load i32, i32* @oper, align 4
  %115 = load i32, i32* @XHCI_DCBAAP_HI, align 4
  %116 = load i64, i64* %8, align 8
  %117 = lshr i64 %116, 32
  %118 = trunc i64 %117 to i32
  %119 = call i32 @XWRITE4(%struct.xhci_softc* %113, i32 %114, i32 %115, i32 %118)
  %120 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %121 = load i32, i32* @oper, align 4
  %122 = load i32, i32* @XHCI_DCBAAP_LO, align 4
  %123 = load i64, i64* %8, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @XWRITE4(%struct.xhci_softc* %120, i32 %121, i32 %122, i32 %124)
  %126 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %127 = load i32, i32* @oper, align 4
  %128 = load i32, i32* @XHCI_DCBAAP_HI, align 4
  %129 = load i64, i64* %8, align 8
  %130 = lshr i64 %129, 32
  %131 = trunc i64 %130 to i32
  %132 = call i32 @XWRITE4(%struct.xhci_softc* %126, i32 %127, i32 %128, i32 %131)
  %133 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %134 = load i32, i32* @runt, align 4
  %135 = call i32 @XHCI_ERSTSZ(i32 0)
  %136 = call i32 @XREAD4(%struct.xhci_softc* %133, i32 %134, i32 %135)
  %137 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %138 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %136, i32 %139)
  %141 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %142 = load i32, i32* @runt, align 4
  %143 = call i32 @XHCI_ERSTSZ(i32 0)
  %144 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %145 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @XHCI_ERSTS_SET(i32 %146)
  %148 = call i32 @XWRITE4(%struct.xhci_softc* %141, i32 %142, i32 %143, i32 %147)
  %149 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %150 = load i32, i32* @runt, align 4
  %151 = call i32 @XHCI_IMOD(i32 0)
  %152 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %153 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @XWRITE4(%struct.xhci_softc* %149, i32 %150, i32 %151, i32 %154)
  %156 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %157 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = call i32 @usbd_get_page(i32* %158, i32 0, %struct.usb_page_search* %4)
  %160 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %161 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %160, align 8
  store %struct.xhci_hw_root* %161, %struct.xhci_hw_root** %5, align 8
  %162 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %8, align 8
  %164 = load i32*, i32** getelementptr inbounds (%struct.xhci_hw_root, %struct.xhci_hw_root* null, i32 0, i32 2), align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = ptrtoint i32* %165 to i64
  %167 = load i64, i64* %8, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %8, align 8
  %169 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %5, align 8
  %170 = call i32 @memset(%struct.xhci_hw_root* %169, i32 0, i32 40)
  %171 = load i64, i64* %8, align 8
  %172 = call i8* @htole64(i64 %171)
  %173 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %5, align 8
  %174 = getelementptr inbounds %struct.xhci_hw_root, %struct.xhci_hw_root* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  store i8* %172, i8** %177, align 8
  %178 = load i32, i32* @XHCI_MAX_EVENTS, align 4
  %179 = call i32 @htole32(i32 %178)
  %180 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %5, align 8
  %181 = getelementptr inbounds %struct.xhci_hw_root, %struct.xhci_hw_root* %180, i32 0, i32 1
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 8
  %185 = load i64, i64* %8, align 8
  %186 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %185)
  %187 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %188 = load i32, i32* @runt, align 4
  %189 = call i32 @XHCI_ERDP_LO(i32 0)
  %190 = load i64, i64* %8, align 8
  %191 = trunc i64 %190 to i32
  %192 = call i32 @XWRITE4(%struct.xhci_softc* %187, i32 %188, i32 %189, i32 %191)
  %193 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %194 = load i32, i32* @runt, align 4
  %195 = call i32 @XHCI_ERDP_HI(i32 0)
  %196 = load i64, i64* %8, align 8
  %197 = lshr i64 %196, 32
  %198 = trunc i64 %197 to i32
  %199 = call i32 @XWRITE4(%struct.xhci_softc* %193, i32 %194, i32 %195, i32 %198)
  %200 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %8, align 8
  %202 = load i64, i64* %8, align 8
  %203 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %202)
  %204 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %205 = load i32, i32* @runt, align 4
  %206 = call i32 @XHCI_ERSTBA_LO(i32 0)
  %207 = load i64, i64* %8, align 8
  %208 = trunc i64 %207 to i32
  %209 = call i32 @XWRITE4(%struct.xhci_softc* %204, i32 %205, i32 %206, i32 %208)
  %210 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %211 = load i32, i32* @runt, align 4
  %212 = call i32 @XHCI_ERSTBA_HI(i32 0)
  %213 = load i64, i64* %8, align 8
  %214 = lshr i64 %213, 32
  %215 = trunc i64 %214 to i32
  %216 = call i32 @XWRITE4(%struct.xhci_softc* %210, i32 %211, i32 %212, i32 %215)
  %217 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %218 = load i32, i32* @runt, align 4
  %219 = call i32 @XHCI_IMAN(i32 0)
  %220 = call i32 @XREAD4(%struct.xhci_softc* %217, i32 %218, i32 %219)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* @XHCI_IMAN_INTR_ENA, align 4
  %222 = load i32, i32* %9, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %9, align 4
  %224 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %225 = load i32, i32* @runt, align 4
  %226 = call i32 @XHCI_IMAN(i32 0)
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @XWRITE4(%struct.xhci_softc* %224, i32 %225, i32 %226, i32 %227)
  %229 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %8, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** null, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i64 0
  %233 = ptrtoint %struct.TYPE_8__* %232 to i64
  %234 = load i64, i64* %8, align 8
  %235 = add i64 %234, %233
  store i64 %235, i64* %8, align 8
  %236 = load i64, i64* %8, align 8
  %237 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %236)
  %238 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %239 = load i32, i32* @oper, align 4
  %240 = load i32, i32* @XHCI_CRCR_LO, align 4
  %241 = load i64, i64* %8, align 8
  %242 = trunc i64 %241 to i32
  %243 = load i32, i32* @XHCI_CRCR_LO_RCS, align 4
  %244 = or i32 %242, %243
  %245 = call i32 @XWRITE4(%struct.xhci_softc* %238, i32 %239, i32 %240, i32 %244)
  %246 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %247 = load i32, i32* @oper, align 4
  %248 = load i32, i32* @XHCI_CRCR_HI, align 4
  %249 = load i64, i64* %8, align 8
  %250 = lshr i64 %249, 32
  %251 = trunc i64 %250 to i32
  %252 = call i32 @XWRITE4(%struct.xhci_softc* %246, i32 %247, i32 %248, i32 %251)
  %253 = load i64, i64* %8, align 8
  %254 = call i8* @htole64(i64 %253)
  %255 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %5, align 8
  %256 = getelementptr inbounds %struct.xhci_hw_root, %struct.xhci_hw_root* %255, i32 0, i32 0
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %256, align 8
  %258 = load i32, i32* @XHCI_MAX_COMMANDS, align 4
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  store i8* %254, i8** %262, align 8
  %263 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %264 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %263, i32 0, i32 5
  %265 = call i32 @usb_bus_mem_flush_all(%struct.TYPE_9__* %264, i32* @xhci_iterate_hw_softc)
  %266 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %267 = load i32, i32* @oper, align 4
  %268 = load i32, i32* @XHCI_USBCMD, align 4
  %269 = load i32, i32* @XHCI_CMD_RS, align 4
  %270 = load i32, i32* @XHCI_CMD_INTE, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @XHCI_CMD_HSEE, align 4
  %273 = or i32 %271, %272
  %274 = call i32 @XWRITE4(%struct.xhci_softc* %266, i32 %267, i32 %268, i32 %273)
  store i64 0, i64* %10, align 8
  br label %275

275:                                              ; preds = %292, %104
  %276 = load i64, i64* %10, align 8
  %277 = icmp ne i64 %276, 100
  br i1 %277, label %278, label %295

278:                                              ; preds = %275
  %279 = load i32, i32* @hz, align 4
  %280 = sdiv i32 %279, 100
  %281 = call i32 @usb_pause_mtx(i32* null, i32 %280)
  %282 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %283 = load i32, i32* @oper, align 4
  %284 = load i32, i32* @XHCI_USBSTS, align 4
  %285 = call i32 @XREAD4(%struct.xhci_softc* %282, i32 %283, i32 %284)
  %286 = load i32, i32* @XHCI_STS_HCH, align 4
  %287 = and i32 %285, %286
  store i32 %287, i32* %9, align 4
  %288 = load i32, i32* %9, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %278
  br label %295

291:                                              ; preds = %278
  br label %292

292:                                              ; preds = %291
  %293 = load i64, i64* %10, align 8
  %294 = add i64 %293, 1
  store i64 %294, i64* %10, align 8
  br label %275

295:                                              ; preds = %290, %275
  %296 = load i32, i32* %9, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %309

298:                                              ; preds = %295
  %299 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %300 = load i32, i32* @oper, align 4
  %301 = load i32, i32* @XHCI_USBCMD, align 4
  %302 = call i32 @XWRITE4(%struct.xhci_softc* %299, i32 %300, i32 %301, i32 0)
  %303 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %304 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @device_printf(i32 %306, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %308 = load i64, i64* @USB_ERR_IOERROR, align 8
  store i64 %308, i64* %2, align 8
  br label %330

309:                                              ; preds = %295
  %310 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %311 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %310, i32 0, i32 5
  %312 = call i32 @xhci_do_poll(%struct.TYPE_9__* %311)
  %313 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %314 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %313, i32 0, i32 6
  %315 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %314, align 8
  %316 = icmp ne i32 (i32, i32, i32)* %315, null
  br i1 %316, label %317, label %329

317:                                              ; preds = %309
  %318 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %319 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %318, i32 0, i32 6
  %320 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %319, align 8
  %321 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %322 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %321, i32 0, i32 5
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @xhciroute, align 4
  %326 = xor i32 %325, -1
  %327 = load i32, i32* @xhciroute, align 4
  %328 = call i32 %320(i32 %324, i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %317, %309
  store i64 0, i64* %2, align 8
  br label %330

330:                                              ; preds = %329, %298, %25
  %331 = load i64, i64* %2, align 8
  ret i64 %331
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i64 @xhci_reset_controller(%struct.xhci_softc*) #1

declare dso_local i32 @XREAD4(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @XWRITE4(%struct.xhci_softc*, i32, i32, i32) #1

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @memset(%struct.xhci_hw_root*, i32, i32) #1

declare dso_local i8* @htole64(i64) #1

declare dso_local i32 @XHCI_ERSTSZ(i32) #1

declare dso_local i32 @XHCI_ERSTS_SET(i32) #1

declare dso_local i32 @XHCI_IMOD(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @XHCI_ERDP_LO(i32) #1

declare dso_local i32 @XHCI_ERDP_HI(i32) #1

declare dso_local i32 @XHCI_ERSTBA_LO(i32) #1

declare dso_local i32 @XHCI_ERSTBA_HI(i32) #1

declare dso_local i32 @XHCI_IMAN(i32) #1

declare dso_local i32 @usb_bus_mem_flush_all(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @xhci_do_poll(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
