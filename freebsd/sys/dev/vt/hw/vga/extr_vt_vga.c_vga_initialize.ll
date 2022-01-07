; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.vga_softc* }
%struct.vga_softc = type { i32, i32, i32 }

@VGA_GEN_MISC_OUTPUT_R = common dso_local global i32 0, align 4
@VGA_GEN_MISC_OUTPUT_W = common dso_local global i32 0, align 4
@VGA_GEN_MO_IOA = common dso_local global i32 0, align 4
@VGA_CRTC_ADDRESS = common dso_local global i32 0, align 4
@VGA_CRTC_VERT_RETRACE_END = common dso_local global i32 0, align 4
@VGA_CRTC_DATA = common dso_local global i32 0, align 4
@VGA_CRTC_VRE_PR = common dso_local global i32 0, align 4
@VGA_GEN_INPUT_STAT_1 = common dso_local global i32 0, align 4
@VGA_GEN_IS1_VR = common dso_local global i32 0, align 4
@VGA_GEN_IS1_DE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timeout initializing vt_vga\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@VGA_CRTC_MODE_CONTROL = common dso_local global i32 0, align 4
@VGA_CRTC_MC_HR = common dso_local global i32 0, align 4
@VGA_SEQ_ADDRESS = common dso_local global i32 0, align 4
@VGA_SEQ_RESET = common dso_local global i32 0, align 4
@VGA_SEQ_DATA = common dso_local global i32 0, align 4
@VGA_SEQ_RST_SR = common dso_local global i32 0, align 4
@VGA_CRTC_PRESET_ROW_SCAN = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_START = common dso_local global i32 0, align 4
@VGA_CRTC_CS_COO = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_END = common dso_local global i32 0, align 4
@VGA_CRTC_START_ADDR_HIGH = common dso_local global i32 0, align 4
@VGA_CRTC_START_ADDR_LOW = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_LOC_HIGH = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_LOC_LOW = common dso_local global i32 0, align 4
@VGA_CRTC_UNDERLINE_LOC = common dso_local global i32 0, align 4
@VGA_CRTC_UL_UL = common dso_local global i32 0, align 4
@VGA_AC_WRITE = common dso_local global i32 0, align 4
@VGA_AC_MODE_CONTROL = common dso_local global i32 0, align 4
@VGA_AC_MC_GA = common dso_local global i32 0, align 4
@VGA_AC_HORIZ_PIXEL_PANNING = common dso_local global i32 0, align 4
@VGA_AC_PAL_B = common dso_local global i32 0, align 4
@VGA_AC_PAL_G = common dso_local global i32 0, align 4
@VGA_AC_PAL_R = common dso_local global i32 0, align 4
@VGA_AC_PAL_SG = common dso_local global i32 0, align 4
@VGA_AC_PAL_SR = common dso_local global i32 0, align 4
@VGA_AC_PAL_SB = common dso_local global i32 0, align 4
@VGA_AC_OVERSCAN_COLOR = common dso_local global i32 0, align 4
@VGA_AC_COLOR_PLANE_ENABLE = common dso_local global i32 0, align 4
@VGA_AC_COLOR_SELECT = common dso_local global i32 0, align 4
@VT_VGA_MEMSIZE = common dso_local global i64 0, align 8
@VGA_SEQ_RST_NAR = common dso_local global i32 0, align 4
@VGA_GC_ADDRESS = common dso_local global i32 0, align 4
@VGA_GC_MODE = common dso_local global i32 0, align 4
@VGA_GC_DATA = common dso_local global i32 0, align 4
@VGA_GC_ENABLE_SET_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_device*, i32)* @vga_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_initialize(%struct.vt_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vt_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vga_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.vt_device* %0, %struct.vt_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %11 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %10, i32 0, i32 0
  %12 = load %struct.vga_softc*, %struct.vga_softc** %11, align 8
  store %struct.vga_softc* %12, %struct.vga_softc** %6, align 8
  %13 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %14 = load i32, i32* @VGA_GEN_MISC_OUTPUT_R, align 4
  %15 = call i32 @REG_READ1(%struct.vga_softc* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %17 = load i32, i32* @VGA_GEN_MISC_OUTPUT_W, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @VGA_GEN_MO_IOA, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @REG_WRITE1(%struct.vga_softc* %16, i32 %17, i32 %20)
  %22 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %23 = load i32, i32* @VGA_CRTC_ADDRESS, align 4
  %24 = load i32, i32* @VGA_CRTC_VERT_RETRACE_END, align 4
  %25 = call i32 @REG_WRITE1(%struct.vga_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %27 = load i32, i32* @VGA_CRTC_DATA, align 4
  %28 = call i32 @REG_READ1(%struct.vga_softc* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %30 = load i32, i32* @VGA_CRTC_DATA, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @VGA_CRTC_VRE_PR, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @REG_WRITE1(%struct.vga_softc* %29, i32 %30, i32 %34)
  store i32 10000, i32* %8, align 4
  br label %36

36:                                               ; preds = %56, %2
  %37 = call i32 @DELAY(i32 10)
  %38 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %39 = load i32, i32* @VGA_GEN_INPUT_STAT_1, align 4
  %40 = call i32 @REG_READ1(%struct.vga_softc* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @VGA_GEN_IS1_VR, align 4
  %42 = load i32, i32* @VGA_GEN_IS1_DE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @VGA_GEN_IS1_VR, align 4
  %49 = load i32, i32* @VGA_GEN_IS1_DE, align 4
  %50 = or i32 %48, %49
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i1 [ false, %46 ], [ %55, %52 ]
  br i1 %57, label %36, label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %3, align 4
  br label %455

64:                                               ; preds = %58
  %65 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %66 = load i32, i32* @VGA_CRTC_ADDRESS, align 4
  %67 = load i32, i32* @VGA_CRTC_MODE_CONTROL, align 4
  %68 = call i32 @REG_WRITE1(%struct.vga_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %70 = load i32, i32* @VGA_CRTC_DATA, align 4
  %71 = call i32 @REG_READ1(%struct.vga_softc* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %73 = load i32, i32* @VGA_CRTC_DATA, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @VGA_CRTC_MC_HR, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = call i32 @REG_WRITE1(%struct.vga_softc* %72, i32 %73, i32 %77)
  %79 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %80 = load i32, i32* @VGA_SEQ_ADDRESS, align 4
  %81 = load i32, i32* @VGA_SEQ_RESET, align 4
  %82 = call i32 @REG_WRITE1(%struct.vga_softc* %79, i32 %80, i32 %81)
  %83 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %84 = load i32, i32* @VGA_SEQ_DATA, align 4
  %85 = load i32, i32* @VGA_SEQ_RST_SR, align 4
  %86 = call i32 @REG_WRITE1(%struct.vga_softc* %83, i32 %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %64
  %90 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %91 = call i32 @vga_initialize_graphics(%struct.vt_device* %90)
  br label %92

92:                                               ; preds = %89, %64
  %93 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %94 = load i32, i32* @VGA_CRTC_ADDRESS, align 4
  %95 = load i32, i32* @VGA_CRTC_PRESET_ROW_SCAN, align 4
  %96 = call i32 @REG_WRITE1(%struct.vga_softc* %93, i32 %94, i32 %95)
  %97 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %98 = load i32, i32* @VGA_CRTC_DATA, align 4
  %99 = call i32 @REG_WRITE1(%struct.vga_softc* %97, i32 %98, i32 0)
  %100 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %101 = load i32, i32* @VGA_CRTC_ADDRESS, align 4
  %102 = load i32, i32* @VGA_CRTC_CURSOR_START, align 4
  %103 = call i32 @REG_WRITE1(%struct.vga_softc* %100, i32 %101, i32 %102)
  %104 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %105 = load i32, i32* @VGA_CRTC_DATA, align 4
  %106 = load i32, i32* @VGA_CRTC_CS_COO, align 4
  %107 = call i32 @REG_WRITE1(%struct.vga_softc* %104, i32 %105, i32 %106)
  %108 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %109 = load i32, i32* @VGA_CRTC_ADDRESS, align 4
  %110 = load i32, i32* @VGA_CRTC_CURSOR_END, align 4
  %111 = call i32 @REG_WRITE1(%struct.vga_softc* %108, i32 %109, i32 %110)
  %112 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %113 = load i32, i32* @VGA_CRTC_DATA, align 4
  %114 = call i32 @REG_WRITE1(%struct.vga_softc* %112, i32 %113, i32 0)
  %115 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %116 = load i32, i32* @VGA_CRTC_ADDRESS, align 4
  %117 = load i32, i32* @VGA_CRTC_START_ADDR_HIGH, align 4
  %118 = call i32 @REG_WRITE1(%struct.vga_softc* %115, i32 %116, i32 %117)
  %119 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %120 = load i32, i32* @VGA_CRTC_DATA, align 4
  %121 = call i32 @REG_WRITE1(%struct.vga_softc* %119, i32 %120, i32 0)
  %122 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %123 = load i32, i32* @VGA_CRTC_ADDRESS, align 4
  %124 = load i32, i32* @VGA_CRTC_START_ADDR_LOW, align 4
  %125 = call i32 @REG_WRITE1(%struct.vga_softc* %122, i32 %123, i32 %124)
  %126 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %127 = load i32, i32* @VGA_CRTC_DATA, align 4
  %128 = call i32 @REG_WRITE1(%struct.vga_softc* %126, i32 %127, i32 0)
  %129 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %130 = load i32, i32* @VGA_CRTC_ADDRESS, align 4
  %131 = load i32, i32* @VGA_CRTC_CURSOR_LOC_HIGH, align 4
  %132 = call i32 @REG_WRITE1(%struct.vga_softc* %129, i32 %130, i32 %131)
  %133 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %134 = load i32, i32* @VGA_CRTC_DATA, align 4
  %135 = call i32 @REG_WRITE1(%struct.vga_softc* %133, i32 %134, i32 0)
  %136 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %137 = load i32, i32* @VGA_CRTC_ADDRESS, align 4
  %138 = load i32, i32* @VGA_CRTC_CURSOR_LOC_LOW, align 4
  %139 = call i32 @REG_WRITE1(%struct.vga_softc* %136, i32 %137, i32 %138)
  %140 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %141 = load i32, i32* @VGA_CRTC_DATA, align 4
  %142 = call i32 @REG_WRITE1(%struct.vga_softc* %140, i32 %141, i32 89)
  %143 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %144 = load i32, i32* @VGA_CRTC_ADDRESS, align 4
  %145 = load i32, i32* @VGA_CRTC_UNDERLINE_LOC, align 4
  %146 = call i32 @REG_WRITE1(%struct.vga_softc* %143, i32 %144, i32 %145)
  %147 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %148 = load i32, i32* @VGA_CRTC_DATA, align 4
  %149 = load i32, i32* @VGA_CRTC_UL_UL, align 4
  %150 = call i32 @REG_WRITE1(%struct.vga_softc* %147, i32 %148, i32 %149)
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %92
  %154 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %155 = load i32, i32* @VGA_AC_WRITE, align 4
  %156 = load i32, i32* @VGA_AC_MODE_CONTROL, align 4
  %157 = call i32 @REG_WRITE1(%struct.vga_softc* %154, i32 %155, i32 %156)
  %158 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %159 = load i32, i32* @VGA_AC_WRITE, align 4
  %160 = call i32 @REG_WRITE1(%struct.vga_softc* %158, i32 %159, i32 0)
  br label %177

161:                                              ; preds = %92
  %162 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %163 = load i32, i32* @VGA_AC_WRITE, align 4
  %164 = load i32, i32* @VGA_AC_MODE_CONTROL, align 4
  %165 = call i32 @REG_WRITE1(%struct.vga_softc* %162, i32 %163, i32 %164)
  %166 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %167 = load i32, i32* @VGA_AC_WRITE, align 4
  %168 = load i32, i32* @VGA_AC_MC_GA, align 4
  %169 = call i32 @REG_WRITE1(%struct.vga_softc* %166, i32 %167, i32 %168)
  %170 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %171 = load i32, i32* @VGA_AC_WRITE, align 4
  %172 = load i32, i32* @VGA_AC_HORIZ_PIXEL_PANNING, align 4
  %173 = call i32 @REG_WRITE1(%struct.vga_softc* %170, i32 %171, i32 %172)
  %174 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %175 = load i32, i32* @VGA_AC_WRITE, align 4
  %176 = call i32 @REG_WRITE1(%struct.vga_softc* %174, i32 %175, i32 0)
  br label %177

177:                                              ; preds = %161, %153
  %178 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %179 = load i32, i32* @VGA_AC_WRITE, align 4
  %180 = call i32 @VGA_AC_PALETTE(i32 0)
  %181 = call i32 @REG_WRITE1(%struct.vga_softc* %178, i32 %179, i32 %180)
  %182 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %183 = load i32, i32* @VGA_AC_WRITE, align 4
  %184 = call i32 @REG_WRITE1(%struct.vga_softc* %182, i32 %183, i32 0)
  %185 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %186 = load i32, i32* @VGA_AC_WRITE, align 4
  %187 = call i32 @VGA_AC_PALETTE(i32 1)
  %188 = call i32 @REG_WRITE1(%struct.vga_softc* %185, i32 %186, i32 %187)
  %189 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %190 = load i32, i32* @VGA_AC_WRITE, align 4
  %191 = load i32, i32* @VGA_AC_PAL_B, align 4
  %192 = call i32 @REG_WRITE1(%struct.vga_softc* %189, i32 %190, i32 %191)
  %193 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %194 = load i32, i32* @VGA_AC_WRITE, align 4
  %195 = call i32 @VGA_AC_PALETTE(i32 2)
  %196 = call i32 @REG_WRITE1(%struct.vga_softc* %193, i32 %194, i32 %195)
  %197 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %198 = load i32, i32* @VGA_AC_WRITE, align 4
  %199 = load i32, i32* @VGA_AC_PAL_G, align 4
  %200 = call i32 @REG_WRITE1(%struct.vga_softc* %197, i32 %198, i32 %199)
  %201 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %202 = load i32, i32* @VGA_AC_WRITE, align 4
  %203 = call i32 @VGA_AC_PALETTE(i32 3)
  %204 = call i32 @REG_WRITE1(%struct.vga_softc* %201, i32 %202, i32 %203)
  %205 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %206 = load i32, i32* @VGA_AC_WRITE, align 4
  %207 = load i32, i32* @VGA_AC_PAL_G, align 4
  %208 = load i32, i32* @VGA_AC_PAL_B, align 4
  %209 = or i32 %207, %208
  %210 = call i32 @REG_WRITE1(%struct.vga_softc* %205, i32 %206, i32 %209)
  %211 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %212 = load i32, i32* @VGA_AC_WRITE, align 4
  %213 = call i32 @VGA_AC_PALETTE(i32 4)
  %214 = call i32 @REG_WRITE1(%struct.vga_softc* %211, i32 %212, i32 %213)
  %215 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %216 = load i32, i32* @VGA_AC_WRITE, align 4
  %217 = load i32, i32* @VGA_AC_PAL_R, align 4
  %218 = call i32 @REG_WRITE1(%struct.vga_softc* %215, i32 %216, i32 %217)
  %219 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %220 = load i32, i32* @VGA_AC_WRITE, align 4
  %221 = call i32 @VGA_AC_PALETTE(i32 5)
  %222 = call i32 @REG_WRITE1(%struct.vga_softc* %219, i32 %220, i32 %221)
  %223 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %224 = load i32, i32* @VGA_AC_WRITE, align 4
  %225 = load i32, i32* @VGA_AC_PAL_R, align 4
  %226 = load i32, i32* @VGA_AC_PAL_B, align 4
  %227 = or i32 %225, %226
  %228 = call i32 @REG_WRITE1(%struct.vga_softc* %223, i32 %224, i32 %227)
  %229 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %230 = load i32, i32* @VGA_AC_WRITE, align 4
  %231 = call i32 @VGA_AC_PALETTE(i32 6)
  %232 = call i32 @REG_WRITE1(%struct.vga_softc* %229, i32 %230, i32 %231)
  %233 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %234 = load i32, i32* @VGA_AC_WRITE, align 4
  %235 = load i32, i32* @VGA_AC_PAL_SG, align 4
  %236 = load i32, i32* @VGA_AC_PAL_R, align 4
  %237 = or i32 %235, %236
  %238 = call i32 @REG_WRITE1(%struct.vga_softc* %233, i32 %234, i32 %237)
  %239 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %240 = load i32, i32* @VGA_AC_WRITE, align 4
  %241 = call i32 @VGA_AC_PALETTE(i32 7)
  %242 = call i32 @REG_WRITE1(%struct.vga_softc* %239, i32 %240, i32 %241)
  %243 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %244 = load i32, i32* @VGA_AC_WRITE, align 4
  %245 = load i32, i32* @VGA_AC_PAL_R, align 4
  %246 = load i32, i32* @VGA_AC_PAL_G, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @VGA_AC_PAL_B, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @REG_WRITE1(%struct.vga_softc* %243, i32 %244, i32 %249)
  %251 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %252 = load i32, i32* @VGA_AC_WRITE, align 4
  %253 = call i32 @VGA_AC_PALETTE(i32 8)
  %254 = call i32 @REG_WRITE1(%struct.vga_softc* %251, i32 %252, i32 %253)
  %255 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %256 = load i32, i32* @VGA_AC_WRITE, align 4
  %257 = load i32, i32* @VGA_AC_PAL_SR, align 4
  %258 = load i32, i32* @VGA_AC_PAL_SG, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @VGA_AC_PAL_SB, align 4
  %261 = or i32 %259, %260
  %262 = call i32 @REG_WRITE1(%struct.vga_softc* %255, i32 %256, i32 %261)
  %263 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %264 = load i32, i32* @VGA_AC_WRITE, align 4
  %265 = call i32 @VGA_AC_PALETTE(i32 9)
  %266 = call i32 @REG_WRITE1(%struct.vga_softc* %263, i32 %264, i32 %265)
  %267 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %268 = load i32, i32* @VGA_AC_WRITE, align 4
  %269 = load i32, i32* @VGA_AC_PAL_SR, align 4
  %270 = load i32, i32* @VGA_AC_PAL_SG, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @VGA_AC_PAL_SB, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* @VGA_AC_PAL_B, align 4
  %275 = or i32 %273, %274
  %276 = call i32 @REG_WRITE1(%struct.vga_softc* %267, i32 %268, i32 %275)
  %277 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %278 = load i32, i32* @VGA_AC_WRITE, align 4
  %279 = call i32 @VGA_AC_PALETTE(i32 10)
  %280 = call i32 @REG_WRITE1(%struct.vga_softc* %277, i32 %278, i32 %279)
  %281 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %282 = load i32, i32* @VGA_AC_WRITE, align 4
  %283 = load i32, i32* @VGA_AC_PAL_SR, align 4
  %284 = load i32, i32* @VGA_AC_PAL_SG, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @VGA_AC_PAL_SB, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @VGA_AC_PAL_G, align 4
  %289 = or i32 %287, %288
  %290 = call i32 @REG_WRITE1(%struct.vga_softc* %281, i32 %282, i32 %289)
  %291 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %292 = load i32, i32* @VGA_AC_WRITE, align 4
  %293 = call i32 @VGA_AC_PALETTE(i32 11)
  %294 = call i32 @REG_WRITE1(%struct.vga_softc* %291, i32 %292, i32 %293)
  %295 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %296 = load i32, i32* @VGA_AC_WRITE, align 4
  %297 = load i32, i32* @VGA_AC_PAL_SR, align 4
  %298 = load i32, i32* @VGA_AC_PAL_SG, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @VGA_AC_PAL_SB, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @VGA_AC_PAL_G, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @VGA_AC_PAL_B, align 4
  %305 = or i32 %303, %304
  %306 = call i32 @REG_WRITE1(%struct.vga_softc* %295, i32 %296, i32 %305)
  %307 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %308 = load i32, i32* @VGA_AC_WRITE, align 4
  %309 = call i32 @VGA_AC_PALETTE(i32 12)
  %310 = call i32 @REG_WRITE1(%struct.vga_softc* %307, i32 %308, i32 %309)
  %311 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %312 = load i32, i32* @VGA_AC_WRITE, align 4
  %313 = load i32, i32* @VGA_AC_PAL_SR, align 4
  %314 = load i32, i32* @VGA_AC_PAL_SG, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* @VGA_AC_PAL_SB, align 4
  %317 = or i32 %315, %316
  %318 = load i32, i32* @VGA_AC_PAL_R, align 4
  %319 = or i32 %317, %318
  %320 = call i32 @REG_WRITE1(%struct.vga_softc* %311, i32 %312, i32 %319)
  %321 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %322 = load i32, i32* @VGA_AC_WRITE, align 4
  %323 = call i32 @VGA_AC_PALETTE(i32 13)
  %324 = call i32 @REG_WRITE1(%struct.vga_softc* %321, i32 %322, i32 %323)
  %325 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %326 = load i32, i32* @VGA_AC_WRITE, align 4
  %327 = load i32, i32* @VGA_AC_PAL_SR, align 4
  %328 = load i32, i32* @VGA_AC_PAL_SG, align 4
  %329 = or i32 %327, %328
  %330 = load i32, i32* @VGA_AC_PAL_SB, align 4
  %331 = or i32 %329, %330
  %332 = load i32, i32* @VGA_AC_PAL_R, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @VGA_AC_PAL_B, align 4
  %335 = or i32 %333, %334
  %336 = call i32 @REG_WRITE1(%struct.vga_softc* %325, i32 %326, i32 %335)
  %337 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %338 = load i32, i32* @VGA_AC_WRITE, align 4
  %339 = call i32 @VGA_AC_PALETTE(i32 14)
  %340 = call i32 @REG_WRITE1(%struct.vga_softc* %337, i32 %338, i32 %339)
  %341 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %342 = load i32, i32* @VGA_AC_WRITE, align 4
  %343 = load i32, i32* @VGA_AC_PAL_SR, align 4
  %344 = load i32, i32* @VGA_AC_PAL_SG, align 4
  %345 = or i32 %343, %344
  %346 = load i32, i32* @VGA_AC_PAL_SB, align 4
  %347 = or i32 %345, %346
  %348 = load i32, i32* @VGA_AC_PAL_R, align 4
  %349 = or i32 %347, %348
  %350 = load i32, i32* @VGA_AC_PAL_G, align 4
  %351 = or i32 %349, %350
  %352 = call i32 @REG_WRITE1(%struct.vga_softc* %341, i32 %342, i32 %351)
  %353 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %354 = load i32, i32* @VGA_AC_WRITE, align 4
  %355 = call i32 @VGA_AC_PALETTE(i32 15)
  %356 = call i32 @REG_WRITE1(%struct.vga_softc* %353, i32 %354, i32 %355)
  %357 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %358 = load i32, i32* @VGA_AC_WRITE, align 4
  %359 = load i32, i32* @VGA_AC_PAL_SR, align 4
  %360 = load i32, i32* @VGA_AC_PAL_SG, align 4
  %361 = or i32 %359, %360
  %362 = load i32, i32* @VGA_AC_PAL_SB, align 4
  %363 = or i32 %361, %362
  %364 = load i32, i32* @VGA_AC_PAL_R, align 4
  %365 = or i32 %363, %364
  %366 = load i32, i32* @VGA_AC_PAL_G, align 4
  %367 = or i32 %365, %366
  %368 = load i32, i32* @VGA_AC_PAL_B, align 4
  %369 = or i32 %367, %368
  %370 = call i32 @REG_WRITE1(%struct.vga_softc* %357, i32 %358, i32 %369)
  %371 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %372 = load i32, i32* @VGA_AC_WRITE, align 4
  %373 = load i32, i32* @VGA_AC_OVERSCAN_COLOR, align 4
  %374 = call i32 @REG_WRITE1(%struct.vga_softc* %371, i32 %372, i32 %373)
  %375 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %376 = load i32, i32* @VGA_AC_WRITE, align 4
  %377 = call i32 @REG_WRITE1(%struct.vga_softc* %375, i32 %376, i32 0)
  %378 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %379 = load i32, i32* @VGA_AC_WRITE, align 4
  %380 = load i32, i32* @VGA_AC_COLOR_PLANE_ENABLE, align 4
  %381 = call i32 @REG_WRITE1(%struct.vga_softc* %378, i32 %379, i32 %380)
  %382 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %383 = load i32, i32* @VGA_AC_WRITE, align 4
  %384 = call i32 @REG_WRITE1(%struct.vga_softc* %382, i32 %383, i32 15)
  %385 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %386 = load i32, i32* @VGA_AC_WRITE, align 4
  %387 = load i32, i32* @VGA_AC_COLOR_SELECT, align 4
  %388 = call i32 @REG_WRITE1(%struct.vga_softc* %385, i32 %386, i32 %387)
  %389 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %390 = load i32, i32* @VGA_AC_WRITE, align 4
  %391 = call i32 @REG_WRITE1(%struct.vga_softc* %389, i32 %390, i32 0)
  %392 = load i32, i32* %5, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %407, label %394

394:                                              ; preds = %177
  store i64 0, i64* %9, align 8
  br label %395

395:                                              ; preds = %403, %394
  %396 = load i64, i64* %9, align 8
  %397 = load i64, i64* @VT_VGA_MEMSIZE, align 8
  %398 = icmp slt i64 %396, %397
  br i1 %398, label %399, label %406

399:                                              ; preds = %395
  %400 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %401 = load i64, i64* %9, align 8
  %402 = call i32 @MEM_WRITE1(%struct.vga_softc* %400, i64 %401, i32 0)
  br label %403

403:                                              ; preds = %399
  %404 = load i64, i64* %9, align 8
  %405 = add nsw i64 %404, 1
  store i64 %405, i64* %9, align 8
  br label %395

406:                                              ; preds = %395
  br label %407

407:                                              ; preds = %406, %177
  %408 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %409 = load i32, i32* @VGA_SEQ_ADDRESS, align 4
  %410 = load i32, i32* @VGA_SEQ_RESET, align 4
  %411 = call i32 @REG_WRITE1(%struct.vga_softc* %408, i32 %409, i32 %410)
  %412 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %413 = load i32, i32* @VGA_SEQ_DATA, align 4
  %414 = load i32, i32* @VGA_SEQ_RST_SR, align 4
  %415 = load i32, i32* @VGA_SEQ_RST_NAR, align 4
  %416 = or i32 %414, %415
  %417 = call i32 @REG_WRITE1(%struct.vga_softc* %412, i32 %413, i32 %416)
  %418 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %419 = load i32, i32* @VGA_CRTC_ADDRESS, align 4
  %420 = load i32, i32* @VGA_CRTC_MODE_CONTROL, align 4
  %421 = call i32 @REG_WRITE1(%struct.vga_softc* %418, i32 %419, i32 %420)
  %422 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %423 = load i32, i32* @VGA_CRTC_DATA, align 4
  %424 = call i32 @REG_READ1(%struct.vga_softc* %422, i32 %423)
  store i32 %424, i32* %7, align 4
  %425 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %426 = load i32, i32* @VGA_CRTC_DATA, align 4
  %427 = load i32, i32* %7, align 4
  %428 = load i32, i32* @VGA_CRTC_MC_HR, align 4
  %429 = or i32 %427, %428
  %430 = call i32 @REG_WRITE1(%struct.vga_softc* %425, i32 %426, i32 %429)
  %431 = load i32, i32* %5, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %454, label %433

433:                                              ; preds = %407
  %434 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %435 = load i32, i32* @VGA_GC_ADDRESS, align 4
  %436 = load i32, i32* @VGA_GC_MODE, align 4
  %437 = call i32 @REG_WRITE1(%struct.vga_softc* %434, i32 %435, i32 %436)
  %438 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %439 = load i32, i32* @VGA_GC_DATA, align 4
  %440 = call i32 @REG_WRITE1(%struct.vga_softc* %438, i32 %439, i32 3)
  %441 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %442 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %441, i32 0, i32 0
  store i32 3, i32* %442, align 4
  %443 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %444 = load i32, i32* @VGA_GC_ADDRESS, align 4
  %445 = load i32, i32* @VGA_GC_ENABLE_SET_RESET, align 4
  %446 = call i32 @REG_WRITE1(%struct.vga_softc* %443, i32 %444, i32 %445)
  %447 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %448 = load i32, i32* @VGA_GC_DATA, align 4
  %449 = call i32 @REG_WRITE1(%struct.vga_softc* %447, i32 %448, i32 0)
  %450 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %451 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %450, i32 0, i32 2
  store i32 255, i32* %451, align 4
  %452 = load %struct.vga_softc*, %struct.vga_softc** %6, align 8
  %453 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %452, i32 0, i32 1
  store i32 255, i32* %453, align 4
  br label %454

454:                                              ; preds = %433, %407
  store i32 0, i32* %3, align 4
  br label %455

455:                                              ; preds = %454, %61
  %456 = load i32, i32* %3, align 4
  ret i32 %456
}

declare dso_local i32 @REG_READ1(%struct.vga_softc*, i32) #1

declare dso_local i32 @REG_WRITE1(%struct.vga_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @vga_initialize_graphics(%struct.vt_device*) #1

declare dso_local i32 @VGA_AC_PALETTE(i32) #1

declare dso_local i32 @MEM_WRITE1(%struct.vga_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
