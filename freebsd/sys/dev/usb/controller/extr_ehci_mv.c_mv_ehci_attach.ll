; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_mv.c_mv_ehci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_mv.c_mv_ehci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, i32, i32, i32*, i32*, i32, i32, i64, i32, i8*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@HWTYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Wrong HW type flag detected\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@MV_USB_HOST_OFST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: unable to subregion USB host registers\00", align 1
@HWTYPE_MV_EHCI_V1 = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@irq_err = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Could not allocate error irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Could not allocate irq\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@EHCI_HC_DEVSTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"Marvell\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@err_intr = common dso_local global i32* null, align 8
@ih_err = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"Could not setup error irq, %d\0A\00", align 1
@USB_BRIDGE_INTR_MASK = common dso_local global i32 0, align 4
@MV_USB_ADDR_DECODE_ERR = common dso_local global i32 0, align 4
@MV_USB_HOST_UNDERFLOW = common dso_local global i32 0, align 4
@MV_USB_HOST_OVERFLOW = common dso_local global i32 0, align 4
@MV_USB_DEVICE_UNDERFLOW = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@mv_ehci_post_reset = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"5.24 GL USB-2 workaround enabled\0A\00", align 1
@EHCI_SCFLG_TT = common dso_local global i32 0, align 4
@EHCI_SCFLG_NORESTERM = common dso_local global i32 0, align 4
@ehci_get_port_speed_portsc = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"USB init failed err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_ehci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_ehci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.TYPE_9__* @device_get_softc(i32 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  store i32 %11, i32* %14, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 32, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @compat_data, align 4
  %30 = call %struct.TYPE_11__* @ofw_bus_search_compatible(i32 %28, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @HWTYPE_NONE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %259

40:                                               ; preds = %1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @USB_GET_DMA_TAG(i32 %43)
  %45 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_10__* %42, i32 %44, i32* @ehci_iterate_hw_softc)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %2, align 4
  br label %259

49:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load i32, i32* @RF_ACTIVE, align 4
  %53 = call i8* @bus_alloc_resource_any(i32 %50, i32 %51, i32* %8, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 10
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 10
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %255

63:                                               ; preds = %49
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 10
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @rman_get_bustag(i8* %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 10
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @rman_get_bushandle(i8* %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 10
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @rman_get_size(i8* %76)
  %78 = load i64, i64* @MV_USB_HOST_OFST, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 8
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i64, i64* @MV_USB_HOST_OFST, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 7
  %92 = call i64 @bus_space_subregion(i32 %84, i32 %85, i64 %86, i64 %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %63
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @device_get_name(i32 %95)
  %97 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %63
  store i32 0, i32* %8, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @HWTYPE_MV_EHCI_V1, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @SYS_RES_IRQ, align 4
  %105 = load i32, i32* @RF_SHAREABLE, align 4
  %106 = load i32, i32* @RF_ACTIVE, align 4
  %107 = or i32 %105, %106
  %108 = call i8* @bus_alloc_resource_any(i32 %103, i32 %104, i32* %8, i32 %107)
  %109 = bitcast i8* %108 to i32*
  store i32* %109, i32** @irq_err, align 8
  %110 = load i32*, i32** @irq_err, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load i32, i32* %3, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @mv_ehci_detach(i32 %115)
  %117 = load i32, i32* @ENXIO, align 4
  store i32 %117, i32* %2, align 4
  br label %259

118:                                              ; preds = %102
  store i32 1, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %98
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @SYS_RES_IRQ, align 4
  %122 = load i32, i32* @RF_SHAREABLE, align 4
  %123 = load i32, i32* @RF_ACTIVE, align 4
  %124 = or i32 %122, %123
  %125 = call i8* @bus_alloc_resource_any(i32 %120, i32 %121, i32* %8, i32 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 5
  store i32* %126, i32** %128, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %119
  %134 = load i32, i32* %3, align 4
  %135 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %255

136:                                              ; preds = %119
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @device_add_child(i32 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %136
  %148 = load i32, i32* %3, align 4
  %149 = call i32 (i32, i8*, ...) @device_printf(i32 %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %255

150:                                              ; preds = %136
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = call i32 @device_set_ivars(i32 %154, %struct.TYPE_10__* %156)
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @EHCI_HC_DEVSTR, align 4
  %163 = call i32 @device_set_desc(i32 %161, i32 %162)
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @sprintf(i32 %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @HWTYPE_MV_EHCI_V1, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %185

171:                                              ; preds = %150
  %172 = load i32, i32* %3, align 4
  %173 = load i32*, i32** @irq_err, align 8
  %174 = load i32, i32* @INTR_TYPE_BIO, align 4
  %175 = load i32*, i32** @err_intr, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %177 = call i32 @bus_setup_intr(i32 %172, i32* %173, i32 %174, i32* %175, i32* null, %struct.TYPE_9__* %176, i32** @ih_err)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %171
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 (i32, i8*, ...) @device_printf(i32 %181, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  store i32* null, i32** @ih_err, align 8
  br label %255

184:                                              ; preds = %171
  br label %185

185:                                              ; preds = %184, %150
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %187 = load i32, i32* @USB_BRIDGE_INTR_MASK, align 4
  %188 = load i32, i32* @MV_USB_ADDR_DECODE_ERR, align 4
  %189 = load i32, i32* @MV_USB_HOST_UNDERFLOW, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @MV_USB_HOST_OVERFLOW, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @MV_USB_DEVICE_UNDERFLOW, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @EWRITE4(%struct.TYPE_9__* %186, i32 %187, i32 %194)
  %196 = load i32, i32* %3, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 5
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* @INTR_TYPE_BIO, align 4
  %201 = load i32, i32* @INTR_MPSAFE, align 4
  %202 = or i32 %200, %201
  %203 = load i64, i64* @ehci_interrupt, align 8
  %204 = inttoptr i64 %203 to i32*
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 4
  %208 = call i32 @bus_setup_intr(i32 %196, i32* %199, i32 %202, i32* null, i32* %204, %struct.TYPE_9__* %205, i32** %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %185
  %212 = load i32, i32* %3, align 4
  %213 = load i32, i32* %7, align 4
  %214 = call i32 (i32, i8*, ...) @device_printf(i32 %212, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %213)
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 4
  store i32* null, i32** %216, align 8
  br label %255

217:                                              ; preds = %185
  %218 = load i32, i32* @mv_ehci_post_reset, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 4
  %221 = load i64, i64* @bootverbose, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %217
  %224 = load i32, i32* %3, align 4
  %225 = call i32 (i32, i8*, ...) @device_printf(i32 %224, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %226

226:                                              ; preds = %223, %217
  %227 = load i32, i32* @EHCI_SCFLG_TT, align 4
  %228 = load i32, i32* @EHCI_SCFLG_NORESTERM, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 8
  %234 = load i32, i32* @ehci_get_port_speed_portsc, align 4
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 8
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %238 = call i32 @ehci_init(%struct.TYPE_9__* %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %226
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @device_probe_and_attach(i32 %245)
  store i32 %246, i32* %7, align 4
  br label %247

247:                                              ; preds = %241, %226
  %248 = load i32, i32* %7, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i32, i32* %3, align 4
  %252 = load i32, i32* %7, align 4
  %253 = call i32 (i32, i8*, ...) @device_printf(i32 %251, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %252)
  br label %255

254:                                              ; preds = %247
  store i32 0, i32* %2, align 4
  br label %259

255:                                              ; preds = %250, %211, %180, %147, %133, %60
  %256 = load i32, i32* %3, align 4
  %257 = call i32 @mv_ehci_detach(i32 %256)
  %258 = load i32, i32* @ENXIO, align 4
  store i32 %258, i32* %2, align 4
  br label %259

259:                                              ; preds = %255, %254, %112, %47, %36
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local %struct.TYPE_9__* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_11__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i64 @rman_get_size(i8*) #1

declare dso_local i64 @bus_space_subregion(i32, i32, i64, i64, i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @mv_ehci_detach(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.TYPE_9__*, i32**) #1

declare dso_local i32 @EWRITE4(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ehci_init(%struct.TYPE_9__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
