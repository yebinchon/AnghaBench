; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_softc = type { i32, i64, i32, i32**, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, i32**, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.mtk_pci_range = type { i64, i64 }

@mt_sc = common dso_local global %struct.mtk_pci_softc* null, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MTK_SOC_MT7621 = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"could not allocate interrupt resource %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"could not retrieve 'ranges' data\0A\00", align 1
@MTK_PCIE0_IRQ = common dso_local global i64 0, align 8
@MTK_PCIE2_IRQ = common dso_local global i64 0, align 8
@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"mtk pcie memory window\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to setup memory rman\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"mtk pcie io window\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to setup io rman\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"mtk pcie irqs\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to setup irq rman\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"pcie phy init failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@mtk_pci_intr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"could not setup intr handler %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"could not attach pci bus\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"could not attach to bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pci_softc*, align 8
  %5 = alloca %struct.mtk_pci_range, align 8
  %6 = alloca %struct.mtk_pci_range, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.mtk_pci_softc* @device_get_softc(i32 %11)
  store %struct.mtk_pci_softc* %12, %struct.mtk_pci_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %15 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %14, i32 0, i32 14
  store i32 %13, i32* %15, align 8
  %16 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  store %struct.mtk_pci_softc* %16, %struct.mtk_pci_softc** @mt_sc, align 8
  %17 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SYS_RES_MEMORY, align 4
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call i8* @bus_alloc_resource_any(i32 %19, i32 %20, i32* %10, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %24, i32 0, i32 3
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  store i32* %23, i32** %27, align 8
  %28 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %29 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %28, i32 0, i32 3
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %415

38:                                               ; preds = %1
  %39 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %40 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MTK_SOC_MT7621, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %46 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %45, i32 0, i32 2
  store i32 3, i32* %46, align 8
  br label %66

47:                                               ; preds = %38
  %48 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %49 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  %50 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %51 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %50, i32 0, i32 3
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %55 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %54, i32 0, i32 3
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %59 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %58, i32 0, i32 7
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %63 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %62, i32 0, i32 7
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %47, %44
  store i32 1, i32* %9, align 4
  br label %67

67:                                               ; preds = %100, %66
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %70 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp sle i32 %68, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %67
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @SYS_RES_IRQ, align 4
  %78 = load i32, i32* @RF_ACTIVE, align 4
  %79 = call i8* @bus_alloc_resource_any(i32 %76, i32 %77, i32* %10, i32 %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %82 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %81, i32 0, i32 3
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  store i32* %80, i32** %86, align 8
  %87 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %88 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %87, i32 0, i32 3
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %73
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %349

99:                                               ; preds = %73
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %67

103:                                              ; preds = %67
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @ofw_bus_get_node(i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i64 @OF_xref_from_node(i32 %106)
  store i64 %107, i64* %8, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @mtk_pci_ranges(i32 %108, %struct.mtk_pci_range* %5, %struct.mtk_pci_range* %6)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i32, i32* %3, align 4
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %349

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.mtk_pci_range, %struct.mtk_pci_range* %5, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %118 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %117, i32 0, i32 11
  store i64 %116, i64* %118, align 8
  %119 = getelementptr inbounds %struct.mtk_pci_range, %struct.mtk_pci_range* %5, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %122 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %121, i32 0, i32 10
  store i64 %120, i64* %122, align 8
  %123 = getelementptr inbounds %struct.mtk_pci_range, %struct.mtk_pci_range* %6, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %126 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %125, i32 0, i32 13
  store i64 %124, i64* %126, align 8
  %127 = getelementptr inbounds %struct.mtk_pci_range, %struct.mtk_pci_range* %6, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %130 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %129, i32 0, i32 12
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* @MTK_PCIE0_IRQ, align 8
  %132 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %133 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %132, i32 0, i32 9
  store i64 %131, i64* %133, align 8
  %134 = load i64, i64* @MTK_PCIE2_IRQ, align 8
  %135 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %136 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %135, i32 0, i32 8
  store i64 %134, i64* %136, align 8
  %137 = load i8*, i8** @RMAN_ARRAY, align 8
  %138 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %139 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i8* %137, i8** %140, align 8
  %141 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %142 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %143, align 8
  %144 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %145 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %144, i32 0, i32 4
  %146 = call i64 @rman_init(%struct.TYPE_4__* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %164, label %148

148:                                              ; preds = %114
  %149 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %150 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %149, i32 0, i32 4
  %151 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %152 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %151, i32 0, i32 13
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %155 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %154, i32 0, i32 13
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %158 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %157, i32 0, i32 12
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %156, %159
  %161 = sub nsw i64 %160, 1
  %162 = call i64 @rman_manage_region(%struct.TYPE_4__* %150, i64 %153, i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %148, %114
  %165 = load i32, i32* %3, align 4
  %166 = call i32 (i32, i8*, ...) @device_printf(i32 %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %349

167:                                              ; preds = %148
  %168 = load i8*, i8** @RMAN_ARRAY, align 8
  %169 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %170 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i8* %168, i8** %171, align 8
  %172 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %173 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %174, align 8
  %175 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %176 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %175, i32 0, i32 5
  %177 = call i64 @rman_init(%struct.TYPE_4__* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %195, label %179

179:                                              ; preds = %167
  %180 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %181 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %180, i32 0, i32 5
  %182 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %183 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %182, i32 0, i32 11
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %186 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %185, i32 0, i32 11
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %189 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %188, i32 0, i32 10
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %187, %190
  %192 = sub nsw i64 %191, 1
  %193 = call i64 @rman_manage_region(%struct.TYPE_4__* %181, i64 %184, i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %179, %167
  %196 = load i32, i32* %3, align 4
  %197 = call i32 (i32, i8*, ...) @device_printf(i32 %196, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %349

198:                                              ; preds = %179
  %199 = load i8*, i8** @RMAN_ARRAY, align 8
  %200 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %201 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i8* %199, i8** %202, align 8
  %203 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %204 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %205, align 8
  %206 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %207 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %206, i32 0, i32 6
  %208 = call i64 @rman_init(%struct.TYPE_4__* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %221, label %210

210:                                              ; preds = %198
  %211 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %212 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %211, i32 0, i32 6
  %213 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %214 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %213, i32 0, i32 9
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %217 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %216, i32 0, i32 8
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @rman_manage_region(%struct.TYPE_4__* %212, i64 %215, i64 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %210, %198
  %222 = load i32, i32* %3, align 4
  %223 = call i32 (i32, i8*, ...) @device_printf(i32 %222, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %349

224:                                              ; preds = %210
  %225 = load i32, i32* %3, align 4
  %226 = call i64 @mtk_pcie_phy_init(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load i32, i32* %3, align 4
  %230 = call i32 (i32, i8*, ...) @device_printf(i32 %229, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %337

231:                                              ; preds = %224
  %232 = load i32, i32* %3, align 4
  %233 = load i64, i64* %8, align 8
  %234 = call i32* @intr_pic_register(i32 %232, i64 %233)
  %235 = icmp eq i32* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i32, i32* %3, align 4
  %238 = call i32 (i32, i8*, ...) @device_printf(i32 %237, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %337

239:                                              ; preds = %231
  store i32 1, i32* %9, align 4
  br label %240

240:                                              ; preds = %279, %239
  %241 = load i32, i32* %9, align 4
  %242 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %243 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = icmp sle i32 %241, %244
  br i1 %245, label %246, label %282

246:                                              ; preds = %240
  %247 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %248 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %247, i32 0, i32 7
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sub nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32*, i32** %249, i64 %252
  store i32* null, i32** %253, align 8
  %254 = load i32, i32* %3, align 4
  %255 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %256 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %255, i32 0, i32 3
  %257 = load i32**, i32*** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %257, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* @INTR_TYPE_MISC, align 4
  %263 = load i32, i32* @mtk_pci_intr, align 4
  %264 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %265 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %266 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %265, i32 0, i32 7
  %267 = load i32**, i32*** %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sub nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %267, i64 %270
  %272 = call i64 @bus_setup_intr(i32 %254, i32* %261, i32 %262, i32 %263, i32* null, %struct.mtk_pci_softc* %264, i32** %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %246
  %275 = load i32, i32* %3, align 4
  %276 = load i32, i32* %9, align 4
  %277 = call i32 (i32, i8*, ...) @device_printf(i32 %275, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %276)
  br label %297

278:                                              ; preds = %246
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %240

282:                                              ; preds = %240
  %283 = load i32, i32* %3, align 4
  %284 = call i32* @device_add_child(i32 %283, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 -1)
  %285 = icmp eq i32* %284, null
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load i32, i32* %3, align 4
  %288 = call i32 (i32, i8*, ...) @device_printf(i32 %287, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %297

289:                                              ; preds = %282
  %290 = load i32, i32* %3, align 4
  %291 = call i64 @bus_generic_attach(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = load i32, i32* %3, align 4
  %295 = call i32 (i32, i8*, ...) @device_printf(i32 %294, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %297

296:                                              ; preds = %289
  store i32 0, i32* %2, align 4
  br label %415

297:                                              ; preds = %293, %286, %274
  store i32 1, i32* %9, align 4
  br label %298

298:                                              ; preds = %333, %297
  %299 = load i32, i32* %9, align 4
  %300 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %301 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = icmp sle i32 %299, %302
  br i1 %303, label %304, label %336

304:                                              ; preds = %298
  %305 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %306 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %305, i32 0, i32 7
  %307 = load i32**, i32*** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32*, i32** %307, i64 %310
  %312 = load i32*, i32** %311, align 8
  %313 = icmp ne i32* %312, null
  br i1 %313, label %314, label %332

314:                                              ; preds = %304
  %315 = load i32, i32* %3, align 4
  %316 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %317 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %316, i32 0, i32 3
  %318 = load i32**, i32*** %317, align 8
  %319 = load i32, i32* %9, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32*, i32** %318, i64 %320
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %324 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %323, i32 0, i32 7
  %325 = load i32**, i32*** %324, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sub nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32*, i32** %325, i64 %328
  %330 = load i32*, i32** %329, align 8
  %331 = call i32 @bus_teardown_intr(i32 %315, i32* %322, i32* %330)
  br label %332

332:                                              ; preds = %314, %304
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %9, align 4
  br label %298

336:                                              ; preds = %298
  br label %337

337:                                              ; preds = %336, %236, %228
  %338 = load i32, i32* %3, align 4
  %339 = call i32 @mtk_pcie_phy_stop(i32 %338)
  %340 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %341 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %340, i32 0, i32 6
  %342 = call i32 @rman_fini(%struct.TYPE_4__* %341)
  %343 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %344 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %343, i32 0, i32 5
  %345 = call i32 @rman_fini(%struct.TYPE_4__* %344)
  %346 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %347 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %346, i32 0, i32 4
  %348 = call i32 @rman_fini(%struct.TYPE_4__* %347)
  br label %349

349:                                              ; preds = %337, %221, %195, %164, %111, %95
  store %struct.mtk_pci_softc* null, %struct.mtk_pci_softc** @mt_sc, align 8
  %350 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %351 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %350, i32 0, i32 3
  %352 = load i32**, i32*** %351, align 8
  %353 = getelementptr inbounds i32*, i32** %352, i64 0
  %354 = load i32*, i32** %353, align 8
  %355 = icmp ne i32* %354, null
  br i1 %355, label %356, label %365

356:                                              ; preds = %349
  %357 = load i32, i32* %3, align 4
  %358 = load i32, i32* @SYS_RES_MEMORY, align 4
  %359 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %360 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %359, i32 0, i32 3
  %361 = load i32**, i32*** %360, align 8
  %362 = getelementptr inbounds i32*, i32** %361, i64 0
  %363 = load i32*, i32** %362, align 8
  %364 = call i32 @bus_release_resource(i32 %357, i32 %358, i32 0, i32* %363)
  br label %365

365:                                              ; preds = %356, %349
  %366 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %367 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %366, i32 0, i32 3
  %368 = load i32**, i32*** %367, align 8
  %369 = getelementptr inbounds i32*, i32** %368, i64 1
  %370 = load i32*, i32** %369, align 8
  %371 = icmp ne i32* %370, null
  br i1 %371, label %372, label %381

372:                                              ; preds = %365
  %373 = load i32, i32* %3, align 4
  %374 = load i32, i32* @SYS_RES_IRQ, align 4
  %375 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %376 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %375, i32 0, i32 3
  %377 = load i32**, i32*** %376, align 8
  %378 = getelementptr inbounds i32*, i32** %377, i64 1
  %379 = load i32*, i32** %378, align 8
  %380 = call i32 @bus_release_resource(i32 %373, i32 %374, i32 0, i32* %379)
  br label %381

381:                                              ; preds = %372, %365
  %382 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %383 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %382, i32 0, i32 3
  %384 = load i32**, i32*** %383, align 8
  %385 = getelementptr inbounds i32*, i32** %384, i64 2
  %386 = load i32*, i32** %385, align 8
  %387 = icmp ne i32* %386, null
  br i1 %387, label %388, label %397

388:                                              ; preds = %381
  %389 = load i32, i32* %3, align 4
  %390 = load i32, i32* @SYS_RES_IRQ, align 4
  %391 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %392 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %391, i32 0, i32 3
  %393 = load i32**, i32*** %392, align 8
  %394 = getelementptr inbounds i32*, i32** %393, i64 2
  %395 = load i32*, i32** %394, align 8
  %396 = call i32 @bus_release_resource(i32 %389, i32 %390, i32 1, i32* %395)
  br label %397

397:                                              ; preds = %388, %381
  %398 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %399 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %398, i32 0, i32 3
  %400 = load i32**, i32*** %399, align 8
  %401 = getelementptr inbounds i32*, i32** %400, i64 3
  %402 = load i32*, i32** %401, align 8
  %403 = icmp ne i32* %402, null
  br i1 %403, label %404, label %413

404:                                              ; preds = %397
  %405 = load i32, i32* %3, align 4
  %406 = load i32, i32* @SYS_RES_IRQ, align 4
  %407 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %408 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %407, i32 0, i32 3
  %409 = load i32**, i32*** %408, align 8
  %410 = getelementptr inbounds i32*, i32** %409, i64 3
  %411 = load i32*, i32** %410, align 8
  %412 = call i32 @bus_release_resource(i32 %405, i32 %406, i32 2, i32* %411)
  br label %413

413:                                              ; preds = %404, %397
  %414 = load i32, i32* @ENXIO, align 4
  store i32 %414, i32* %2, align 4
  br label %415

415:                                              ; preds = %413, %296, %34
  %416 = load i32, i32* %2, align 4
  ret i32 %416
}

declare dso_local %struct.mtk_pci_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_xref_from_node(i32) #1

declare dso_local i64 @mtk_pci_ranges(i32, %struct.mtk_pci_range*, %struct.mtk_pci_range*) #1

declare dso_local i64 @rman_init(%struct.TYPE_4__*) #1

declare dso_local i64 @rman_manage_region(%struct.TYPE_4__*, i64, i64) #1

declare dso_local i64 @mtk_pcie_phy_init(i32) #1

declare dso_local i32* @intr_pic_register(i32, i64) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.mtk_pci_softc*, i32**) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i64 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @mtk_pcie_phy_stop(i32) #1

declare dso_local i32 @rman_fini(%struct.TYPE_4__*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
