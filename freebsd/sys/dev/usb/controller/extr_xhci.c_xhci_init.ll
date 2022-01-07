; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_REV_3_0 = common dso_local global i32 0, align 4
@xhci_bus_methods = common dso_local global i32 0, align 4
@XHCI_MAX_DEVICES = common dso_local global i8* null, align 8
@capa = common dso_local global i32 0, align 4
@XHCI_CAPLENGTH = common dso_local global i32 0, align 4
@XHCI_RTSOFF = common dso_local global i32 0, align 4
@XHCI_DBOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"CAPLENGTH=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"RUNTIMEOFFSET=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"DOOROFFSET=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"xHCI version = 0x%04x\0A\00", align 1
@XHCI_HCIVERSION = common dso_local global i32 0, align 4
@oper = common dso_local global i32 0, align 4
@XHCI_PAGESIZE = common dso_local global i32 0, align 4
@XHCI_PAGESIZE_4K = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Controller does not support 4K page size.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@XHCI_HCSPARAMS0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"HCS0 = 0x%08x\0A\00", align 1
@xhcidma32 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"%d bytes context size, %d-bit DMA\0A\00", align 1
@xhcictlquirk = common dso_local global i64 0, align 8
@XHCI_HCSPARAMS1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Invalid number of ports: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Max slots: %u\0A\00", align 1
@XHCI_HCSPARAMS2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"HCS2=0x%08x\0A\00", align 1
@XHCI_MAX_SCRATCHPADS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"XHCI request too many scratchpads\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"Max scratch: %u\0A\00", align 1
@XHCI_MAX_RSEG = common dso_local global i32 0, align 4
@XHCI_HCSPARAMS3 = common dso_local global i32 0, align 4
@XHCI_IMOD_DEFAULT = common dso_local global i64 0, align 8
@xhci_iterate_hw_softc = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"CMDQ\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"CMDQ lock\00", align 1
@xhci_configure_msg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_init(%struct.xhci_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.xhci_softc* %0, %struct.xhci_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %12 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %11, i32 0, i32 10
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 %10, i32* %13, align 8
  %14 = load i32, i32* @USB_REV_3_0, align 4
  %15 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %16 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 6
  store i32 %14, i32* %17, align 8
  %18 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %19 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  store i32* @xhci_bus_methods, i32** %20, align 8
  %21 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %22 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %21, i32 0, i32 17
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %25 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** @XHCI_MAX_DEVICES, align 8
  %28 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %29 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %28, i32 0, i32 10
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i8* %27, i8** %30, align 8
  %31 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %32 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %34 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %36 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %35, i32 0, i32 16
  store i64 0, i64* %36, align 8
  %37 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %38 = load i32, i32* @capa, align 4
  %39 = load i32, i32* @XHCI_CAPLENGTH, align 4
  %40 = call i32 @XREAD1(%struct.xhci_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %42 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %44 = load i32, i32* @capa, align 4
  %45 = load i32, i32* @XHCI_RTSOFF, align 4
  %46 = call i32 @XREAD4(%struct.xhci_softc* %43, i32 %44, i32 %45)
  %47 = and i32 %46, -32
  %48 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %49 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %51 = load i32, i32* @capa, align 4
  %52 = load i32, i32* @XHCI_DBOFF, align 4
  %53 = call i32 @XREAD4(%struct.xhci_softc* %50, i32 %51, i32 %52)
  %54 = and i32 %53, -4
  %55 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %56 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %58 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %62 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %66 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %70 = load i32, i32* @capa, align 4
  %71 = load i32, i32* @XHCI_HCIVERSION, align 4
  %72 = call i32 @XREAD2(%struct.xhci_softc* %69, i32 %70, i32 %71)
  %73 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %75 = load i32, i32* @oper, align 4
  %76 = load i32, i32* @XHCI_PAGESIZE, align 4
  %77 = call i32 @XREAD4(%struct.xhci_softc* %74, i32 %75, i32 %76)
  %78 = load i32, i32* @XHCI_PAGESIZE_4K, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %3
  %82 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %83 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %82, i32 0, i32 10
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %4, align 4
  br label %293

88:                                               ; preds = %3
  %89 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %90 = load i32, i32* @capa, align 4
  %91 = load i32, i32* @XHCI_HCSPARAMS0, align 4
  %92 = call i32 @XREAD4(%struct.xhci_softc* %89, i32 %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @XHCI_HCS0_CSZ(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %100 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %99, i32 0, i32 5
  store i32 1, i32* %100, align 4
  br label %104

101:                                              ; preds = %88
  %102 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %103 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %102, i32 0, i32 5
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @XHCI_HCS0_AC64(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i64, i64* @xhcidma32, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i64, i64* %7, align 8
  %113 = icmp eq i64 %112, 0
  br label %114

114:                                              ; preds = %111, %108, %104
  %115 = phi i1 [ false, %108 ], [ false, %104 ], [ %113, %111 ]
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 64, i32 32
  %118 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %119 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %118, i32 0, i32 10
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %123 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 64, i32 32
  %128 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %129 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %128, i32 0, i32 10
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %127, i32 %131)
  %133 = load i64, i64* @xhcictlquirk, align 8
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 1, i32 0
  %137 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %138 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %137, i32 0, i32 10
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  %140 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %141 = load i32, i32* @capa, align 4
  %142 = load i32, i32* @XHCI_HCSPARAMS1, align 4
  %143 = call i32 @XREAD4(%struct.xhci_softc* %140, i32 %141, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @XHCI_HCS1_N_PORTS(i32 %144)
  %146 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %147 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %146, i32 0, i32 15
  store i32 %145, i32* %147, align 8
  %148 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %149 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %148, i32 0, i32 15
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %114
  %153 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %154 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %153, i32 0, i32 10
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %158 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %157, i32 0, i32 15
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @device_printf(i32 %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @ENXIO, align 4
  store i32 %161, i32* %4, align 4
  br label %293

162:                                              ; preds = %114
  %163 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %164 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %163, i32 0, i32 15
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %167 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %166, i32 0, i32 15
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @XHCI_HCS1_DEVSLOT_MAX(i32 %168)
  %170 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %171 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 8
  %172 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %173 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %174)
  %176 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %177 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = load i8*, i8** @XHCI_MAX_DEVICES, align 8
  %182 = icmp ugt i8* %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %162
  %184 = load i8*, i8** @XHCI_MAX_DEVICES, align 8
  %185 = ptrtoint i8* %184 to i32
  %186 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %187 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %183, %162
  %189 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %190 = load i32, i32* @capa, align 4
  %191 = load i32, i32* @XHCI_HCSPARAMS2, align 4
  %192 = call i32 @XREAD4(%struct.xhci_softc* %189, i32 %190, i32 %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @XHCI_HCS2_SPB_MAX(i32 %195)
  %197 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %198 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 4
  %199 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %200 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @XHCI_MAX_SCRATCHPADS, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %188
  %205 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %206 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %205, i32 0, i32 10
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i32, i8*, ...) @device_printf(i32 %208, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %210 = load i32, i32* @ENOMEM, align 4
  store i32 %210, i32* %4, align 4
  br label %293

211:                                              ; preds = %188
  %212 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %213 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @XHCI_HCS2_ERST_MAX(i32 %216)
  %218 = shl i32 1, %217
  %219 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %220 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %219, i32 0, i32 8
  store i32 %218, i32* %220, align 8
  %221 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %222 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @XHCI_MAX_RSEG, align 4
  %225 = icmp ugt i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %211
  %227 = load i32, i32* @XHCI_MAX_RSEG, align 4
  %228 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %229 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %228, i32 0, i32 8
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %226, %211
  %231 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %232 = load i32, i32* @capa, align 4
  %233 = load i32, i32* @XHCI_HCSPARAMS3, align 4
  %234 = call i32 @XREAD4(%struct.xhci_softc* %231, i32 %232, i32 %233)
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = call i64 @XHCI_HCS3_U1_DEL(i32 %235)
  %237 = load i32, i32* %8, align 4
  %238 = call i64 @XHCI_HCS3_U2_DEL(i32 %237)
  %239 = add nsw i64 %236, %238
  %240 = add nsw i64 %239, 250
  %241 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %242 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %241, i32 0, i32 14
  store i64 %240, i64* %242, align 8
  %243 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %244 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %243, i32 0, i32 9
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %230
  %248 = load i64, i64* @XHCI_IMOD_DEFAULT, align 8
  %249 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %250 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %249, i32 0, i32 9
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %247, %230
  %252 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %253 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %252, i32 0, i32 10
  %254 = load i32, i32* %6, align 4
  %255 = call i32 @USB_GET_DMA_TAG(i32 %254)
  %256 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_6__* %253, i32 %255, i32* @xhci_iterate_hw_softc)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %251
  %259 = load i32, i32* @ENOMEM, align 4
  store i32 %259, i32* %4, align 4
  br label %293

260:                                              ; preds = %251
  %261 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %262 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %261, i32 0, i32 13
  %263 = call i32 @cv_init(i32* %262, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %264 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %265 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %264, i32 0, i32 12
  %266 = call i32 @sx_init(i32* %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %267 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %268 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %267, i32 0, i32 11
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  store i32* @xhci_configure_msg, i32** %272, align 8
  %273 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %274 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %273, i32 0, i32 10
  %275 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %276 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %275, i32 0, i32 11
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  store %struct.TYPE_6__* %274, %struct.TYPE_6__** %279, align 8
  %280 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %281 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %280, i32 0, i32 11
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i64 1
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  store i32* @xhci_configure_msg, i32** %285, align 8
  %286 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %287 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %286, i32 0, i32 10
  %288 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %289 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %288, i32 0, i32 11
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i64 1
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  store %struct.TYPE_6__* %287, %struct.TYPE_6__** %292, align 8
  store i32 0, i32* %4, align 4
  br label %293

293:                                              ; preds = %260, %258, %204, %152, %81
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @XREAD1(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @XREAD4(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @XREAD2(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @XHCI_HCS0_CSZ(i32) #1

declare dso_local i64 @XHCI_HCS0_AC64(i32) #1

declare dso_local i32 @XHCI_HCS1_N_PORTS(i32) #1

declare dso_local i32 @XHCI_HCS1_DEVSLOT_MAX(i32) #1

declare dso_local i32 @XHCI_HCS2_SPB_MAX(i32) #1

declare dso_local i32 @XHCI_HCS2_ERST_MAX(i32) #1

declare dso_local i64 @XHCI_HCS3_U1_DEL(i32) #1

declare dso_local i64 @XHCI_HCS3_U2_DEL(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
