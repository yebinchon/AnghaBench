; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32, i32 (%struct.mlx_softc*, i32*, i32*, i32*, i32)*, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__, i64, %struct.TYPE_5__*, i32, i32, i32, i32, i32*, i32 (%struct.mlx_softc*, i32)*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.mlx_softc* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx_enquiry_old = type { i32, i32 }

@mlx_v3_tryqueue = common dso_local global i32 0, align 4
@mlx_v3_findcomplete = common dso_local global i32 0, align 4
@mlx_v4_tryqueue = common dso_local global i32 0, align 4
@mlx_v4_findcomplete = common dso_local global i32 0, align 4
@mlx_v5_tryqueue = common dso_local global i32 0, align 4
@mlx_v5_findcomplete = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MLX_INTACTION_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"controller initialisation in progress...\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"initialisation complete.\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"can't allocate interrupt\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@mlx_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"can't set up interrupt\0A\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MLX_MAXPHYS = common dso_local global i32 0, align 4
@MLX_NSEG = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"can't allocate buffer DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"can't make initial s/g list mapping\0A\00", align 1
@MLX_CMD_ENQUIRY2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"ENQUIRY2 failed\0A\00", align 1
@MLX_CMD_ENQUIRY_OLD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"ENQUIRY_OLD failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c" *** WARNING *** This firmware revision is not recommended\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c" *** WARNING *** Use revision 2.42 or later\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c" *** WARNING *** Use revision 3.51 or later\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c" *** WARNING *** Use revision 4.06 or later\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c" *** WARNING *** Use revision 5.07 or later\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"can't make final s/g list mapping\0A\00", align 1
@MLX_REBUILDSTAT_IDLE = common dso_local global i32 0, align 4
@mlx_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"mlx%d\00", align 1
@hz = common dso_local global i32 0, align 4
@mlx_periodic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx_attach(%struct.mlx_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx_softc*, align 8
  %4 = alloca %struct.mlx_enquiry_old*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %3, align 8
  %13 = call i32 @debug_called(i32 1)
  %14 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %14, i32 0, i32 19
  %16 = call i32 @TAILQ_INIT(i32* %15)
  %17 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %17, i32 0, i32 18
  %19 = call i32 @TAILQ_INIT(i32* %18)
  %20 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %20, i32 0, i32 17
  %22 = call i32 @bioq_init(i32* %21)
  %23 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %59 [
    i32 131, label %26
    i32 130, label %26
    i32 129, label %37
    i32 128, label %48
  ]

26:                                               ; preds = %1, %1
  %27 = load i32, i32* @mlx_v3_tryqueue, align 4
  %28 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %28, i32 0, i32 16
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @mlx_v3_findcomplete, align 4
  %31 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %31, i32 0, i32 15
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %34 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %33, i32 0, i32 14
  store i32 (%struct.mlx_softc*, i32)* @mlx_v3_intaction, i32 (%struct.mlx_softc*, i32)** %34, align 8
  %35 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %35, i32 0, i32 1
  store i32 (%struct.mlx_softc*, i32*, i32*, i32*, i32)* @mlx_v3_fw_handshake, i32 (%struct.mlx_softc*, i32*, i32*, i32*, i32)** %36, align 8
  br label %61

37:                                               ; preds = %1
  %38 = load i32, i32* @mlx_v4_tryqueue, align 4
  %39 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %39, i32 0, i32 16
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @mlx_v4_findcomplete, align 4
  %42 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %42, i32 0, i32 15
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %45 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %44, i32 0, i32 14
  store i32 (%struct.mlx_softc*, i32)* @mlx_v4_intaction, i32 (%struct.mlx_softc*, i32)** %45, align 8
  %46 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %47 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %46, i32 0, i32 1
  store i32 (%struct.mlx_softc*, i32*, i32*, i32*, i32)* @mlx_v4_fw_handshake, i32 (%struct.mlx_softc*, i32*, i32*, i32*, i32)** %47, align 8
  br label %61

48:                                               ; preds = %1
  %49 = load i32, i32* @mlx_v5_tryqueue, align 4
  %50 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %51 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %50, i32 0, i32 16
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @mlx_v5_findcomplete, align 4
  %53 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %54 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %53, i32 0, i32 15
  store i32 %52, i32* %54, align 8
  %55 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %56 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %55, i32 0, i32 14
  store i32 (%struct.mlx_softc*, i32)* @mlx_v5_intaction, i32 (%struct.mlx_softc*, i32)** %56, align 8
  %57 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %58 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %57, i32 0, i32 1
  store i32 (%struct.mlx_softc*, i32*, i32*, i32*, i32)* @mlx_v5_fw_handshake, i32 (%struct.mlx_softc*, i32*, i32*, i32*, i32)** %58, align 8
  br label %61

59:                                               ; preds = %1
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %2, align 4
  br label %358

61:                                               ; preds = %48, %37, %26
  %62 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %63 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %62)
  %64 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %65 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %64, i32 0, i32 14
  %66 = load i32 (%struct.mlx_softc*, i32)*, i32 (%struct.mlx_softc*, i32)** %65, align 8
  %67 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %68 = load i32, i32* @MLX_INTACTION_DISABLE, align 4
  %69 = call i32 %66(%struct.mlx_softc* %67, i32 %68)
  %70 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %71 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %70)
  store i32 0, i32* %12, align 4
  %72 = call i32 @DELAY(i32 1000)
  br label %73

73:                                               ; preds = %105, %61
  %74 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %75 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %74, i32 0, i32 1
  %76 = load i32 (%struct.mlx_softc*, i32*, i32*, i32*, i32)*, i32 (%struct.mlx_softc*, i32*, i32*, i32*, i32)** %75, align 8
  %77 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 %76(%struct.mlx_softc* %77, i32* %9, i32* %10, i32* %11, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %73
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %88 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @mlx_fw_message(%struct.mlx_softc* %95, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* @ENXIO, align 4
  store i32 %103, i32* %2, align 4
  br label %358

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %91
  br label %73

106:                                              ; preds = %73
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %111 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %106
  store i32 0, i32* %5, align 4
  %115 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %116 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SYS_RES_IRQ, align 4
  %119 = load i32, i32* @RF_SHAREABLE, align 4
  %120 = load i32, i32* @RF_ACTIVE, align 4
  %121 = or i32 %119, %120
  %122 = call i32* @bus_alloc_resource_any(i32 %117, i32 %118, i32* %5, i32 %121)
  %123 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %124 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %123, i32 0, i32 13
  store i32* %122, i32** %124, align 8
  %125 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %126 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %125, i32 0, i32 13
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %114
  %130 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %131 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @device_printf(i32 %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @ENXIO, align 4
  store i32 %134, i32* %2, align 4
  br label %358

135:                                              ; preds = %114
  %136 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %137 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %140 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %139, i32 0, i32 13
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @INTR_TYPE_BIO, align 4
  %143 = load i32, i32* @INTR_ENTROPY, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @INTR_MPSAFE, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @mlx_intr, align 4
  %148 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %149 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %150 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %149, i32 0, i32 12
  %151 = call i32 @bus_setup_intr(i32 %138, i32* %141, i32 %146, i32* null, i32 %147, %struct.mlx_softc* %148, i32* %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %135
  %155 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %156 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %159 = load i32, i32* @ENXIO, align 4
  store i32 %159, i32* %2, align 4
  br label %358

160:                                              ; preds = %135
  %161 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %162 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %165 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %166 = load i32, i32* @MLX_MAXPHYS, align 4
  %167 = load i32, i32* @MLX_NSEG, align 4
  %168 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %169 = load i32, i32* @busdma_lock_mutex, align 4
  %170 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %171 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %170, i32 0, i32 10
  %172 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %173 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %172, i32 0, i32 9
  %174 = call i32 @bus_dma_tag_create(i32 %163, i32 1, i32 0, i32 %164, i32 %165, i32* null, i32* null, i32 %166, i32 %167, i32 %168, i32 0, i32 %169, i32* %171, i32* %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %160
  %178 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %179 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @device_printf(i32 %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %182 = load i32, i32* @ENOMEM, align 4
  store i32 %182, i32* %2, align 4
  br label %358

183:                                              ; preds = %160
  %184 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %185 = call i32 @mlx_sglist_map(%struct.mlx_softc* %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %190 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @device_printf(i32 %191, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %2, align 4
  br label %358

194:                                              ; preds = %183
  %195 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %196 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %195, i32 0, i32 2
  store i32 -1, i32* %196, align 8
  %197 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %198 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %197)
  %199 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %200 = load i32, i32* @MLX_CMD_ENQUIRY2, align 4
  %201 = call i8* @mlx_enquire(%struct.mlx_softc* %199, i32 %200, i32 4, i32* null)
  %202 = bitcast i8* %201 to %struct.TYPE_5__*
  %203 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %204 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %203, i32 0, i32 8
  store %struct.TYPE_5__* %202, %struct.TYPE_5__** %204, align 8
  %205 = icmp eq %struct.TYPE_5__* %202, null
  br i1 %205, label %206, label %214

206:                                              ; preds = %194
  %207 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %208 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %207)
  %209 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %210 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @device_printf(i32 %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %213 = load i32, i32* @ENXIO, align 4
  store i32 %213, i32* %2, align 4
  br label %358

214:                                              ; preds = %194
  %215 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %216 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %215, i32 0, i32 8
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = ashr i32 %219, 8
  %221 = and i32 %220, 255
  store i32 %221, i32* %7, align 4
  %222 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %223 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  switch i32 %224, label %309 [
    i32 131, label %225
    i32 130, label %270
    i32 129, label %283
    i32 128, label %296
  ]

225:                                              ; preds = %214
  %226 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %227 = load i32, i32* @MLX_CMD_ENQUIRY_OLD, align 4
  %228 = call i8* @mlx_enquire(%struct.mlx_softc* %226, i32 %227, i32 8, i32* null)
  %229 = bitcast i8* %228 to %struct.mlx_enquiry_old*
  store %struct.mlx_enquiry_old* %229, %struct.mlx_enquiry_old** %4, align 8
  %230 = icmp eq %struct.mlx_enquiry_old* %229, null
  br i1 %230, label %231, label %239

231:                                              ; preds = %225
  %232 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %233 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %232)
  %234 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %235 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @device_printf(i32 %236, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %238 = load i32, i32* @ENXIO, align 4
  store i32 %238, i32* %2, align 4
  br label %358

239:                                              ; preds = %225
  %240 = load %struct.mlx_enquiry_old*, %struct.mlx_enquiry_old** %4, align 8
  %241 = getelementptr inbounds %struct.mlx_enquiry_old, %struct.mlx_enquiry_old* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = shl i32 %242, 8
  %244 = or i32 805306368, %243
  %245 = load %struct.mlx_enquiry_old*, %struct.mlx_enquiry_old** %4, align 8
  %246 = getelementptr inbounds %struct.mlx_enquiry_old, %struct.mlx_enquiry_old* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %244, %247
  %249 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %250 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %249, i32 0, i32 8
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  store i32 %248, i32* %252, align 4
  %253 = load %struct.mlx_enquiry_old*, %struct.mlx_enquiry_old** %4, align 8
  %254 = getelementptr inbounds %struct.mlx_enquiry_old, %struct.mlx_enquiry_old* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %255, 42
  br i1 %256, label %257, label %266

257:                                              ; preds = %239
  %258 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %259 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @device_printf(i32 %260, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %262 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %263 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @device_printf(i32 %264, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  br label %266

266:                                              ; preds = %257, %239
  %267 = load %struct.mlx_enquiry_old*, %struct.mlx_enquiry_old** %4, align 8
  %268 = load i32, i32* @M_DEVBUF, align 4
  %269 = call i32 @free(%struct.mlx_enquiry_old* %267, i32 %268)
  br label %313

270:                                              ; preds = %214
  %271 = load i32, i32* %7, align 4
  %272 = icmp slt i32 %271, 51
  br i1 %272, label %273, label %282

273:                                              ; preds = %270
  %274 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %275 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @device_printf(i32 %276, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %278 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %279 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @device_printf(i32 %280, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %282

282:                                              ; preds = %273, %270
  br label %313

283:                                              ; preds = %214
  %284 = load i32, i32* %7, align 4
  %285 = icmp slt i32 %284, 6
  br i1 %285, label %286, label %295

286:                                              ; preds = %283
  %287 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %288 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @device_printf(i32 %289, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %291 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %292 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @device_printf(i32 %293, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  br label %295

295:                                              ; preds = %286, %283
  br label %313

296:                                              ; preds = %214
  %297 = load i32, i32* %7, align 4
  %298 = icmp slt i32 %297, 7
  br i1 %298, label %299, label %308

299:                                              ; preds = %296
  %300 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %301 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @device_printf(i32 %302, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %304 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %305 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @device_printf(i32 %306, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  br label %308

308:                                              ; preds = %299, %296
  br label %313

309:                                              ; preds = %214
  %310 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %311 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %310)
  %312 = load i32, i32* @ENXIO, align 4
  store i32 %312, i32* %2, align 4
  br label %358

313:                                              ; preds = %308, %295, %282, %266
  %314 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %315 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %314)
  %316 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %317 = call i32 @mlx_sglist_map(%struct.mlx_softc* %316)
  store i32 %317, i32* %6, align 4
  %318 = load i32, i32* %6, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %313
  %321 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %322 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @device_printf(i32 %323, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %325 = load i32, i32* %6, align 4
  store i32 %325, i32* %2, align 4
  br label %358

326:                                              ; preds = %313
  %327 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %328 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %327, i32 0, i32 7
  store i64 0, i64* %328, align 8
  %329 = load i32, i32* @MLX_REBUILDSTAT_IDLE, align 4
  %330 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %331 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %330, i32 0, i32 6
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  store i32 %329, i32* %332, align 4
  %333 = load i32, i32* @UID_ROOT, align 4
  %334 = load i32, i32* @GID_OPERATOR, align 4
  %335 = load i32, i32* @S_IRUSR, align 4
  %336 = load i32, i32* @S_IWUSR, align 4
  %337 = or i32 %335, %336
  %338 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %339 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @device_get_unit(i32 %340)
  %342 = call %struct.TYPE_6__* @make_dev(i32* @mlx_cdevsw, i32 0, i32 %333, i32 %334, i32 %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %341)
  %343 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %344 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %343, i32 0, i32 4
  store %struct.TYPE_6__* %342, %struct.TYPE_6__** %344, align 8
  %345 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %346 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %347 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %346, i32 0, i32 4
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 0
  store %struct.mlx_softc* %345, %struct.mlx_softc** %349, align 8
  %350 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %351 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %350, i32 0, i32 3
  %352 = load i32, i32* @hz, align 4
  %353 = load i32, i32* @mlx_periodic, align 4
  %354 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %355 = call i32 @callout_reset(i32* %351, i32 %352, i32 %353, %struct.mlx_softc* %354)
  %356 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %357 = call i32 @mlx_describe_controller(%struct.mlx_softc* %356)
  store i32 0, i32* %2, align 4
  br label %358

358:                                              ; preds = %326, %320, %309, %231, %206, %188, %177, %154, %129, %102, %59
  %359 = load i32, i32* %2, align 4
  ret i32 %359
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @mlx_v3_intaction(%struct.mlx_softc*, i32) #1

declare dso_local i32 @mlx_v3_fw_handshake(%struct.mlx_softc*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @mlx_v4_intaction(%struct.mlx_softc*, i32) #1

declare dso_local i32 @mlx_v4_fw_handshake(%struct.mlx_softc*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @mlx_v5_intaction(%struct.mlx_softc*, i32) #1

declare dso_local i32 @mlx_v5_fw_handshake(%struct.mlx_softc*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @MLX_IO_LOCK(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_IO_UNLOCK(%struct.mlx_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mlx_fw_message(%struct.mlx_softc*, i32, i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.mlx_softc*, i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @mlx_sglist_map(%struct.mlx_softc*) #1

declare dso_local i8* @mlx_enquire(%struct.mlx_softc*, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.mlx_enquiry_old*, i32) #1

declare dso_local %struct.TYPE_6__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.mlx_softc*) #1

declare dso_local i32 @mlx_describe_controller(%struct.mlx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
