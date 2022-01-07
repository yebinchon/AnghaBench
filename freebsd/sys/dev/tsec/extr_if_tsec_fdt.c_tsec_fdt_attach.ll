; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.resource_list = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"fsl,etsec2\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"PHY not found in device tree\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fsl,etsec2-mdio\00", align 1
@TSEC_REG_MIIBASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"TSEC TX lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"TSEC RX lock\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"TSEC IC lock\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"could not allocate IO memory range!\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"could not be configured\0A\00", align 1
@TSEC_RID_TXIRQ = common dso_local global i32 0, align 4
@tsec_transmit_intr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@TSEC_RID_RXIRQ = common dso_local global i32 0, align 4
@tsec_receive_intr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@TSEC_RID_ERRIRQ = common dso_local global i32 0, align 4
@tsec_error_intr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tsec_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsec_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tsec_softc*, align 8
  %5 = alloca %struct.resource_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.tsec_softc* @device_get_softc(i32 %12)
  store %struct.tsec_softc* %13, %struct.tsec_softc** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %16 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %15, i32 0, i32 21
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ofw_bus_get_node(i32 %17)
  %19 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %20 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %19, i32 0, i32 20
  store i32 %18, i32* %20, align 4
  %21 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %22 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %21, i32 0, i32 20
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @fdt_addrsize_cells(i32 %23, i32* %9, i32* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @ofw_bus_is_compatible(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_get_parent(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32 %33, i32 %34)
  store %struct.resource_list* %35, %struct.resource_list** %5, align 8
  %36 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %37 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %36, i32 0, i32 20
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @OF_child(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %45 = call i32 @ofw_bus_reg_to_rl(i32 %40, i32 %41, i32 %42, i32 %43, %struct.resource_list* %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %49 = call i32 @ofw_bus_intr_to_rl(i32 %46, i32 %47, %struct.resource_list* %48, i32* null)
  br label %50

50:                                               ; preds = %31, %27
  %51 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %52 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %51, i32 0, i32 20
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @OF_getencprop(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32 4)
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %233

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @OF_node_from_xref(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @OF_parent(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %67 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %66, i32 0, i32 19
  %68 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %69 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %68, i32 0, i32 18
  %70 = call i32 @OF_decode_addr(i32 %65, i32 0, i32* %67, i32* %69, i32* null)
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %73 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %72, i32 0, i32 17
  %74 = call i64 @OF_getencprop(i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %73, i32 4)
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @ofw_bus_node_is_compatible(i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %60
  %79 = load i32, i32* @TSEC_REG_MIIBASE, align 4
  %80 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %81 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %80, i32 0, i32 16
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %60
  %83 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %84 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %83, i32 0, i32 15
  %85 = call i32 @callout_init(i32* %84, i32 1)
  %86 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %87 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @device_get_nameunit(i32 %88)
  %90 = load i32, i32* @MTX_DEF, align 4
  %91 = call i32 @mtx_init(i32* %87, i32 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %93 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @device_get_nameunit(i32 %94)
  %96 = load i32, i32* @MTX_DEF, align 4
  %97 = call i32 @mtx_init(i32* %93, i32 %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %99 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %98, i32 0, i32 14
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @device_get_nameunit(i32 %100)
  %102 = load i32, i32* @MTX_DEF, align 4
  %103 = call i32 @mtx_init(i32* %99, i32 %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %105 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @SYS_RES_MEMORY, align 4
  %108 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %109 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %108, i32 0, i32 3
  %110 = load i32, i32* @RF_ACTIVE, align 4
  %111 = call i32* @bus_alloc_resource_any(i32 %106, i32 %107, i64* %109, i32 %110)
  %112 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %113 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %112, i32 0, i32 2
  store i32* %111, i32** %113, align 8
  %114 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %115 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %82
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %225

121:                                              ; preds = %82
  %122 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %123 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @rman_get_bushandle(i32* %124)
  %126 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %127 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %126, i32 0, i32 13
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %130 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @rman_get_bustag(i32* %131)
  %133 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %134 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %133, i32 0, i32 13
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  %136 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %137 = call i64 @tsec_attach(%struct.tsec_softc* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %121
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @device_printf(i32 %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %215

142:                                              ; preds = %121
  %143 = load i32, i32* @TSEC_RID_TXIRQ, align 4
  %144 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %145 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  %146 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %147 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %148 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %147, i32 0, i32 6
  %149 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %150 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %149, i32 0, i32 5
  %151 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %152 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %151, i32 0, i32 4
  %153 = load i32, i32* @tsec_transmit_intr, align 4
  %154 = call i32 @tsec_setup_intr(%struct.tsec_softc* %146, i32* %148, i32* %150, i32* %152, i32 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %142
  br label %215

158:                                              ; preds = %142
  %159 = load i32, i32* @TSEC_RID_RXIRQ, align 4
  %160 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %161 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %160, i32 0, i32 7
  store i32 %159, i32* %161, align 4
  %162 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %163 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %164 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %163, i32 0, i32 9
  %165 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %166 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %165, i32 0, i32 8
  %167 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %168 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %167, i32 0, i32 7
  %169 = load i32, i32* @tsec_receive_intr, align 4
  %170 = call i32 @tsec_setup_intr(%struct.tsec_softc* %162, i32* %164, i32* %166, i32* %168, i32 %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %158
  br label %203

174:                                              ; preds = %158
  %175 = load i32, i32* @TSEC_RID_ERRIRQ, align 4
  %176 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %177 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %176, i32 0, i32 10
  store i32 %175, i32* %177, align 8
  %178 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %179 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %180 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %179, i32 0, i32 12
  %181 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %182 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %181, i32 0, i32 11
  %183 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %184 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %183, i32 0, i32 10
  %185 = load i32, i32* @tsec_error_intr, align 4
  %186 = call i32 @tsec_setup_intr(%struct.tsec_softc* %178, i32* %180, i32* %182, i32* %184, i32 %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %174
  br label %191

190:                                              ; preds = %174
  store i32 0, i32* %2, align 4
  br label %233

191:                                              ; preds = %189
  %192 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %193 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %194 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %193, i32 0, i32 9
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %197 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %200 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @tsec_release_intr(%struct.tsec_softc* %192, i32 %195, i32 %198, i32 %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %203

203:                                              ; preds = %191, %173
  %204 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %205 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %206 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %209 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %212 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @tsec_release_intr(%struct.tsec_softc* %204, i32 %207, i32 %210, i32 %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %215

215:                                              ; preds = %203, %157, %139
  %216 = load i32, i32* %3, align 4
  %217 = load i32, i32* @SYS_RES_MEMORY, align 4
  %218 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %219 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %222 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @bus_release_resource(i32 %216, i32 %217, i64 %220, i32* %223)
  br label %225

225:                                              ; preds = %215, %118
  %226 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %227 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %226, i32 0, i32 1
  %228 = call i32 @mtx_destroy(i32* %227)
  %229 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %230 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %229, i32 0, i32 0
  %231 = call i32 @mtx_destroy(i32* %230)
  %232 = load i32, i32* @ENXIO, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %225, %190, %56
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.tsec_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @fdt_addrsize_cells(i32, i32*, i32*) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @ofw_bus_reg_to_rl(i32, i32, i32, i32, %struct.resource_list*) #1

declare dso_local i32 @ofw_bus_intr_to_rl(i32, i32, %struct.resource_list*, i32*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @OF_decode_addr(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i32, i8*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i64 @tsec_attach(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_setup_intr(%struct.tsec_softc*, i32*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @tsec_release_intr(%struct.tsec_softc*, i32, i32, i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
