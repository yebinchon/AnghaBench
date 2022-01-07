; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_pci.c_ips_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_pci.c_ips_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, i32, i32, i8*, i8*, i8*, i32*, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"in attach.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"IPS bioqueue lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"IPS Command Semaphore\00", align 1
@IPS_MORPHEUS_DEVICE_ID = common dso_local global i64 0, align 8
@ips_morpheus_reinit = common dso_local global i8* null, align 8
@ips_morpheus_intr = common dso_local global i8* null, align 8
@ips_issue_morpheus_cmd = common dso_local global i8* null, align 8
@ips_morpheus_poll = common dso_local global i8* null, align 8
@IPS_COPPERHEAD_DEVICE_ID = common dso_local global i64 0, align 8
@ips_copperhead_reinit = common dso_local global i8* null, align 8
@ips_copperhead_intr = common dso_local global i8* null, align 8
@ips_issue_copperhead_cmd = common dso_local global i8* null, align 8
@ips_copperhead_poll = common dso_local global i8* null, align 8
@IPS_MARCO_DEVICE_ID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"trying MEMIO\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"trying PORTIO\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"resource allocation failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"irq allocation failed\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"irq setup failed\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@IPS_MAX_SG_ELEMENTS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"can't alloc dma tag\0A\00", align 1
@ips_intrhook = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"IPS can't establish configuration hook\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ips_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @DEVICE_PRINTF(i32 1, i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @device_get_softc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 16
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 13
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 15
  %19 = call i32 @sema_init(i32* %18, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 13
  %24 = call i32 @callout_init_mtx(i32* %21, i32* %23, i32 0)
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @pci_get_device(i32 %25)
  %27 = load i64, i64* @IPS_MORPHEUS_DEVICE_ID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %1
  %30 = load i8*, i8** @ips_morpheus_reinit, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 12
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @ips_morpheus_intr, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @ips_issue_morpheus_cmd, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @ips_morpheus_poll, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  br label %81

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @pci_get_device(i32 %43)
  %45 = load i64, i64* @IPS_COPPERHEAD_DEVICE_ID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load i8*, i8** @ips_copperhead_reinit, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 12
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @ips_copperhead_intr, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @ips_issue_copperhead_cmd, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 11
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @ips_copperhead_poll, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 10
  store i8* %57, i8** %59, align 8
  br label %80

60:                                               ; preds = %42
  %61 = load i32, i32* %3, align 4
  %62 = call i64 @pci_get_device(i32 %61)
  %63 = load i64, i64* @IPS_MARCO_DEVICE_ID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load i8*, i8** @ips_morpheus_reinit, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 12
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @ips_morpheus_intr, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @ips_issue_morpheus_cmd, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 11
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @ips_morpheus_poll, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 10
  store i8* %75, i8** %77, align 8
  br label %79

78:                                               ; preds = %60
  br label %216

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %47
  br label %81

81:                                               ; preds = %80, %29
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @pci_enable_busmaster(i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 7
  store i32* null, i32** %85, align 8
  %86 = call i32 @PRINTF(i32 10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* %3, align 4
  %88 = call i64 @pci_get_device(i32 %87)
  %89 = load i64, i64* @IPS_COPPERHEAD_DEVICE_ID, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = call i8* @PCIR_BAR(i32 1)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 8
  store i8* %92, i8** %94, align 8
  br label %99

95:                                               ; preds = %81
  %96 = call i8* @PCIR_BAR(i32 0)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 8
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i32, i32* @SYS_RES_MEMORY, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 9
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 8
  %109 = load i32, i32* @RF_ACTIVE, align 4
  %110 = call i8* @bus_alloc_resource_any(i32 %103, i32 %106, i8** %108, i32 %109)
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 7
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %137, label %118

118:                                              ; preds = %99
  %119 = call i32 @PRINTF(i32 10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %120 = call i8* @PCIR_BAR(i32 0)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 8
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* @SYS_RES_IOPORT, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %3, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 8
  %132 = load i32, i32* @RF_ACTIVE, align 4
  %133 = call i8* @bus_alloc_resource_any(i32 %126, i32 %129, i8** %131, i32 %132)
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 7
  store i32* %134, i32** %136, align 8
  br label %137

137:                                              ; preds = %118, %99
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 7
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @device_printf(i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %145 = load i32, i32* @ENXIO, align 4
  store i32 %145, i32* %2, align 4
  br label %220

146:                                              ; preds = %137
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 6
  store i8* null, i8** %148, align 8
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* @SYS_RES_IRQ, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 6
  %153 = load i32, i32* @RF_SHAREABLE, align 4
  %154 = load i32, i32* @RF_ACTIVE, align 4
  %155 = or i32 %153, %154
  %156 = call i8* @bus_alloc_resource_any(i32 %149, i32 %150, i8** %152, i32 %155)
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 5
  store i8* %156, i8** %158, align 8
  %159 = icmp ne i8* %156, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %146
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @device_printf(i32 %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %216

163:                                              ; preds = %146
  %164 = load i32, i32* %3, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 5
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* @INTR_TYPE_BIO, align 4
  %169 = load i32, i32* @INTR_MPSAFE, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 4
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 3
  %177 = call i64 @bus_setup_intr(i32 %164, i8* %167, i32 %170, i32* null, i8* %173, %struct.TYPE_5__* %174, i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %163
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @device_printf(i32 %180, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %216

182:                                              ; preds = %163
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @bus_get_dma_tag(i32 %183)
  %185 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %186 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %187 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %188 = load i32, i32* @IPS_MAX_SG_ELEMENTS, align 4
  %189 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 2
  %192 = call i64 @bus_dma_tag_create(i32 %184, i32 1, i32 0, i32 %185, i32 %186, i32* null, i32* null, i32 %187, i32 %188, i32 %189, i32 0, i32* null, i32* null, i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %182
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @device_printf(i32 %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %216

197:                                              ; preds = %182
  %198 = load i32, i32* @ips_intrhook, align 4
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  store %struct.TYPE_5__* %202, %struct.TYPE_5__** %205, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = call i32 @bioq_init(i32* %207)
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = call i64 @config_intrhook_establish(%struct.TYPE_6__* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %197
  %214 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %216

215:                                              ; preds = %197
  store i32 0, i32* %2, align 4
  br label %220

216:                                              ; preds = %213, %194, %179, %160, %78
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %218 = call i32 @ips_pci_free(%struct.TYPE_5__* %217)
  %219 = load i32, i32* @ENXIO, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %216, %215, %142
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @DEVICE_PRINTF(i32, i32, i8*) #1

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sema_init(i32*, i32, i8*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PRINTF(i32, i8*) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i8*, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_6__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ips_pci_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
