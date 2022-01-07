; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { i32, i32, i32, %struct.f54rreg*, i8*, %struct.f54wreg*, i8*, %struct.m32xreg*, i32, i32*, i8*, i8*, i32, i32, i32 }
%struct.f54rreg = type { i32 }
%struct.f54wreg = type { i32 }
%struct.m32xreg = type { i32 }
%struct.resource = type { i32 }

@mn_attach.once = internal global i32 0, align 4
@mntypestruct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ng_newtype failed\0A\00", align 1
@M_MN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@E1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mn%d\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@mn_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@PCIR_COMMAND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@PCIM_CMD_PERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"mn%d: Munich32X\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" Rev 2.2\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" Rev 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c", Falc54\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" Rev < 1.3\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" Rev 1.3\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" Rev 1.4\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"-LH Rev 1.1\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"-LH Rev 1.3\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"ng_make_node_common failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@NG_MN_NODE_TYPE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mn_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @mn_attach.once, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = call i64 @ng_newtype(i32* @mntypestruct)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* @mn_attach.once, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @mn_attach.once, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @M_MN, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @malloc(i32 104, i32 %21, i32 %24)
  %26 = inttoptr i64 %25 to %struct.mn_softc*
  store %struct.mn_softc* %26, %struct.mn_softc** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %29 = call i32 @device_set_softc(i32 %27, %struct.mn_softc* %28)
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %31, i32 0, i32 14
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_get_unit(i32 %33)
  %35 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %36 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @E1, align 4
  %38 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %39 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %38, i32 0, i32 13
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %41 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %44 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @sprintf(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = call i32 @PCIR_BAR(i32 0)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SYS_RES_MEMORY, align 4
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = call i8* @bus_alloc_resource_any(i32 %48, i32 %49, i32* %7, i32 %50)
  %52 = bitcast i8* %51 to %struct.resource*
  store %struct.resource* %52, %struct.resource** %9, align 8
  %53 = load %struct.resource*, %struct.resource** %9, align 8
  %54 = icmp eq %struct.resource* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %20
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %59 = load i32, i32* @M_MN, align 4
  %60 = call i32 @free(%struct.mn_softc* %58, i32 %59)
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %2, align 4
  br label %247

62:                                               ; preds = %20
  %63 = load %struct.resource*, %struct.resource** %9, align 8
  %64 = call i8* @rman_get_virtual(%struct.resource* %63)
  %65 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %66 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct.resource*, %struct.resource** %9, align 8
  %68 = call i8* @rman_get_start(%struct.resource* %67)
  %69 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %70 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %69, i32 0, i32 11
  store i8* %68, i8** %70, align 8
  %71 = call i32 @PCIR_BAR(i32 1)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @SYS_RES_MEMORY, align 4
  %74 = load i32, i32* @RF_ACTIVE, align 4
  %75 = call i8* @bus_alloc_resource_any(i32 %72, i32 %73, i32* %7, i32 %74)
  %76 = bitcast i8* %75 to %struct.resource*
  store %struct.resource* %76, %struct.resource** %9, align 8
  %77 = load %struct.resource*, %struct.resource** %9, align 8
  %78 = icmp eq %struct.resource* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %62
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %83 = load i32, i32* @M_MN, align 4
  %84 = call i32 @free(%struct.mn_softc* %82, i32 %83)
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %247

86:                                               ; preds = %62
  %87 = load %struct.resource*, %struct.resource** %9, align 8
  %88 = call i8* @rman_get_virtual(%struct.resource* %87)
  %89 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %90 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.resource*, %struct.resource** %9, align 8
  %92 = call i8* @rman_get_start(%struct.resource* %91)
  %93 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %94 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %93, i32 0, i32 10
  store i8* %92, i8** %94, align 8
  store i32 0, i32* %7, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @SYS_RES_IRQ, align 4
  %97 = load i32, i32* @RF_SHAREABLE, align 4
  %98 = load i32, i32* @RF_ACTIVE, align 4
  %99 = or i32 %97, %98
  %100 = call i8* @bus_alloc_resource_any(i32 %95, i32 %96, i32* %7, i32 %99)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %103 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %102, i32 0, i32 9
  store i32* %101, i32** %103, align 8
  %104 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %105 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %104, i32 0, i32 9
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %86
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %111 = load i32, i32* @M_MN, align 4
  %112 = call i32 @free(%struct.mn_softc* %110, i32 %111)
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %2, align 4
  br label %247

114:                                              ; preds = %86
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %117 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %116, i32 0, i32 9
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @INTR_TYPE_NET, align 4
  %120 = load i32, i32* @mn_intr, align 4
  %121 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %122 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %123 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %122, i32 0, i32 8
  %124 = call i32 @bus_setup_intr(i32 %115, i32* %118, i32 %119, i32* null, i32 %120, %struct.mn_softc* %121, i32* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %114
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %129 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %130 = load i32, i32* @M_MN, align 4
  %131 = call i32 @free(%struct.mn_softc* %129, i32 %130)
  %132 = load i32, i32* @ENXIO, align 4
  store i32 %132, i32* %2, align 4
  br label %247

133:                                              ; preds = %114
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @PCIR_COMMAND, align 4
  %136 = call i32 @pci_read_config(i32 %134, i32 %135, i32 2)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @PCIR_COMMAND, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @PCIM_CMD_PERRESPEN, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @pci_write_config(i32 %139, i32 %140, i32 %145, i32 2)
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @PCIR_COMMAND, align 4
  %149 = call i32 @pci_read_config(i32 %147, i32 %148, i32 1)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @pci_get_revid(i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %155 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %154, i32 0, i32 6
  %156 = load i8*, i8** %155, align 8
  %157 = bitcast i8* %156 to %struct.m32xreg*
  %158 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %159 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %158, i32 0, i32 7
  store %struct.m32xreg* %157, %struct.m32xreg** %159, align 8
  %160 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %161 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = bitcast i8* %162 to %struct.f54wreg*
  %164 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %165 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %164, i32 0, i32 5
  store %struct.f54wreg* %163, %struct.f54wreg** %165, align 8
  %166 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %167 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %166, i32 0, i32 4
  %168 = load i8*, i8** %167, align 8
  %169 = bitcast i8* %168 to %struct.f54rreg*
  %170 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %171 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %170, i32 0, i32 3
  store %struct.f54rreg* %169, %struct.f54rreg** %171, align 8
  %172 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %173 = call i32 @mn_reset(%struct.mn_softc* %172)
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %247

177:                                              ; preds = %133
  %178 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %179 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %6, align 4
  switch i32 %182, label %185 [
    i32 19, label %183
  ]

183:                                              ; preds = %177
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %188

185:                                              ; preds = %177
  %186 = load i32, i32* %6, align 4
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %185, %183
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %190 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %191 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %190, i32 0, i32 3
  %192 = load %struct.f54rreg*, %struct.f54rreg** %191, align 8
  %193 = getelementptr inbounds %struct.f54rreg, %struct.f54rreg* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  switch i32 %194, label %205 [
    i32 0, label %195
    i32 1, label %197
    i32 2, label %199
    i32 16, label %201
    i32 19, label %203
  ]

195:                                              ; preds = %188
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %212

197:                                              ; preds = %188
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %212

199:                                              ; preds = %188
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %212

201:                                              ; preds = %188
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %212

203:                                              ; preds = %188
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %212

205:                                              ; preds = %188
  %206 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %207 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %206, i32 0, i32 3
  %208 = load %struct.f54rreg*, %struct.f54rreg** %207, align 8
  %209 = getelementptr inbounds %struct.f54rreg, %struct.f54rreg* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %205, %203, %201, %199, %197, %195
  %213 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %214 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %213, i32 0, i32 1
  %215 = call i64 @ng_make_node_common(i32* @mntypestruct, i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %247

219:                                              ; preds = %212
  %220 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %221 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %224 = call i32 @NG_NODE_SET_PRIVATE(i32 %222, %struct.mn_softc* %223)
  %225 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %226 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i8*, i8** @NG_MN_NODE_TYPE, align 8
  %229 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %230 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @sprintf(i32 %227, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %228, i32 %231)
  %233 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %234 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %237 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i64 @ng_name_node(i32 %235, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %219
  %242 = load %struct.mn_softc*, %struct.mn_softc** %4, align 8
  %243 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @NG_NODE_UNREF(i32 %244)
  store i32 0, i32* %2, align 4
  br label %247

246:                                              ; preds = %219
  store i32 0, i32* %2, align 4
  br label %247

247:                                              ; preds = %246, %241, %217, %176, %127, %108, %79, %55
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i64 @ng_newtype(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_set_softc(i32, %struct.mn_softc*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(%struct.mn_softc*, i32) #1

declare dso_local i8* @rman_get_virtual(%struct.resource*) #1

declare dso_local i8* @rman_get_start(%struct.resource*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.mn_softc*, i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @mn_reset(%struct.mn_softc*) #1

declare dso_local i64 @ng_make_node_common(i32*, i32*) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32, %struct.mn_softc*) #1

declare dso_local i64 @ng_name_node(i32, i32) #1

declare dso_local i32 @NG_NODE_UNREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
