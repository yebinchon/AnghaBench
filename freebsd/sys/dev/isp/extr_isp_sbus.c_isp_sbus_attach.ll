; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32* }
%struct.isp_sbussoftc = type { i32*, i64, i32*, i64, i32, %struct.TYPE_25__, i32, i32, i32*, i8*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, %struct.TYPE_25__*, %struct.TYPE_23__, i64, i32*, i32, i32, i32*, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_26__*, %struct.TYPE_22__ }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_22__ = type { i32* }
%union.anon = type { i8* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@mdvec = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@ISP_ROLE_INITIATOR = common dso_local global i32 0, align 4
@ISP_ROLE_TARGET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"setting role to 0x%x\0A\00", align 1
@ISP_DEFAULT_ROLES = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unable to map registers\0A\00", align 1
@BIU_REGS_OFF = common dso_local global i32 0, align 4
@BIU_BLOCK = common dso_local global i64 0, align 8
@_BLK_REG_SHFT = common dso_local global i64 0, align 8
@SBUS_MBOX_REGS_OFF = common dso_local global i32 0, align 4
@MBOX_BLOCK = common dso_local global i64 0, align 8
@SBUS_SXP_REGS_OFF = common dso_local global i32 0, align 4
@SXP_BLOCK = common dso_local global i64 0, align 8
@SBUS_RISC_REGS_OFF = common dso_local global i32 0, align 4
@RISC_BLOCK = common dso_local global i64 0, align 8
@DMA_REGS_OFF = common dso_local global i32 0, align 4
@DMA_BLOCK = common dso_local global i64 0, align 8
@ISP_BT_SBUS = common dso_local global i32 0, align 4
@ISP_HA_SCSI_UNKNOWN = common dso_local global i32 0, align 4
@SBUS_BURST_32 = common dso_local global i32 0, align 4
@BIU_SBUS_CONF1_FIFO_32 = common dso_local global i32 0, align 4
@BIU_SBUS_CONF1_FIFO_16 = common dso_local global i32 0, align 4
@BIU_SBUS_CONF1_BURST8 = common dso_local global i32 0, align 4
@BIU_SBUS_CONF1_FIFO_8 = common dso_local global i32 0, align 4
@BIU_BURST_ENABLE = common dso_local global i32 0, align 4
@ISP_CFG_NONVRAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"PTI,ptisp\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ptisp\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"isp_1000\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"fwload_disable\00", align 1
@ISP_CFG_NORELOAD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"iid\00", align 1
@ISP_CFG_OWNLOOPID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"could not allocate interrupt\0A\00", align 1
@ISP_IFLAGS = common dso_local global i32 0, align 4
@isp_platform_intr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"could not setup interrupt\0A\00", align 1
@ISP_LOGWARN = common dso_local global i32 0, align 4
@ISP_LOGERR = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ISP_LOGCONFIG = common dso_local global i32 0, align 4
@ISP_LOGINFO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @isp_sbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_sbus_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.isp_sbussoftc*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.anon, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.isp_sbussoftc* @device_get_softc(i8* %12)
  store %struct.isp_sbussoftc* %13, %struct.isp_sbussoftc** %4, align 8
  %14 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %15 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %14, i32 0, i32 10
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %18 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %17, i32 0, i32 9
  store i8* %16, i8** %18, align 8
  %19 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %20 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %19, i32 0, i32 5
  %21 = bitcast %struct.TYPE_25__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.TYPE_25__* @mdvec to i8*), i64 16, i1 false)
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 12
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 3
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = call i32 @mtx_init(i32* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %27)
  store i32 0, i32* %8, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @device_get_name(i8* %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @device_get_unit(i8* %31)
  %33 = call i64 @resource_int_value(i32 %30, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %1
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ISP_ROLE_INITIATOR, align 4
  %38 = load i32, i32* @ISP_ROLE_TARGET, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %36, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i8*, i8*, ...) @device_printf(i8* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %49

47:                                               ; preds = %35, %1
  %48 = load i32, i32* @ISP_DEFAULT_ROLES, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %51 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %53 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %55 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %57 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* @SYS_RES_MEMORY, align 4
  %60 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %61 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %60, i32 0, i32 1
  %62 = load i32, i32* @RF_ACTIVE, align 4
  %63 = call i8* @bus_alloc_resource_any(i8* %58, i32 %59, i64* %61, i32 %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %66 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %68 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %49
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 (i8*, i8*, ...) @device_printf(i8* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %394

74:                                               ; preds = %49
  %75 = load i32, i32* @BIU_REGS_OFF, align 4
  %76 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %77 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %76, i32 0, i32 8
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @BIU_BLOCK, align 8
  %80 = load i64, i64* @_BLK_REG_SHFT, align 8
  %81 = lshr i64 %79, %80
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %75, i32* %82, align 4
  %83 = load i32, i32* @SBUS_MBOX_REGS_OFF, align 4
  %84 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %85 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %84, i32 0, i32 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @MBOX_BLOCK, align 8
  %88 = load i64, i64* @_BLK_REG_SHFT, align 8
  %89 = lshr i64 %87, %88
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 %83, i32* %90, align 4
  %91 = load i32, i32* @SBUS_SXP_REGS_OFF, align 4
  %92 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %93 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %92, i32 0, i32 8
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @SXP_BLOCK, align 8
  %96 = load i64, i64* @_BLK_REG_SHFT, align 8
  %97 = lshr i64 %95, %96
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %91, i32* %98, align 4
  %99 = load i32, i32* @SBUS_RISC_REGS_OFF, align 4
  %100 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %101 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %100, i32 0, i32 8
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @RISC_BLOCK, align 8
  %104 = load i64, i64* @_BLK_REG_SHFT, align 8
  %105 = lshr i64 %103, %104
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %99, i32* %106, align 4
  %107 = load i32, i32* @DMA_REGS_OFF, align 4
  %108 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %109 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %108, i32 0, i32 8
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @DMA_BLOCK, align 8
  %112 = load i64, i64* @_BLK_REG_SHFT, align 8
  %113 = lshr i64 %111, %112
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32 %107, i32* %114, align 4
  %115 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %116 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 11
  store i32* %117, i32** %119, align 8
  %120 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %121 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %120, i32 0, i32 5
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 5
  store %struct.TYPE_25__* %121, %struct.TYPE_25__** %123, align 8
  %124 = load i32, i32* @ISP_BT_SBUS, align 4
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 10
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @ISP_HA_SCSI_UNKNOWN, align 4
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 9
  store i32 %127, i32* %129, align 8
  %130 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %131 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %130, i32 0, i32 7
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 8
  store i32* %131, i32** %133, align 8
  %134 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %135 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %134, i32 0, i32 6
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  store i32* %135, i32** %139, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 7
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %145 = call i64 @IS_FC(%struct.TYPE_24__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %74
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %150 = call %struct.TYPE_21__* @ISP_FC_PC(%struct.TYPE_24__* %149, i32 0)
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %74
  %153 = load i8*, i8** %3, align 8
  %154 = call i32 @sbus_get_clockfreq(i8* %153)
  %155 = add nsw i32 %154, 500000
  %156 = sdiv i32 %155, 1000000
  %157 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %158 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = load i8*, i8** %3, align 8
  %161 = call i32 @sbus_get_burstsz(i8* %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %152
  %165 = load i32, i32* @SBUS_BURST_32, align 4
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %164, %152
  %168 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %169 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 1
  store i32 0, i32* %170, align 4
  %171 = load i32, i32* %9, align 4
  %172 = and i32 %171, 32
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %167
  %175 = load i32, i32* @BIU_SBUS_CONF1_FIFO_32, align 4
  %176 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %177 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 4
  br label %201

179:                                              ; preds = %167
  %180 = load i32, i32* %9, align 4
  %181 = and i32 %180, 16
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i32, i32* @BIU_SBUS_CONF1_FIFO_16, align 4
  %185 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %186 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 1
  store i32 %184, i32* %187, align 4
  br label %200

188:                                              ; preds = %179
  %189 = load i32, i32* %9, align 4
  %190 = and i32 %189, 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load i32, i32* @BIU_SBUS_CONF1_BURST8, align 4
  %194 = load i32, i32* @BIU_SBUS_CONF1_FIFO_8, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %197 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 4
  br label %199

199:                                              ; preds = %192, %188
  br label %200

200:                                              ; preds = %199, %183
  br label %201

201:                                              ; preds = %200, %174
  %202 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %203 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %201
  %208 = load i32, i32* @BIU_BURST_ENABLE, align 4
  %209 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %210 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, %208
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %207, %201
  %215 = load i32, i32* @ISP_CFG_NONVRAM, align 4
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  %220 = load i8*, i8** %3, align 8
  %221 = call i32 @ofw_bus_get_name(i8* %220)
  %222 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %221)
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %214
  %225 = load i8*, i8** %3, align 8
  %226 = call i32 @ofw_bus_get_name(i8* %225)
  %227 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %226)
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %224, %214
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %231 = call %struct.TYPE_19__* @SDPARAM(%struct.TYPE_24__* %230, i32 0)
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  store i32 1, i32* %232, align 4
  br label %233

233:                                              ; preds = %229, %224
  %234 = call %struct.TYPE_26__* @firmware_get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 0
  store %struct.TYPE_26__* %234, %struct.TYPE_26__** %237, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 6
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %240, align 8
  %242 = icmp ne %struct.TYPE_26__* %241, null
  br i1 %242, label %243, label %257

243:                                              ; preds = %233
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 6
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = bitcast %union.anon* %11 to i8**
  store i8* %249, i8** %250, align 8
  %251 = bitcast %union.anon* %11 to i32**
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 5
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 2
  store i32* %252, i32** %256, align 8
  br label %257

257:                                              ; preds = %243, %233
  store i32 0, i32* %6, align 4
  %258 = load i8*, i8** %3, align 8
  %259 = call i32 @device_get_name(i8* %258)
  %260 = load i8*, i8** %3, align 8
  %261 = call i32 @device_get_unit(i8* %260)
  %262 = call i64 @resource_int_value(i32 %259, i32 %261, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %6)
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %273

264:                                              ; preds = %257
  %265 = load i32, i32* %6, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %264
  %268 = load i32, i32* @ISP_CFG_NORELOAD, align 4
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %267, %264, %257
  store i32 -1, i32* %10, align 4
  %274 = load i8*, i8** %3, align 8
  %275 = call i32 @device_get_name(i8* %274)
  %276 = load i8*, i8** %3, align 8
  %277 = call i32 @device_get_unit(i8* %276)
  %278 = call i64 @resource_int_value(i32 %275, i32 %277, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %6)
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %273
  %281 = load i32, i32* %6, align 4
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* @ISP_CFG_OWNLOOPID, align 4
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %280, %273
  %288 = load i32, i32* %10, align 4
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load i8*, i8** %3, align 8
  %292 = call i32 @OF_getscsinitid(i8* %291)
  store i32 %292, i32* %10, align 4
  br label %293

293:                                              ; preds = %290, %287
  %294 = load i32, i32* %10, align 4
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %296 = call %struct.TYPE_20__* @ISP_SPI_PC(%struct.TYPE_24__* %295, i32 0)
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 0
  store i32 %294, i32* %297, align 4
  store i32 0, i32* %7, align 4
  %298 = load i8*, i8** %3, align 8
  %299 = call i32 @device_get_name(i8* %298)
  %300 = load i8*, i8** %3, align 8
  %301 = call i32 @device_get_unit(i8* %300)
  %302 = call i64 @resource_int_value(i32 %299, i32 %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* %7)
  %303 = load i8*, i8** %3, align 8
  %304 = load i32, i32* @SYS_RES_IRQ, align 4
  %305 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %306 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %305, i32 0, i32 3
  %307 = load i32, i32* @RF_ACTIVE, align 4
  %308 = load i32, i32* @RF_SHAREABLE, align 4
  %309 = or i32 %307, %308
  %310 = call i8* @bus_alloc_resource_any(i8* %303, i32 %304, i64* %306, i32 %309)
  %311 = bitcast i8* %310 to i32*
  %312 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %313 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %312, i32 0, i32 2
  store i32* %311, i32** %313, align 8
  %314 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %315 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = icmp eq i32* %316, null
  br i1 %317, label %318, label %321

318:                                              ; preds = %293
  %319 = load i8*, i8** %3, align 8
  %320 = call i32 (i8*, i8*, ...) @device_printf(i8* %319, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %394

321:                                              ; preds = %293
  %322 = load i8*, i8** %3, align 8
  %323 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %324 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %323, i32 0, i32 2
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* @ISP_IFLAGS, align 4
  %327 = load i32, i32* @isp_platform_intr, align 4
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %329 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %330 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %329, i32 0, i32 4
  %331 = call i64 @bus_setup_intr(i8* %322, i32* %325, i32 %326, i32* null, i32 %327, %struct.TYPE_24__* %328, i32* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %321
  %334 = load i8*, i8** %3, align 8
  %335 = call i32 (i8*, i8*, ...) @device_printf(i8* %334, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %336 = load i8*, i8** %3, align 8
  %337 = load i32, i32* @SYS_RES_IRQ, align 4
  %338 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %339 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %342 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %341, i32 0, i32 2
  %343 = load i32*, i32** %342, align 8
  %344 = call i32 @bus_release_resource(i8* %336, i32 %337, i64 %340, i32* %343)
  br label %394

345:                                              ; preds = %321
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 1
  store i32 1, i32* %347, align 4
  %348 = load i32, i32* %7, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %345
  %351 = load i32, i32* %7, align 4
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i32 0, i32 2
  store i32 %351, i32* %353, align 8
  br label %360

354:                                              ; preds = %345
  %355 = load i32, i32* @ISP_LOGWARN, align 4
  %356 = load i32, i32* @ISP_LOGERR, align 4
  %357 = or i32 %355, %356
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 2
  store i32 %357, i32* %359, align 8
  br label %360

360:                                              ; preds = %354, %350
  %361 = load i64, i64* @bootverbose, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %371

363:                                              ; preds = %360
  %364 = load i32, i32* @ISP_LOGCONFIG, align 4
  %365 = load i32, i32* @ISP_LOGINFO, align 4
  %366 = or i32 %364, %365
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 8
  br label %371

371:                                              ; preds = %363, %360
  %372 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %373 = call i32 @ISP_LOCK(%struct.TYPE_24__* %372)
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %375 = call i64 @isp_reinit(%struct.TYPE_24__* %374, i32 1)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %371
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %379 = call i32 @ISP_UNLOCK(%struct.TYPE_24__* %378)
  br label %394

380:                                              ; preds = %371
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %382 = call i32 @ISP_UNLOCK(%struct.TYPE_24__* %381)
  %383 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %384 = call i64 @isp_attach(%struct.TYPE_24__* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %380
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %388 = call i32 @ISP_LOCK(%struct.TYPE_24__* %387)
  %389 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %390 = call i32 @isp_shutdown(%struct.TYPE_24__* %389)
  %391 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %392 = call i32 @ISP_UNLOCK(%struct.TYPE_24__* %391)
  br label %394

393:                                              ; preds = %380
  store i32 0, i32* %2, align 4
  br label %437

394:                                              ; preds = %386, %377, %333, %318, %71
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = icmp sgt i32 %397, 0
  br i1 %398, label %399, label %417

399:                                              ; preds = %394
  %400 = load i8*, i8** %3, align 8
  %401 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %402 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %401, i32 0, i32 2
  %403 = load i32*, i32** %402, align 8
  %404 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %405 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @bus_teardown_intr(i8* %400, i32* %403, i32 %406)
  %408 = load i8*, i8** %3, align 8
  %409 = load i32, i32* @SYS_RES_IRQ, align 4
  %410 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %411 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %410, i32 0, i32 3
  %412 = load i64, i64* %411, align 8
  %413 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %414 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %413, i32 0, i32 2
  %415 = load i32*, i32** %414, align 8
  %416 = call i32 @bus_release_resource(i8* %408, i32 %409, i64 %412, i32* %415)
  br label %417

417:                                              ; preds = %399, %394
  %418 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %419 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %418, i32 0, i32 0
  %420 = load i32*, i32** %419, align 8
  %421 = icmp ne i32* %420, null
  br i1 %421, label %422, label %432

422:                                              ; preds = %417
  %423 = load i8*, i8** %3, align 8
  %424 = load i32, i32* @SYS_RES_MEMORY, align 4
  %425 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %426 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.isp_sbussoftc*, %struct.isp_sbussoftc** %4, align 8
  %429 = getelementptr inbounds %struct.isp_sbussoftc, %struct.isp_sbussoftc* %428, i32 0, i32 0
  %430 = load i32*, i32** %429, align 8
  %431 = call i32 @bus_release_resource(i8* %423, i32 %424, i64 %427, i32* %430)
  br label %432

432:                                              ; preds = %422, %417
  %433 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %433, i32 0, i32 3
  %435 = call i32 @mtx_destroy(i32* %434)
  %436 = load i32, i32* @ENXIO, align 4
  store i32 %436, i32* %2, align 4
  br label %437

437:                                              ; preds = %432, %393
  %438 = load i32, i32* %2, align 4
  ret i32 %438
}

declare dso_local %struct.isp_sbussoftc* @device_get_softc(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i8*) #1

declare dso_local i32 @device_get_unit(i8*) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i64*, i32) #1

declare dso_local i64 @IS_FC(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_21__* @ISP_FC_PC(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sbus_get_clockfreq(i8*) #1

declare dso_local i32 @sbus_get_burstsz(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @ofw_bus_get_name(i8*) #1

declare dso_local %struct.TYPE_19__* @SDPARAM(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_26__* @firmware_get(i8*) #1

declare dso_local i32 @OF_getscsinitid(i8*) #1

declare dso_local %struct.TYPE_20__* @ISP_SPI_PC(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @bus_setup_intr(i8*, i32*, i32, i32*, i32, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @bus_release_resource(i8*, i32, i64, i32*) #1

declare dso_local i32 @ISP_LOCK(%struct.TYPE_24__*) #1

declare dso_local i64 @isp_reinit(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ISP_UNLOCK(%struct.TYPE_24__*) #1

declare dso_local i64 @isp_attach(%struct.TYPE_24__*) #1

declare dso_local i32 @isp_shutdown(%struct.TYPE_24__*) #1

declare dso_local i32 @bus_teardown_intr(i8*, i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
