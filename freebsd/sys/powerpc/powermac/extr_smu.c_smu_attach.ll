; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"smu\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"/u3\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@bs_le_tag = common dso_local global i32 0, align 4
@SMU_MAILBOX = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@smu_phys_callback = common dso_local global i32 0, align 4
@cpufreq_pre_change = common dso_local global i32 0, align 4
@smu_cpufreq_pre_change = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@cpufreq_post_change = common dso_local global i32 0, align 4
@smu_cpufreq_post_change = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sensors\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"smu-i2c-control\00", align 1
@SMU_CPUTEMP_CAL = common dso_local global i32 0, align 4
@SMU_CPUVOLT_CAL = common dso_local global i32 0, align 4
@SMU_SLOTPW_CAL = common dso_local global i32 0, align 4
@smu_set_sleepled = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"sleepled\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"server_mode\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@smu_server_mode = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Enable reboot after power failure\00", align 1
@smu_doorbell = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@smu_doorbell_intr = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@smu_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [12 x i32], align 16
  %7 = alloca [32 x i8], align 16
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.smu_softc* @device_get_softc(i32 %8)
  store %struct.smu_softc* %9, %struct.smu_softc** %3, align 8
  %10 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %11 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %10, i32 0, i32 20
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %12)
  %14 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %15 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %14, i32 0, i32 19
  store i32* null, i32** %15, align 8
  %16 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %17 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %19 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = call i32 @OF_finddevice(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %24 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %27 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %31 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %30, i32 0, i32 16
  %32 = call i32 @bus_dma_tag_create(i32* null, i32 16, i32 0, i32 %26, i32 %27, i32* null, i32* null, i32 %28, i32 1, i32 %29, i32 0, i32* null, i32* null, i32* %31)
  %33 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %34 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %33, i32 0, i32 18
  store i32* @bs_le_tag, i32** %34, align 8
  %35 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %36 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %35, i32 0, i32 18
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @SMU_MAILBOX, align 4
  %39 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %40 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %39, i32 0, i32 17
  %41 = call i32 @bus_space_map(i32* %37, i32 %38, i32 4, i32 0, i32* %40)
  %42 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %43 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %42, i32 0, i32 16
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %46 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %45, i32 0, i32 14
  %47 = bitcast i32* %46 to i8**
  %48 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %49 = load i32, i32* @BUS_DMA_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %52 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %51, i32 0, i32 15
  %53 = call i32 @bus_dmamem_alloc(i32 %44, i8** %47, i32 %50, i32* %52)
  %54 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %55 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %54, i32 0, i32 16
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %58 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %57, i32 0, i32 15
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %61 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %60, i32 0, i32 14
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load i32, i32* @smu_phys_callback, align 4
  %65 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %66 = call i32 @bus_dmamap_load(i32 %56, i32 %59, i32 %62, i32 %63, i32 %64, %struct.smu_softc* %65, i32 0)
  %67 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %68 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %67, i32 0, i32 13
  %69 = call i32 @STAILQ_INIT(i32* %68)
  %70 = load i32, i32* @cpufreq_pre_change, align 4
  %71 = load i32, i32* @smu_cpufreq_pre_change, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %74 = call i32 @EVENTHANDLER_REGISTER(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @cpufreq_post_change, align 4
  %76 = load i32, i32* @smu_cpufreq_post_change, align 4
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %79 = call i32 @EVENTHANDLER_REGISTER(i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %2, align 4
  %81 = call i64 @ofw_bus_get_node(i32 %80)
  store i64 %81, i64* %4, align 8
  %82 = load i32, i32* %2, align 4
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @smu_attach_fans(i32 %82, i64 %83)
  %85 = load i64, i64* %4, align 8
  %86 = call i64 @OF_child(i64 %85)
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %112, %25
  %88 = load i64, i64* %5, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %87
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %92 = call i32 @memset(i8* %91, i32 0, i32 32)
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %95 = call i32 @OF_getprop(i64 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %94, i32 32)
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %97 = call i64 @strncmp(i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i32, i32* %2, align 4
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @smu_attach_sensors(i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %99, %90
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %105 = call i64 @strncmp(i8* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 15)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %2, align 4
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @smu_attach_i2c(i32 %108, i64 %109)
  br label %111

111:                                              ; preds = %107, %103
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %5, align 8
  %114 = call i64 @OF_peer(i64 %113)
  store i64 %114, i64* %5, align 8
  br label %87

115:                                              ; preds = %87
  %116 = load i32, i32* %2, align 4
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @smu_attach_i2c(i32 %116, i64 %117)
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* @SMU_CPUTEMP_CAL, align 4
  %121 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 0
  %122 = call i32 @smu_get_datablock(i32 %119, i32 %120, i32* %121, i32 48)
  %123 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 4
  %124 = load i32, i32* %123, align 16
  %125 = shl i32 %124, 8
  %126 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 5
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %125, %127
  %129 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %130 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 6
  %132 = load i32, i32* %131, align 8
  %133 = shl i32 %132, 8
  %134 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 7
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %133, %135
  %137 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %138 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %2, align 4
  %140 = load i32, i32* @SMU_CPUVOLT_CAL, align 4
  %141 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 0
  %142 = call i32 @smu_get_datablock(i32 %139, i32 %140, i32* %141, i32 48)
  %143 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 4
  %144 = load i32, i32* %143, align 16
  %145 = shl i32 %144, 8
  %146 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 5
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %145, %147
  %149 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %150 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 6
  %152 = load i32, i32* %151, align 8
  %153 = shl i32 %152, 8
  %154 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 7
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %153, %155
  %157 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %158 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  %159 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 8
  %160 = load i32, i32* %159, align 16
  %161 = shl i32 %160, 8
  %162 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 9
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %161, %163
  %165 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %166 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 8
  %167 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 10
  %168 = load i32, i32* %167, align 8
  %169 = shl i32 %168, 8
  %170 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 11
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %169, %171
  %173 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %174 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %173, i32 0, i32 7
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %2, align 4
  %176 = load i32, i32* @SMU_SLOTPW_CAL, align 4
  %177 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 0
  %178 = call i32 @smu_get_datablock(i32 %175, i32 %176, i32* %177, i32 48)
  %179 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 4
  %180 = load i32, i32* %179, align 16
  %181 = shl i32 %180, 8
  %182 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 5
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %181, %183
  %185 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %186 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 8
  %187 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 6
  %188 = load i32, i32* %187, align 8
  %189 = shl i32 %188, 8
  %190 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 7
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %189, %191
  %193 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %194 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %193, i32 0, i32 9
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @smu_set_sleepled, align 4
  %196 = load i32, i32* %2, align 4
  %197 = call i32 @led_create(i32 %195, i32 %196, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %198 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %199 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %198, i32 0, i32 12
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* %2, align 4
  %201 = call i32 @device_get_sysctl_ctx(i32 %200)
  %202 = load i32, i32* %2, align 4
  %203 = call i32 @device_get_sysctl_tree(i32 %202)
  %204 = call i32 @SYSCTL_CHILDREN(i32 %203)
  %205 = load i32, i32* @OID_AUTO, align 4
  %206 = load i32, i32* @CTLTYPE_INT, align 4
  %207 = load i32, i32* @CTLFLAG_RW, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* %2, align 4
  %210 = load i32, i32* @smu_server_mode, align 4
  %211 = call i32 @SYSCTL_ADD_PROC(i32 %201, i32 %204, i32 %205, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %208, i32 %209, i32 0, i32 %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %212 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %213 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %212, i32 0, i32 0
  store i32 0, i32* %213, align 8
  %214 = load i32, i32* @smu_doorbell, align 4
  %215 = load i32, i32* @SYS_RES_IRQ, align 4
  %216 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %217 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %216, i32 0, i32 0
  %218 = load i32, i32* @RF_ACTIVE, align 4
  %219 = call i32 @bus_alloc_resource_any(i32 %214, i32 %215, i32* %217, i32 %218)
  %220 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %221 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %220, i32 0, i32 10
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* @smu_doorbell, align 4
  %223 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %224 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %223, i32 0, i32 10
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @INTR_TYPE_MISC, align 4
  %227 = load i32, i32* @INTR_MPSAFE, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @smu_doorbell_intr, align 4
  %230 = load i32, i32* %2, align 4
  %231 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %232 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %231, i32 0, i32 11
  %233 = call i32 @bus_setup_intr(i32 %222, i32 %225, i32 %228, i32* null, i32 %229, i32 %230, i32* %232)
  %234 = load %struct.smu_softc*, %struct.smu_softc** %3, align 8
  %235 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %234, i32 0, i32 10
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @rman_get_start(i32 %236)
  %238 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %239 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %240 = call i32 @powerpc_config_intr(i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %2, align 4
  %242 = call i32 @clock_register(i32 %241, i32 1000)
  %243 = load i32, i32* @shutdown_final, align 4
  %244 = load i32, i32* @smu_shutdown, align 4
  %245 = load i32, i32* %2, align 4
  %246 = load i32, i32* @SHUTDOWN_PRI_LAST, align 4
  %247 = call i32 @EVENTHANDLER_REGISTER(i32 %243, i32 %244, i32 %245, i32 %246)
  %248 = load i32, i32* %2, align 4
  %249 = call i32 @bus_generic_attach(i32 %248)
  ret i32 %249
}

declare dso_local %struct.smu_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @bus_dma_tag_create(i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_space_map(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.smu_softc*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @smu_attach_fans(i32, i64) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @smu_attach_sensors(i32, i64) #1

declare dso_local i32 @smu_attach_i2c(i32, i64) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @smu_get_datablock(i32, i32, i32*, i32) #1

declare dso_local i32 @led_create(i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @powerpc_config_intr(i32, i32, i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @clock_register(i32, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
