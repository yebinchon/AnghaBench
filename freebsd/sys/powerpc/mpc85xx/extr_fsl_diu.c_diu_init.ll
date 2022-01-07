; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_diu.c_diu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_diu.c_diu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diu_softc = type { i32*, %struct.TYPE_5__**, %struct.TYPE_4__, %struct.TYPE_5__*, %struct.TYPE_5__*, i32, %struct.panel_info }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i8*, i64, i64, i64, i8*, i8*, i8* }
%struct.panel_info = type { i32, i32, i32, i32, i32, i32, i32 }

@DIU_DIU_MODE = common dso_local global i32 0, align 4
@DIU_MODE_M = common dso_local global i32 0, align 4
@DIU_MODE_S = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@DIU_GAMMA = common dso_local global i32 0, align 4
@DIU_CURSOR = common dso_local global i32 0, align 4
@DIU_CURS_POS = common dso_local global i32 0, align 4
@DELTA_Y_S = common dso_local global i32 0, align 4
@DIU_DISP_SIZE = common dso_local global i32 0, align 4
@BP_H_SHIFT = common dso_local global i32 0, align 4
@PW_H_SHIFT = common dso_local global i32 0, align 4
@FP_H_SHIFT = common dso_local global i32 0, align 4
@DIU_HSYN_PARA = common dso_local global i32 0, align 4
@BP_V_SHIFT = common dso_local global i32 0, align 4
@PW_V_SHIFT = common dso_local global i32 0, align 4
@FP_V_SHIFT = common dso_local global i32 0, align 4
@DIU_VSYN_PARA = common dso_local global i32 0, align 4
@DIU_BGND = common dso_local global i32 0, align 4
@DIU_INT_MASK = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@DIU_DESC_1 = common dso_local global i32 0, align 4
@DIU_DESC_2 = common dso_local global i32 0, align 4
@DIU_DESC_3 = common dso_local global i32 0, align 4
@DIU_PLUT = common dso_local global i32 0, align 4
@DIU_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diu_softc*)* @diu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diu_init(%struct.diu_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.diu_softc*, align 8
  %4 = alloca %struct.panel_info*, align 8
  %5 = alloca i32, align 4
  store %struct.diu_softc* %0, %struct.diu_softc** %3, align 8
  %6 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %7 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %6, i32 0, i32 6
  store %struct.panel_info* %7, %struct.panel_info** %4, align 8
  %8 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %9 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DIU_DIU_MODE, align 4
  %14 = call i32 @bus_read_4(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @DIU_MODE_M, align 4
  %16 = load i32, i32* @DIU_MODE_S, align 4
  %17 = shl i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %22 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DIU_DIU_MODE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @bus_write_4(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %30 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.panel_info*, %struct.panel_info** %4, align 8
  %33 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @diu_set_pxclk(i32 %31, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %313

39:                                               ; preds = %1
  %40 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %41 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DIU_GAMMA, align 4
  %46 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %47 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %46, i32 0, i32 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @vtophys(%struct.TYPE_5__* %48)
  %50 = call i32 @bus_write_4(i32 %44, i32 %45, i32 %49)
  %51 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %52 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DIU_CURSOR, align 4
  %57 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %58 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %57, i32 0, i32 3
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @vtophys(%struct.TYPE_5__* %59)
  %61 = call i32 @bus_write_4(i32 %55, i32 %56, i32 %60)
  %62 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %63 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DIU_CURS_POS, align 4
  %68 = call i32 @bus_write_4(i32 %66, i32 %67, i32 0)
  %69 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %70 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DELTA_Y_S, align 4
  %74 = shl i32 %72, %73
  store i32 %74, i32* %5, align 4
  %75 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %76 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %82 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DIU_DISP_SIZE, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @bus_write_4(i32 %85, i32 %86, i32 %87)
  %89 = load %struct.panel_info*, %struct.panel_info** %4, align 8
  %90 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BP_H_SHIFT, align 4
  %93 = shl i32 %91, %92
  store i32 %93, i32* %5, align 4
  %94 = load %struct.panel_info*, %struct.panel_info** %4, align 8
  %95 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PW_H_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load %struct.panel_info*, %struct.panel_info** %4, align 8
  %102 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @FP_H_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %109 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DIU_HSYN_PARA, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @bus_write_4(i32 %112, i32 %113, i32 %114)
  %116 = load %struct.panel_info*, %struct.panel_info** %4, align 8
  %117 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @BP_V_SHIFT, align 4
  %120 = shl i32 %118, %119
  store i32 %120, i32* %5, align 4
  %121 = load %struct.panel_info*, %struct.panel_info** %4, align 8
  %122 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @PW_V_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load %struct.panel_info*, %struct.panel_info** %4, align 8
  %129 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @FP_V_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %136 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @DIU_VSYN_PARA, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @bus_write_4(i32 %139, i32 %140, i32 %141)
  %143 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %144 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @DIU_BGND, align 4
  %149 = call i32 @bus_write_4(i32 %147, i32 %148, i32 0)
  %150 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %151 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @DIU_INT_MASK, align 4
  %156 = call i32 @bus_write_4(i32 %154, i32 %155, i32 63)
  %157 = load i32, i32* @M_DEVBUF, align 4
  %158 = load i32, i32* @M_ZERO, align 4
  %159 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %160 = call %struct.TYPE_5__* @contigmalloc(i32 4, i32 %157, i32 %158, i32 0, i32 %159, i32 32, i32 0)
  %161 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %162 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %161, i32 0, i32 1
  %163 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %163, i64 0
  store %struct.TYPE_5__* %160, %struct.TYPE_5__** %164, align 8
  %165 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %166 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @DIU_DESC_1, align 4
  %171 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %172 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %171, i32 0, i32 1
  %173 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %173, i64 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = call i32 @vtophys(%struct.TYPE_5__* %175)
  %177 = call i32 @bus_write_4(i32 %169, i32 %170, i32 %176)
  %178 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %179 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @DIU_DESC_2, align 4
  %184 = call i32 @bus_write_4(i32 %182, i32 %183, i32 0)
  %185 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %186 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @DIU_DESC_3, align 4
  %191 = call i32 @bus_write_4(i32 %189, i32 %190, i32 0)
  %192 = call i8* @htole32(i32 372476040)
  %193 = ptrtoint i8* %192 to i32
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %196 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %195, i32 0, i32 1
  %197 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %197, i64 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  store i32 %194, i32* %200, align 8
  %201 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %202 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i8* @htole32(i32 %204)
  %206 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %207 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %206, i32 0, i32 1
  %208 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %208, i64 0
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 8
  store i8* %205, i8** %211, align 8
  %212 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %213 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %217 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = shl i32 %219, 12
  %221 = or i32 %215, %220
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %5, align 4
  %223 = call i8* @htole32(i32 %222)
  %224 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %225 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %224, i32 0, i32 1
  %226 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %226, i64 0
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 7
  store i8* %223, i8** %229, align 8
  %230 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %231 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %235 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = shl i32 %237, 16
  %239 = or i32 %233, %238
  store i32 %239, i32* %5, align 4
  %240 = load i32, i32* %5, align 4
  %241 = call i8* @htole32(i32 %240)
  %242 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %243 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %242, i32 0, i32 1
  %244 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %244, i64 0
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 6
  store i8* %241, i8** %247, align 8
  %248 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %249 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %248, i32 0, i32 1
  %250 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %250, i64 0
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 5
  store i64 0, i64* %253, align 8
  %254 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %255 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %254, i32 0, i32 1
  %256 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %256, i64 0
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 4
  store i64 0, i64* %259, align 8
  %260 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %261 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %260, i32 0, i32 1
  %262 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %262, i64 0
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 3
  store i64 0, i64* %265, align 8
  store i32 16777215, i32* %5, align 4
  %266 = load i32, i32* %5, align 4
  %267 = call i8* @htole32(i32 %266)
  %268 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %269 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %268, i32 0, i32 1
  %270 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %270, i64 0
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 2
  store i8* %267, i8** %273, align 8
  %274 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %275 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %274, i32 0, i32 1
  %276 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %276, i64 0
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 1
  store i64 0, i64* %279, align 8
  %280 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %281 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @DIU_PLUT, align 4
  %286 = call i32 @bus_write_4(i32 %284, i32 %285, i32 32896614)
  %287 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %288 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @DIU_DIU_MODE, align 4
  %293 = call i32 @bus_read_4(i32 %291, i32 %292)
  store i32 %293, i32* %5, align 4
  %294 = load i32, i32* @DIU_MODE_M, align 4
  %295 = load i32, i32* @DIU_MODE_S, align 4
  %296 = shl i32 %294, %295
  %297 = xor i32 %296, -1
  %298 = load i32, i32* %5, align 4
  %299 = and i32 %298, %297
  store i32 %299, i32* %5, align 4
  %300 = load i32, i32* @DIU_MODE_NORMAL, align 4
  %301 = load i32, i32* @DIU_MODE_S, align 4
  %302 = shl i32 %300, %301
  %303 = load i32, i32* %5, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %5, align 4
  %305 = load %struct.diu_softc*, %struct.diu_softc** %3, align 8
  %306 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @DIU_DIU_MODE, align 4
  %311 = load i32, i32* %5, align 4
  %312 = call i32 @bus_write_4(i32 %309, i32 %310, i32 %311)
  store i32 0, i32* %2, align 4
  br label %313

313:                                              ; preds = %39, %37
  %314 = load i32, i32* %2, align 4
  ret i32 %314
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i64 @diu_set_pxclk(i32, i32) #1

declare dso_local i32 @vtophys(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
