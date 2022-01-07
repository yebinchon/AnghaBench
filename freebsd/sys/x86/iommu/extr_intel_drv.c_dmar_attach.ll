; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMAR_REG_RID = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot allocate register window\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMAR_VER_REG = common dso_local global i32 0, align 4
@DMAR_CAP_REG = common dso_local global i32 0, align 4
@DMAR_ECAP_REG = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"hw.dmar.timeout\00", align 1
@DMAR_INTR_TOTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"fault\00", align 1
@DMAR_INTR_FAULT = common dso_local global i64 0, align 8
@DMAR_FAULT_IRQ_RID = common dso_local global i32 0, align 4
@dmar_fault_intr = common dso_local global i32 0, align 4
@DMAR_FEDATA_REG = common dso_local global i32 0, align 4
@DMAR_FEADDR_REG = common dso_local global i32 0, align 4
@DMAR_FEUADDR_REG = common dso_local global i32 0, align 4
@dmar_enable_fault_intr = common dso_local global i32 0, align 4
@dmar_disable_fault_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"qi\00", align 1
@DMAR_INTR_QI = common dso_local global i64 0, align 8
@DMAR_QI_IRQ_RID = common dso_local global i32 0, align 4
@dmar_qi_intr = common dso_local global i32 0, align 4
@DMAR_IEDATA_REG = common dso_local global i32 0, align 4
@DMAR_IEADDR_REG = common dso_local global i32 0, align 4
@DMAR_IEUADDR_REG = common dso_local global i32 0, align 4
@dmar_enable_qi_intr = common dso_local global i32 0, align 4
@dmar_disable_qi_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"dmarhw\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@DMAR_CAP_CM = common dso_local global i32 0, align 4
@OBJT_PHYS = common dso_local global i32 0, align 4
@DMAR_CTX_CNT = common dso_local global i64 0, align 8
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@DMAR_PGF_ZERO = common dso_local global i32 0, align 4
@DMAR_ECAP_DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dmar_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_unit*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.dmar_unit* @device_get_softc(i32 %9)
  store %struct.dmar_unit* %10, %struct.dmar_unit** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %13 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %12, i32 0, i32 13
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_unit(i32 %14)
  %16 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %17 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 4
  %18 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %19 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_6__* @dmar_find_by_index(i32 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %374

26:                                               ; preds = %1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %31 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %30, i32 0, i32 11
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %36 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @DMAR_REG_RID, align 4
  %38 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %39 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  %42 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %43 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %42, i32 0, i32 9
  %44 = load i32, i32* @RF_ACTIVE, align 4
  %45 = call i32* @bus_alloc_resource_any(i32 %40, i32 %41, i32* %43, i32 %44)
  %46 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %47 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %46, i32 0, i32 8
  store i32* %45, i32** %47, align 8
  %48 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %49 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %26
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %2, align 4
  br label %374

56:                                               ; preds = %26
  %57 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %58 = load i32, i32* @DMAR_VER_REG, align 4
  %59 = call i32 @dmar_read4(%struct.dmar_unit* %57, i32 %58)
  %60 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %61 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 8
  %62 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %63 = load i32, i32* @DMAR_CAP_REG, align 4
  %64 = call i8* @dmar_read8(%struct.dmar_unit* %62, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %67 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %69 = load i32, i32* @DMAR_ECAP_REG, align 4
  %70 = call i8* @dmar_read8(%struct.dmar_unit* %68, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %73 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i64, i64* @bootverbose, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %56
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = call i32 @dmar_print_caps(i32 %77, %struct.dmar_unit* %78, %struct.TYPE_6__* %79)
  br label %81

81:                                               ; preds = %76, %56
  %82 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %83 = call i32 @dmar_quirks_post_ident(%struct.dmar_unit* %82)
  %84 = call i32 (...) @dmar_get_timeout()
  store i32 %84, i32* %6, align 4
  %85 = call i32 @TUNABLE_UINT64_FETCH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @dmar_update_timeout(i32 %86)
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %100, %81
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @DMAR_INTR_TOTAL, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %94 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %93, i32 0, i32 6
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 -1, i32* %99, align 8
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %88

103:                                              ; preds = %88
  %104 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %105 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %104, i32 0, i32 6
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i64, i64* @DMAR_INTR_FAULT, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %109, align 8
  %110 = load i32, i32* @DMAR_FAULT_IRQ_RID, align 4
  %111 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %112 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %111, i32 0, i32 6
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i64, i64* @DMAR_INTR_FAULT, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 8
  store i32 %110, i32* %116, align 8
  %117 = load i32, i32* @dmar_fault_intr, align 4
  %118 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %119 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %118, i32 0, i32 6
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i64, i64* @DMAR_INTR_FAULT, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 7
  store i32 %117, i32* %123, align 4
  %124 = load i32, i32* @DMAR_FEDATA_REG, align 4
  %125 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %126 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %125, i32 0, i32 6
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i64, i64* @DMAR_INTR_FAULT, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 6
  store i32 %124, i32* %130, align 8
  %131 = load i32, i32* @DMAR_FEADDR_REG, align 4
  %132 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %133 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %132, i32 0, i32 6
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load i64, i64* @DMAR_INTR_FAULT, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 5
  store i32 %131, i32* %137, align 4
  %138 = load i32, i32* @DMAR_FEUADDR_REG, align 4
  %139 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %140 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %139, i32 0, i32 6
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = load i64, i64* @DMAR_INTR_FAULT, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 4
  store i32 %138, i32* %144, align 8
  %145 = load i32, i32* @dmar_enable_fault_intr, align 4
  %146 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %147 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %146, i32 0, i32 6
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load i64, i64* @DMAR_INTR_FAULT, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  store i32 %145, i32* %151, align 4
  %152 = load i32, i32* @dmar_disable_fault_intr, align 4
  %153 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %154 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %153, i32 0, i32 6
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = load i64, i64* @DMAR_INTR_FAULT, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  store i32 %152, i32* %158, align 8
  %159 = load i32, i32* %3, align 4
  %160 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %161 = load i64, i64* @DMAR_INTR_FAULT, align 8
  %162 = call i32 @dmar_alloc_irq(i32 %159, %struct.dmar_unit* %160, i64 %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %103
  %166 = load i32, i32* %3, align 4
  %167 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %168 = call i32 @dmar_release_resources(i32 %166, %struct.dmar_unit* %167)
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %2, align 4
  br label %374

170:                                              ; preds = %103
  %171 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %172 = call i64 @DMAR_HAS_QI(%struct.dmar_unit* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %242

174:                                              ; preds = %170
  %175 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %176 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %175, i32 0, i32 6
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = load i64, i64* @DMAR_INTR_QI, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %180, align 8
  %181 = load i32, i32* @DMAR_QI_IRQ_RID, align 4
  %182 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %183 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %182, i32 0, i32 6
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = load i64, i64* @DMAR_INTR_QI, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 8
  store i32 %181, i32* %187, align 8
  %188 = load i32, i32* @dmar_qi_intr, align 4
  %189 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %190 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %189, i32 0, i32 6
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = load i64, i64* @DMAR_INTR_QI, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 7
  store i32 %188, i32* %194, align 4
  %195 = load i32, i32* @DMAR_IEDATA_REG, align 4
  %196 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %197 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %196, i32 0, i32 6
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = load i64, i64* @DMAR_INTR_QI, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 6
  store i32 %195, i32* %201, align 8
  %202 = load i32, i32* @DMAR_IEADDR_REG, align 4
  %203 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %204 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %203, i32 0, i32 6
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = load i64, i64* @DMAR_INTR_QI, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 5
  store i32 %202, i32* %208, align 4
  %209 = load i32, i32* @DMAR_IEUADDR_REG, align 4
  %210 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %211 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %210, i32 0, i32 6
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = load i64, i64* @DMAR_INTR_QI, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 4
  store i32 %209, i32* %215, align 8
  %216 = load i32, i32* @dmar_enable_qi_intr, align 4
  %217 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %218 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %217, i32 0, i32 6
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = load i64, i64* @DMAR_INTR_QI, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 3
  store i32 %216, i32* %222, align 4
  %223 = load i32, i32* @dmar_disable_qi_intr, align 4
  %224 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %225 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %224, i32 0, i32 6
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = load i64, i64* @DMAR_INTR_QI, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 2
  store i32 %223, i32* %229, align 8
  %230 = load i32, i32* %3, align 4
  %231 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %232 = load i64, i64* @DMAR_INTR_QI, align 8
  %233 = call i32 @dmar_alloc_irq(i32 %230, %struct.dmar_unit* %231, i64 %232)
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %174
  %237 = load i32, i32* %3, align 4
  %238 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %239 = call i32 @dmar_release_resources(i32 %237, %struct.dmar_unit* %238)
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %2, align 4
  br label %374

241:                                              ; preds = %174
  br label %242

242:                                              ; preds = %241, %170
  %243 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %244 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %243, i32 0, i32 5
  %245 = load i32, i32* @MTX_DEF, align 4
  %246 = call i32 @mtx_init(i32* %244, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %245)
  %247 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %248 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @DMAR_CAP_ND(i32 %249)
  %251 = call i32 @dmar_nd2mask(i32 %250)
  %252 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %253 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %252, i32 0, i32 5
  %254 = call i32 @new_unrhdr(i32 0, i32 %251, i32* %253)
  %255 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %256 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 4
  %257 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %258 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %257, i32 0, i32 4
  %259 = call i32 @LIST_INIT(i32* %258)
  %260 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %261 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @DMAR_CAP_CM, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %242
  %267 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %268 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @alloc_unr_specific(i32 %269, i32 0)
  br label %271

271:                                              ; preds = %266, %242
  %272 = load i32, i32* @OBJT_PHYS, align 4
  %273 = load i64, i64* @DMAR_CTX_CNT, align 8
  %274 = add nsw i64 1, %273
  %275 = call i32 @IDX_TO_OFF(i64 %274)
  %276 = call i32 @vm_pager_allocate(i32 %272, i32* null, i32 %275, i32 0, i32 0, i32* null)
  %277 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %278 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 8
  %279 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %280 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %283 = load i32, i32* @DMAR_PGF_ZERO, align 4
  %284 = or i32 %282, %283
  %285 = call i32 @dmar_pgalloc(i32 %281, i32 0, i32 %284)
  %286 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %287 = call i32 @DMAR_LOCK(%struct.dmar_unit* %286)
  %288 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %289 = call i32 @dmar_load_root_entry_ptr(%struct.dmar_unit* %288)
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %8, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %271
  %293 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %294 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %293)
  %295 = load i32, i32* %3, align 4
  %296 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %297 = call i32 @dmar_release_resources(i32 %295, %struct.dmar_unit* %296)
  %298 = load i32, i32* %8, align 4
  store i32 %298, i32* %2, align 4
  br label %374

299:                                              ; preds = %271
  %300 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %301 = call i32 @dmar_inv_ctx_glob(%struct.dmar_unit* %300)
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %311

304:                                              ; preds = %299
  %305 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %306 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %305)
  %307 = load i32, i32* %3, align 4
  %308 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %309 = call i32 @dmar_release_resources(i32 %307, %struct.dmar_unit* %308)
  %310 = load i32, i32* %8, align 4
  store i32 %310, i32* %2, align 4
  br label %374

311:                                              ; preds = %299
  %312 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %313 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @DMAR_ECAP_DI, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %331

318:                                              ; preds = %311
  %319 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %320 = call i32 @dmar_inv_iotlb_glob(%struct.dmar_unit* %319)
  store i32 %320, i32* %8, align 4
  %321 = load i32, i32* %8, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %318
  %324 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %325 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %324)
  %326 = load i32, i32* %3, align 4
  %327 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %328 = call i32 @dmar_release_resources(i32 %326, %struct.dmar_unit* %327)
  %329 = load i32, i32* %8, align 4
  store i32 %329, i32* %2, align 4
  br label %374

330:                                              ; preds = %318
  br label %331

331:                                              ; preds = %330, %311
  %332 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %333 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %332)
  %334 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %335 = call i32 @dmar_init_fault_log(%struct.dmar_unit* %334)
  store i32 %335, i32* %8, align 4
  %336 = load i32, i32* %8, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %331
  %339 = load i32, i32* %3, align 4
  %340 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %341 = call i32 @dmar_release_resources(i32 %339, %struct.dmar_unit* %340)
  %342 = load i32, i32* %8, align 4
  store i32 %342, i32* %2, align 4
  br label %374

343:                                              ; preds = %331
  %344 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %345 = call i32 @dmar_init_qi(%struct.dmar_unit* %344)
  store i32 %345, i32* %8, align 4
  %346 = load i32, i32* %8, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %343
  %349 = load i32, i32* %3, align 4
  %350 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %351 = call i32 @dmar_release_resources(i32 %349, %struct.dmar_unit* %350)
  %352 = load i32, i32* %8, align 4
  store i32 %352, i32* %2, align 4
  br label %374

353:                                              ; preds = %343
  %354 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %355 = call i32 @dmar_init_irt(%struct.dmar_unit* %354)
  store i32 %355, i32* %8, align 4
  %356 = load i32, i32* %8, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %353
  %359 = load i32, i32* %3, align 4
  %360 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %361 = call i32 @dmar_release_resources(i32 %359, %struct.dmar_unit* %360)
  %362 = load i32, i32* %8, align 4
  store i32 %362, i32* %2, align 4
  br label %374

363:                                              ; preds = %353
  %364 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %365 = call i32 @dmar_init_busdma(%struct.dmar_unit* %364)
  store i32 %365, i32* %8, align 4
  %366 = load i32, i32* %8, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %363
  %369 = load i32, i32* %3, align 4
  %370 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %371 = call i32 @dmar_release_resources(i32 %369, %struct.dmar_unit* %370)
  %372 = load i32, i32* %8, align 4
  store i32 %372, i32* %2, align 4
  br label %374

373:                                              ; preds = %363
  store i32 0, i32* %2, align 4
  br label %374

374:                                              ; preds = %373, %368, %358, %348, %338, %323, %304, %292, %236, %165, %52, %24
  %375 = load i32, i32* %2, align 4
  ret i32 %375
}

declare dso_local %struct.dmar_unit* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_6__* @dmar_find_by_index(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @dmar_read4(%struct.dmar_unit*, i32) #1

declare dso_local i8* @dmar_read8(%struct.dmar_unit*, i32) #1

declare dso_local i32 @dmar_print_caps(i32, %struct.dmar_unit*, %struct.TYPE_6__*) #1

declare dso_local i32 @dmar_quirks_post_ident(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_get_timeout(...) #1

declare dso_local i32 @TUNABLE_UINT64_FETCH(i8*, i32*) #1

declare dso_local i32 @dmar_update_timeout(i32) #1

declare dso_local i32 @dmar_alloc_irq(i32, %struct.dmar_unit*, i64) #1

declare dso_local i32 @dmar_release_resources(i32, %struct.dmar_unit*) #1

declare dso_local i64 @DMAR_HAS_QI(%struct.dmar_unit*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @new_unrhdr(i32, i32, i32*) #1

declare dso_local i32 @dmar_nd2mask(i32) #1

declare dso_local i32 @DMAR_CAP_ND(i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @alloc_unr_specific(i32, i32) #1

declare dso_local i32 @vm_pager_allocate(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @IDX_TO_OFF(i64) #1

declare dso_local i32 @dmar_pgalloc(i32, i32, i32) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_load_root_entry_ptr(%struct.dmar_unit*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_inv_ctx_glob(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_inv_iotlb_glob(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_init_fault_log(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_init_qi(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_init_irt(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_init_busdma(%struct.dmar_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
