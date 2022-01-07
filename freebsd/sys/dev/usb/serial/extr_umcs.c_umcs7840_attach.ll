; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config = type { i32, i64 }
%struct.usb_attach_arg = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.umcs7840_softc = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@UMCS7840_N_TRANSFERS = common dso_local global i32 0, align 4
@MCS7840_IFACE_INDEX = common dso_local global i32 0, align 4
@umcs7840_bulk_config_data = common dso_local global %struct.usb_config* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"umcs7840\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MCS7840_DEV_REG_GPIO = common dso_local global i32 0, align 4
@MCS7840_DEV_GPIO_4PORTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Chip mcs%04x, found %d active ports\0A\00", align 1
@MCS7840_DEV_REG_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [113 x i8] c"On-die confguration: RST: active %s, HRD: %s, PLL: %s, POR: %s, Ports: %s, EEPROM write %s, IrDA is %savailable\0A\00", align 1
@MCS7840_DEV_MODE_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@MCS7840_DEV_MODE_SER_PRSNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@MCS7840_DEV_MODE_PLLBYPASS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"bypassed\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"avail\00", align 1
@MCS7840_DEV_MODE_PORBYPASS = common dso_local global i32 0, align 4
@MCS7840_DEV_MODE_SELECT24S = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@MCS7840_DEV_MODE_EEPROMWR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@MCS7840_DEV_MODE_IRDA = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@umcs7840_rw_callbacks = common dso_local global i32** null, align 8
@.str.15 = private unnamed_addr constant [54 x i8] c"allocating USB transfers failed for subunit %d of %d\0A\00", align 1
@umcs7840_intr_config_data = common dso_local global %struct.usb_config* null, align 8
@.str.16 = private unnamed_addr constant [47 x i8] c"allocating USB transfers failed for interrupt\0A\00", align 1
@UMCS7840_BULK_RD_EP = common dso_local global i64 0, align 8
@UMCS7840_BULK_WR_EP = common dso_local global i64 0, align 8
@umcs7840_callback = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @umcs7840_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umcs7840_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_attach_arg*, align 8
  %7 = alloca %struct.umcs7840_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* @UMCS7840_N_TRANSFERS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca %struct.usb_config, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.usb_attach_arg* @device_get_ivars(i32 %18)
  store %struct.usb_attach_arg* %19, %struct.usb_attach_arg** %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.umcs7840_softc* @device_get_softc(i32 %20)
  store %struct.umcs7840_softc* %21, %struct.umcs7840_softc** %7, align 8
  %22 = load i32, i32* @MCS7840_IFACE_INDEX, align 4
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %37, %1
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @UMCS7840_N_TRANSFERS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %17, i64 %29
  %31 = load %struct.usb_config*, %struct.usb_config** @umcs7840_bulk_config_data, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %31, i64 %33
  %35 = bitcast %struct.usb_config* %30 to i8*
  %36 = bitcast %struct.usb_config* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %35, i8* align 8 %36, i64 16, i1 false)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_set_usb_desc(i32 %41)
  %43 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %44 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %43, i32 0, i32 2
  %45 = load i32, i32* @MTX_DEF, align 4
  %46 = call i32 @mtx_init(i32* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %45)
  %47 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %48 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %47, i32 0, i32 1
  %49 = call i32 @ucom_ref(i32* %48)
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %52 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %54 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %57 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %59 = load i32, i32* @MCS7840_DEV_REG_GPIO, align 4
  %60 = call i32 @umcs7840_get_reg_sync(%struct.umcs7840_softc* %58, i32 %59, i32* %12)
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @MCS7840_DEV_GPIO_4PORTS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %40
  %66 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %67 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %66, i32 0, i32 0
  store i32 4, i32* %67, align 8
  %68 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %69 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  %73 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %74 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %79 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %78, i32 0, i32 3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 2, i32* %82, align 4
  %83 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %84 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %83, i32 0, i32 3
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 3, i32* %87, align 4
  br label %101

88:                                               ; preds = %40
  %89 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %90 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %89, i32 0, i32 0
  store i32 2, i32* %90, align 8
  %91 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %92 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %91, i32 0, i32 3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  %96 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %97 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %96, i32 0, i32 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 2, i32* %100, align 4
  br label %101

101:                                              ; preds = %88, %65
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %104 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %108 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, ...) @device_printf(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %112 = load i32, i32* @MCS7840_DEV_REG_MODE, align 4
  %113 = call i32 @umcs7840_get_reg_sync(%struct.umcs7840_softc* %111, i32 %112, i32* %12)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %160, label %115

115:                                              ; preds = %101
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @MCS7840_DEV_MODE_RESET, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @MCS7840_DEV_MODE_SER_PRSNT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @MCS7840_DEV_MODE_PLLBYPASS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @MCS7840_DEV_MODE_PORBYPASS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @MCS7840_DEV_MODE_SELECT24S, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @MCS7840_DEV_MODE_EEPROMWR, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @MCS7840_DEV_MODE_IRDA, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)
  %159 = call i32 (i32, i8*, ...) @device_printf(i32 %116, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i8* %122, i8* %128, i8* %134, i8* %140, i8* %146, i8* %152, i8* %158)
  br label %160

160:                                              ; preds = %115, %101
  store i32 0, i32* %10, align 4
  br label %161

161:                                              ; preds = %245, %160
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %164 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %248

167:                                              ; preds = %161
  store i32 0, i32* %11, align 4
  br label %168

168:                                              ; preds = %207, %167
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @UMCS7840_N_TRANSFERS, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %210

172:                                              ; preds = %168
  %173 = load %struct.usb_config*, %struct.usb_config** @umcs7840_bulk_config_data, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %173, i64 %175
  %177 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %180 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %179, i32 0, i32 3
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 2, %186
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %178, %188
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %17, i64 %191
  %193 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %192, i32 0, i32 1
  store i64 %189, i64* %193, align 8
  %194 = load i32**, i32*** @umcs7840_rw_callbacks, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32*, i32** %194, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %17, i64 %204
  %206 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %205, i32 0, i32 0
  store i32 %202, i32* %206, align 16
  br label %207

207:                                              ; preds = %172
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %168

210:                                              ; preds = %168
  %211 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %212 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %215 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %214, i32 0, i32 4
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %218 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %217, i32 0, i32 3
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* @UMCS7840_N_TRANSFERS, align 4
  %230 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %231 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %232 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %231, i32 0, i32 2
  %233 = call i32 @usbd_transfer_setup(i32 %213, i32* %8, i32* %228, %struct.usb_config* %17, i32 %229, %struct.umcs7840_softc* %230, i32* %232)
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %210
  %237 = load i32, i32* %3, align 4
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  %240 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %241 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 (i32, i8*, ...) @device_printf(i32 %237, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), i32 %239, i32 %242)
  br label %340

244:                                              ; preds = %210
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %10, align 4
  br label %161

248:                                              ; preds = %161
  %249 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %250 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %253 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %252, i32 0, i32 5
  %254 = load %struct.usb_config*, %struct.usb_config** @umcs7840_intr_config_data, align 8
  %255 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %256 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %257 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %256, i32 0, i32 2
  %258 = call i32 @usbd_transfer_setup(i32 %251, i32* %8, i32* %253, %struct.usb_config* %254, i32 1, %struct.umcs7840_softc* %255, i32* %257)
  store i32 %258, i32* %9, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %248
  %262 = load i32, i32* %3, align 4
  %263 = call i32 (i32, i8*, ...) @device_printf(i32 %262, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0))
  br label %340

264:                                              ; preds = %248
  %265 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %266 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %265, i32 0, i32 2
  %267 = call i32 @mtx_lock(i32* %266)
  store i32 0, i32* %10, align 4
  br label %268

268:                                              ; preds = %313, %264
  %269 = load i32, i32* %10, align 4
  %270 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %271 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %316

274:                                              ; preds = %268
  %275 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %276 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %275, i32 0, i32 4
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %279 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %278, i32 0, i32 3
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %279, align 8
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* @UMCS7840_BULK_RD_EP, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @usbd_xfer_set_stall(i32 %292)
  %294 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %295 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %294, i32 0, i32 4
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %295, align 8
  %297 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %298 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %297, i32 0, i32 3
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %298, align 8
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load i64, i64* @UMCS7840_BULK_WR_EP, align 8
  %310 = getelementptr inbounds i32, i32* %308, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @usbd_xfer_set_stall(i32 %311)
  br label %313

313:                                              ; preds = %274
  %314 = load i32, i32* %10, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %10, align 4
  br label %268

316:                                              ; preds = %268
  %317 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %318 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %317, i32 0, i32 2
  %319 = call i32 @mtx_unlock(i32* %318)
  %320 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %321 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %320, i32 0, i32 1
  %322 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %323 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %322, i32 0, i32 3
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %323, align 8
  %325 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %326 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %329 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %330 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %329, i32 0, i32 2
  %331 = call i32 @ucom_attach(i32* %321, %struct.TYPE_6__* %324, i32 %327, %struct.umcs7840_softc* %328, i32* @umcs7840_callback, i32* %330)
  store i32 %331, i32* %9, align 4
  %332 = load i32, i32* %9, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %316
  br label %340

335:                                              ; preds = %316
  %336 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %337 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %336, i32 0, i32 1
  %338 = load i32, i32* %3, align 4
  %339 = call i32 @ucom_set_pnpinfo_usb(i32* %337, i32 %338)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %344

340:                                              ; preds = %334, %261, %236
  %341 = load i32, i32* %3, align 4
  %342 = call i32 @umcs7840_detach(i32 %341)
  %343 = load i32, i32* @ENXIO, align 4
  store i32 %343, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %344

344:                                              ; preds = %340, %335
  %345 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %345)
  %346 = load i32, i32* %2, align 4
  ret i32 %346
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #2

declare dso_local %struct.umcs7840_softc* @device_get_softc(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @device_set_usb_desc(i32) #2

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #2

declare dso_local i32 @ucom_ref(i32*) #2

declare dso_local i32 @umcs7840_get_reg_sync(%struct.umcs7840_softc*, i32, i32*) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, %struct.usb_config*, i32, %struct.umcs7840_softc*, i32*) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @usbd_xfer_set_stall(i32) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @ucom_attach(i32*, %struct.TYPE_6__*, i32, %struct.umcs7840_softc*, i32*, i32*) #2

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #2

declare dso_local i32 @umcs7840_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
