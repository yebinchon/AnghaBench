; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_irqsetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_irqsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.isp_pcisoftc = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"msix\00", align 1
@ISP_MAX_IRQS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not allocate interrupt\0A\00", align 1
@isp_platform_intr = common dso_local global i32* null, align 8
@isp_platform_intr_resp = common dso_local global i32* null, align 8
@isp_platform_intr_atio = common dso_local global i32* null, align 8
@ISP_IFLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"could not setup interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @isp_pci_irqsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_pci_irqsetup(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp_pcisoftc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.isp_pcisoftc* @device_get_softc(i32 %13)
  store %struct.isp_pcisoftc* %14, %struct.isp_pcisoftc** %5, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %257

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = call i32 @ISP_UNLOCK(%struct.TYPE_13__* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = call i64 @ISP_CAP_MSIX(%struct.TYPE_13__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = call i64 @IS_26XX(%struct.TYPE_13__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = call i64 @IS_25XX(%struct.TYPE_13__* %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 2, i32 0
  br label %37

37:                                               ; preds = %31, %30
  %38 = phi i32 [ 3, %30 ], [ %36, %31 ]
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @device_get_name(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @device_get_unit(i32 %41)
  %43 = call i32 @resource_int_value(i32 %40, i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %8)
  %44 = load i32, i32* @ISP_MAX_IRQS, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i8* @imin(i32 %44, i32 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pci_msix_count(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @imin(i32 %49, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %54 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %56 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %37
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %62 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %61, i32 0, i32 0
  %63 = call i64 @pci_alloc_msix(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %67 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %59, %37
  br label %69

69:                                               ; preds = %68, %20
  %70 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %71 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %69
  store i32 1, i32* %8, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @device_get_name(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @device_get_unit(i32 %77)
  %79 = call i32 @resource_int_value(i32 %76, i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %80 = load i32, i32* %8, align 4
  %81 = call i8* @imin(i32 1, i32 %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @pci_msi_count(i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = call i8* @imin(i32 %84, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %89 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %91 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %74
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %97 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %96, i32 0, i32 0
  %98 = call i64 @pci_alloc_msi(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %102 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %94, %74
  br label %104

104:                                              ; preds = %103, %69
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %246, %104
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %108 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @MAX(i32 1, i32 %109)
  %111 = icmp slt i32 %106, %110
  br i1 %111, label %112, label %249

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %115 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sgt i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = add nsw i32 %113, %118
  %120 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %121 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i32 %119, i32* %126, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @SYS_RES_IRQ, align 4
  %129 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %130 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* @RF_ACTIVE, align 4
  %137 = load i32, i32* @RF_SHAREABLE, align 4
  %138 = or i32 %136, %137
  %139 = call i32* @bus_alloc_resource_any(i32 %127, i32 %128, i32* %135, i32 %138)
  %140 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %141 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  store i32* %139, i32** %146, align 8
  %147 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %148 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %112
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %249

159:                                              ; preds = %112
  %160 = load i32, i32* %7, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32*, i32** @isp_platform_intr, align 8
  store i32* %163, i32** %6, align 8
  br label %172

164:                                              ; preds = %159
  %165 = load i32, i32* %7, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32*, i32** @isp_platform_intr_resp, align 8
  store i32* %168, i32** %6, align 8
  br label %171

169:                                              ; preds = %164
  %170 = load i32*, i32** @isp_platform_intr_atio, align 8
  store i32* %170, i32** %6, align 8
  br label %171

171:                                              ; preds = %169, %167
  br label %172

172:                                              ; preds = %171, %162
  %173 = load i32, i32* %4, align 4
  %174 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %175 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %174, i32 0, i32 1
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* @ISP_IFLAGS, align 4
  %183 = load i32*, i32** %6, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %185 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %186 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %185, i32 0, i32 1
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = call i64 @bus_setup_intr(i32 %173, i32* %181, i32 %182, i32* null, i32* %183, %struct.TYPE_13__* %184, i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %216

194:                                              ; preds = %172
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @device_printf(i32 %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* @SYS_RES_IRQ, align 4
  %199 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %200 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %199, i32 0, i32 1
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %208 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %207, i32 0, i32 1
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @bus_release_resource(i32 %197, i32 %198, i32 %206, i32* %214)
  br label %249

216:                                              ; preds = %172
  %217 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %218 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp sgt i32 %219, 1
  br i1 %220, label %221, label %241

221:                                              ; preds = %216
  %222 = load i32, i32* %4, align 4
  %223 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %224 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %223, i32 0, i32 1
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %5, align 8
  %232 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %231, i32 0, i32 1
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @bus_describe_intr(i32 %222, i32* %230, i32 %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %221, %216
  %242 = load i32, i32* %7, align 4
  %243 = add nsw i32 %242, 1
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %241
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %105

249:                                              ; preds = %194, %156, %105
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %251 = call i32 @ISP_LOCK(%struct.TYPE_13__* %250)
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 0
  %256 = zext i1 %255 to i32
  store i32 %256, i32* %2, align 4
  br label %257

257:                                              ; preds = %249, %19
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local %struct.isp_pcisoftc* @device_get_softc(i32) #1

declare dso_local i32 @ISP_UNLOCK(%struct.TYPE_13__*) #1

declare dso_local i64 @ISP_CAP_MSIX(%struct.TYPE_13__*) #1

declare dso_local i64 @IS_26XX(%struct.TYPE_13__*) #1

declare dso_local i64 @IS_25XX(%struct.TYPE_13__*) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i8* @imin(i32, i32) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_describe_intr(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @ISP_LOCK(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
