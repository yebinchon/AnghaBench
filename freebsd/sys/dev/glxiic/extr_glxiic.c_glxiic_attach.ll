; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxiic_softc = type { i32, i32*, i8*, i32*, i32*, i8*, i32*, i8*, i32*, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@GLXIIC_STATE_IDLE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not allocate SMBus I/O port\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not allocate GPIO I/O port\0A\00", align 1
@GLXIIC_MSR_PIC_YSEL_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"glxiic\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Bad value %d for glxiic.%d.irq\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Using irq %d set by hint\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Using irq %d set by firmware\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"No irq mapped by firmware\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c" and no glxiic.%d.irq hint provided\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Could not allocate IRQ %d\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@glxiic_intr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Could not setup IRQ handler\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Could not allocate iicbus instance\0A\00", align 1
@GLXIIC_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"activity timeout in ms\00", align 1
@IIC_FASTEST = common dso_local global i32 0, align 4
@bus_generic_attach = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @glxiic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxiic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.glxiic_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.glxiic_softc* @device_get_softc(i32 %10)
  store %struct.glxiic_softc* %11, %struct.glxiic_softc** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %14 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %13, i32 0, i32 13
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @GLXIIC_STATE_IDLE, align 4
  %16 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %17 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %6, align 4
  %18 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %19 = call i32 @GLXIIC_LOCK_INIT(%struct.glxiic_softc* %18)
  %20 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %21 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %20, i32 0, i32 9
  %22 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %23 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %22, i32 0, i32 11
  %24 = call i32 @callout_init_mtx(i32* %21, i32* %23, i32 0)
  %25 = call i8* @PCIR_BAR(i32 0)
  %26 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %27 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @SYS_RES_IOPORT, align 4
  %30 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %31 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %30, i32 0, i32 7
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i8* @bus_alloc_resource_any(i32 %28, i32 %29, i8** %31, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %36 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %35, i32 0, i32 6
  store i32* %34, i32** %36, align 8
  %37 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %38 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32, i32* %2, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %6, align 4
  br label %205

45:                                               ; preds = %1
  %46 = call i8* @PCIR_BAR(i32 1)
  %47 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %48 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @SYS_RES_IOPORT, align 4
  %51 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %52 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %51, i32 0, i32 5
  %53 = load i32, i32* @RF_SHAREABLE, align 4
  %54 = load i32, i32* @RF_ACTIVE, align 4
  %55 = or i32 %53, %54
  %56 = call i8* @bus_alloc_resource_any(i32 %49, i32 %50, i8** %52, i32 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %59 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %58, i32 0, i32 4
  store i32* %57, i32** %59, align 8
  %60 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %61 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %45
  %65 = load i32, i32* %2, align 4
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %6, align 4
  br label %205

68:                                               ; preds = %45
  %69 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %70 = call i32 @glxiic_smb_disable(%struct.glxiic_softc* %69)
  %71 = load i32, i32* @GLXIIC_MSR_PIC_YSEL_HIGH, align 4
  %72 = call i32 @rdmsr(i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @GLXIIC_MAP_TO_SMB_IRQ(i32 %73)
  %75 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %76 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @device_get_unit(i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @resource_int_value(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %68
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %86, 15
  br i1 %87, label %88, label %94

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @ENXIO, align 4
  store i32 %93, i32* %6, align 4
  br label %205

94:                                               ; preds = %85
  %95 = load i64, i64* @bootverbose, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %94
  br label %125

102:                                              ; preds = %68
  %103 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %104 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load i64, i64* @bootverbose, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  %115 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %116 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %7, align 4
  br label %124

118:                                              ; preds = %102
  %119 = load i32, i32* %2, align 4
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @ENXIO, align 4
  store i32 %123, i32* %6, align 4
  br label %205

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @glxiic_smb_map_interrupt(i32 %126)
  %128 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %129 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %128, i32 0, i32 2
  store i8* null, i8** %129, align 8
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* @SYS_RES_IRQ, align 4
  %132 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %133 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %132, i32 0, i32 2
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @RF_SHAREABLE, align 4
  %137 = load i32, i32* @RF_ACTIVE, align 4
  %138 = or i32 %136, %137
  %139 = call i32* @bus_alloc_resource(i32 %130, i32 %131, i8** %133, i32 %134, i32 %135, i32 1, i32 %138)
  %140 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %141 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %140, i32 0, i32 1
  store i32* %139, i32** %141, align 8
  %142 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %143 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %125
  %147 = load i32, i32* %2, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 (i32, i8*, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @ENXIO, align 4
  store i32 %150, i32* %6, align 4
  br label %205

151:                                              ; preds = %125
  %152 = load i32, i32* %2, align 4
  %153 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %154 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* @INTR_TYPE_MISC, align 4
  %157 = load i32, i32* @INTR_MPSAFE, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @glxiic_intr, align 4
  %160 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %161 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %162 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %161, i32 0, i32 3
  %163 = call i32 @bus_setup_intr(i32 %152, i32* %155, i32 %158, i32* null, i32 %159, %struct.glxiic_softc* %160, i32** %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %151
  %167 = load i32, i32* %2, align 4
  %168 = call i32 (i32, i8*, ...) @device_printf(i32 %167, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %169 = load i32, i32* @ENXIO, align 4
  store i32 %169, i32* %6, align 4
  br label %205

170:                                              ; preds = %151
  %171 = load i32, i32* %2, align 4
  %172 = call i32* @device_add_child(i32 %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 -1)
  %173 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %174 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %173, i32 0, i32 8
  store i32* %172, i32** %174, align 8
  %175 = icmp eq i32* %172, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = load i32, i32* %2, align 4
  %178 = call i32 (i32, i8*, ...) @device_printf(i32 %177, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %179 = load i32, i32* @ENXIO, align 4
  store i32 %179, i32* %6, align 4
  br label %205

180:                                              ; preds = %170
  %181 = load i32, i32* %2, align 4
  %182 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %181)
  store %struct.sysctl_ctx_list* %182, %struct.sysctl_ctx_list** %4, align 8
  %183 = load i32, i32* %2, align 4
  %184 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %183)
  store %struct.sysctl_oid* %184, %struct.sysctl_oid** %5, align 8
  %185 = load i32, i32* @GLXIIC_DEFAULT_TIMEOUT, align 4
  %186 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %187 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %186, i32 0, i32 10
  store i32 %185, i32* %187, align 4
  %188 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %189 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %190 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %189)
  %191 = load i32, i32* @OID_AUTO, align 4
  %192 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %193 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %194 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %193, i32 0, i32 10
  %195 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %188, i32 %190, i32 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %192, i32* %194, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %196 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %197 = call i32 @glxiic_gpio_enable(%struct.glxiic_softc* %196)
  %198 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %199 = load i32, i32* @IIC_FASTEST, align 4
  %200 = call i32 @glxiic_smb_enable(%struct.glxiic_softc* %198, i32 %199, i32 0)
  %201 = load i64, i64* @bus_generic_attach, align 8
  %202 = trunc i64 %201 to i32
  %203 = load i32, i32* %2, align 4
  %204 = call i32 @config_intrhook_oneshot(i32 %202, i32 %203)
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %180, %176, %166, %146, %118, %88, %64, %41
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %292

208:                                              ; preds = %205
  %209 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %210 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %209, i32 0, i32 9
  %211 = call i32 @callout_drain(i32* %210)
  %212 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %213 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %212, i32 0, i32 8
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %208
  %217 = load i32, i32* %2, align 4
  %218 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %219 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %218, i32 0, i32 8
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @device_delete_child(i32 %217, i32* %220)
  br label %222

222:                                              ; preds = %216, %208
  %223 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %224 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %223, i32 0, i32 6
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %239

227:                                              ; preds = %222
  %228 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %229 = call i32 @glxiic_smb_disable(%struct.glxiic_softc* %228)
  %230 = load i32, i32* %2, align 4
  %231 = load i32, i32* @SYS_RES_IOPORT, align 4
  %232 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %233 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %232, i32 0, i32 7
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %236 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %235, i32 0, i32 6
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @bus_release_resource(i32 %230, i32 %231, i8* %234, i32* %237)
  br label %239

239:                                              ; preds = %227, %222
  %240 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %241 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %240, i32 0, i32 4
  %242 = load i32*, i32** %241, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %256

244:                                              ; preds = %239
  %245 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %246 = call i32 @glxiic_gpio_disable(%struct.glxiic_softc* %245)
  %247 = load i32, i32* %2, align 4
  %248 = load i32, i32* @SYS_RES_IOPORT, align 4
  %249 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %250 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %249, i32 0, i32 5
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %253 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %252, i32 0, i32 4
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @bus_release_resource(i32 %247, i32 %248, i8* %251, i32* %254)
  br label %256

256:                                              ; preds = %244, %239
  %257 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %258 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %270

261:                                              ; preds = %256
  %262 = load i32, i32* %2, align 4
  %263 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %264 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %267 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %266, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = call i32 @bus_teardown_intr(i32 %262, i32* %265, i32* %268)
  br label %270

270:                                              ; preds = %261, %256
  %271 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %272 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %285

275:                                              ; preds = %270
  %276 = load i32, i32* %2, align 4
  %277 = load i32, i32* @SYS_RES_IRQ, align 4
  %278 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %279 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %278, i32 0, i32 2
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %282 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = call i32 @bus_release_resource(i32 %276, i32 %277, i8* %280, i32* %283)
  br label %285

285:                                              ; preds = %275, %270
  %286 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %287 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @glxiic_smb_map_interrupt(i32 %288)
  %290 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %291 = call i32 @GLXIIC_LOCK_DESTROY(%struct.glxiic_softc* %290)
  br label %292

292:                                              ; preds = %285, %205
  %293 = load i32, i32* %6, align 4
  ret i32 %293
}

declare dso_local %struct.glxiic_softc* @device_get_softc(i32) #1

declare dso_local i32 @GLXIIC_LOCK_INIT(%struct.glxiic_softc*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @glxiic_smb_disable(%struct.glxiic_softc*) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @GLXIIC_MAP_TO_SMB_IRQ(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @glxiic_smb_map_interrupt(i32) #1

declare dso_local i32* @bus_alloc_resource(i32, i32, i8**, i32, i32, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.glxiic_softc*, i32**) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @glxiic_gpio_enable(%struct.glxiic_softc*) #1

declare dso_local i32 @glxiic_smb_enable(%struct.glxiic_softc*, i32, i32) #1

declare dso_local i32 @config_intrhook_oneshot(i32, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i8*, i32*) #1

declare dso_local i32 @glxiic_gpio_disable(%struct.glxiic_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @GLXIIC_LOCK_DESTROY(%struct.glxiic_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
