; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_initefx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_initefx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i64, i64, i64, i8*, i32, i64, i8**, i64, i64, i32, i8** }

@EMU_DBG = common dso_local global i32 0, align 4
@EMU_DBG_SINGLE_STEP = common dso_local global i32 0, align 4
@EMU_A_DBG = common dso_local global i32 0, align 4
@EMU_A_DBG_SINGLE_STEP = common dso_local global i32 0, align 4
@ACC3 = common dso_local global i32 0, align 4
@SKIP = common dso_local global i32 0, align 4
@NUM_MUTE = common dso_local global i32 0, align 4
@C_FRONT_L = common dso_local global i64 0, align 8
@C_FRONT_R = common dso_local global i64 0, align 8
@C_REC_L = common dso_local global i64 0, align 8
@C_REC_R = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"pcm_front_l\00", align 1
@M_FX0_FRONT_L = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"pcm_front_r\00", align 1
@M_FX1_FRONT_R = common dso_local global i32 0, align 4
@M_FX0_REC_L = common dso_local global i32 0, align 4
@M_FX1_REC_R = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"ac97_front_l\00", align 1
@IN_AC97_L = common dso_local global i32 0, align 4
@M_IN0_FRONT_L = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"ac97_front_r\00", align 1
@IN_AC97_R = common dso_local global i32 0, align 4
@M_IN0_FRONT_R = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"ac97_rec_l\00", align 1
@M_IN0_REC_L = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"ac97_rec_r\00", align 1
@M_IN0_REC_R = common dso_local global i32 0, align 4
@CDSPDIFMUTE = common dso_local global i32 0, align 4
@IN_SPDIF_CD_L = common dso_local global i32 0, align 4
@M_IN1_FRONT_L = common dso_local global i32 0, align 4
@IN_SPDIF_CD_R = common dso_local global i32 0, align 4
@M_IN1_FRONT_R = common dso_local global i32 0, align 4
@M_IN1_REC_L = common dso_local global i32 0, align 4
@M_IN1_REC_R = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"zoom_front_l\00", align 1
@IN_ZOOM_L = common dso_local global i32 0, align 4
@M_IN2_FRONT_L = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"zoom_front_r\00", align 1
@IN_ZOOM_R = common dso_local global i32 0, align 4
@M_IN2_FRONT_R = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"zoom_rec_l\00", align 1
@M_IN2_REC_L = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"zoom_rec_r\00", align 1
@M_IN2_REC_R = common dso_local global i32 0, align 4
@IN_TOSLINK_L = common dso_local global i32 0, align 4
@M_IN3_FRONT_L = common dso_local global i32 0, align 4
@IN_TOSLINK_R = common dso_local global i32 0, align 4
@M_IN3_FRONT_R = common dso_local global i32 0, align 4
@M_IN3_REC_L = common dso_local global i32 0, align 4
@M_IN3_REC_R = common dso_local global i32 0, align 4
@IN_LINE1_L = common dso_local global i32 0, align 4
@M_IN4_FRONT_L = common dso_local global i32 0, align 4
@IN_LINE1_R = common dso_local global i32 0, align 4
@M_IN4_FRONT_R = common dso_local global i32 0, align 4
@M_IN4_REC_L = common dso_local global i32 0, align 4
@M_IN4_REC_R = common dso_local global i32 0, align 4
@IN_COAX_SPDIF_L = common dso_local global i32 0, align 4
@M_IN5_FRONT_L = common dso_local global i32 0, align 4
@IN_COAX_SPDIF_R = common dso_local global i32 0, align 4
@M_IN5_FRONT_R = common dso_local global i32 0, align 4
@M_IN5_REC_L = common dso_local global i32 0, align 4
@M_IN5_REC_R = common dso_local global i32 0, align 4
@IN_LINE2_L = common dso_local global i32 0, align 4
@M_IN6_FRONT_L = common dso_local global i32 0, align 4
@IN_LINE2_R = common dso_local global i32 0, align 4
@M_IN6_FRONT_R = common dso_local global i32 0, align 4
@M_IN6_REC_L = common dso_local global i32 0, align 4
@M_IN6_REC_R = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"in7_front_l\00", align 1
@M_IN7_FRONT_L = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"in7_front_r\00", align 1
@M_IN7_FRONT_R = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"in7_rec_l\00", align 1
@M_IN7_REC_L = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"in7_rec_r\00", align 1
@M_IN7_REC_R = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"master_front_l\00", align 1
@M_MASTER_FRONT_L = common dso_local global i32 0, align 4
@OUT_AC97_L = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"master_front_r\00", align 1
@M_MASTER_FRONT_R = common dso_local global i32 0, align 4
@OUT_AC97_R = common dso_local global i32 0, align 4
@OUT_TOSLINK_L = common dso_local global i32 0, align 4
@OUT_TOSLINK_R = common dso_local global i32 0, align 4
@OUT_HEADPHONE_L = common dso_local global i32 0, align 4
@OUT_HEADPHONE_R = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"master_rec_l\00", align 1
@M_MASTER_REC_L = common dso_local global i32 0, align 4
@OUT_ADC_REC_L = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"master_rec_r\00", align 1
@M_MASTER_REC_R = common dso_local global i32 0, align 4
@OUT_ADC_REC_R = common dso_local global i32 0, align 4
@C_REAR_L = common dso_local global i64 0, align 8
@C_REAR_R = common dso_local global i64 0, align 8
@M_FX2_REAR_L = common dso_local global i32 0, align 4
@M_FX3_REAR_R = common dso_local global i32 0, align 4
@M_MASTER_REAR_L = common dso_local global i32 0, align 4
@OUT_REAR_L = common dso_local global i32 0, align 4
@M_MASTER_REAR_R = common dso_local global i32 0, align 4
@OUT_REAR_R = common dso_local global i32 0, align 4
@C_CENTER = common dso_local global i64 0, align 8
@M_FX4_CENTER = common dso_local global i32 0, align 4
@M_MASTER_CENTER = common dso_local global i32 0, align 4
@OUT_D_CENTER = common dso_local global i32 0, align 4
@ANALOGMUTE = common dso_local global i32 0, align 4
@OUT_A_CENTER = common dso_local global i32 0, align 4
@C_SUB = common dso_local global i64 0, align 8
@M_FX5_SUBWOOFER = common dso_local global i32 0, align 4
@M_MASTER_SUBWOOFER = common dso_local global i32 0, align 4
@OUT_D_SUB = common dso_local global i32 0, align 4
@OUT_A_SUB = common dso_local global i32 0, align 4
@A_IN_AC97_L = common dso_local global i32 0, align 4
@A_IN_AC97_R = common dso_local global i32 0, align 4
@A_IN_SPDIF_CD_L = common dso_local global i32 0, align 4
@A_IN_SPDIF_CD_R = common dso_local global i32 0, align 4
@A_IN_O_SPDIF_L = common dso_local global i32 0, align 4
@A_IN_O_SPDIF_R = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"in3_front_l\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"in3_front_r\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"in3_rec_l\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"in3_rec_r\00", align 1
@A_IN_LINE2_L = common dso_local global i32 0, align 4
@A_IN_LINE2_R = common dso_local global i32 0, align 4
@A_IN_R_SPDIF_L = common dso_local global i32 0, align 4
@A_IN_R_SPDIF_R = common dso_local global i32 0, align 4
@A_IN_AUX2_L = common dso_local global i32 0, align 4
@A_IN_AUX2_R = common dso_local global i32 0, align 4
@A_OUT_A_FRONT_L = common dso_local global i32 0, align 4
@A_OUT_A_FRONT_R = common dso_local global i32 0, align 4
@A_OUT_D_FRONT_L = common dso_local global i32 0, align 4
@A_OUT_D_FRONT_R = common dso_local global i32 0, align 4
@A_OUT_HPHONE_L = common dso_local global i32 0, align 4
@A_OUT_HPHONE_R = common dso_local global i32 0, align 4
@A_OUT_ADC_REC_L = common dso_local global i32 0, align 4
@A_OUT_ADC_REC_R = common dso_local global i32 0, align 4
@A_OUT_A_REAR_L = common dso_local global i32 0, align 4
@A_OUT_A_REAR_R = common dso_local global i32 0, align 4
@A_OUT_D_REAR_L = common dso_local global i32 0, align 4
@A_OUT_D_REAR_R = common dso_local global i32 0, align 4
@A_OUT_D_CENTER = common dso_local global i32 0, align 4
@A_OUT_D_SUB = common dso_local global i32 0, align 4
@C_SIDE_L = common dso_local global i64 0, align 8
@C_SIDE_R = common dso_local global i64 0, align 8
@M_FX6_SIDE_L = common dso_local global i32 0, align 4
@M_FX7_SIDE_R = common dso_local global i32 0, align 4
@M_MASTER_SIDE_L = common dso_local global i32 0, align 4
@A_OUT_A_SIDE_L = common dso_local global i32 0, align 4
@M_MASTER_SIDE_R = common dso_local global i32 0, align 4
@A_OUT_A_SIDE_R = common dso_local global i32 0, align 4
@A_OUT_D_SIDE_L = common dso_local global i32 0, align 4
@A_OUT_D_SIDE_R = common dso_local global i32 0, align 4
@MACS = common dso_local global i32 0, align 4
@A_OUT_A_CENTER = common dso_local global i32 0, align 4
@A_OUT_A_SUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emu_sc_info*)* @emu_initefx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_initefx(%struct.emu_sc_info* %0) #0 {
  %2 = alloca %struct.emu_sc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %2, align 8
  %5 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %6 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %11 = load i32, i32* @EMU_DBG, align 4
  %12 = load i32, i32* @EMU_DBG_SINGLE_STEP, align 4
  %13 = call i32 @emu_wrptr(%struct.emu_sc_info* %10, i32 0, i32 %11, i32 %12)
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %16 = load i32, i32* @EMU_A_DBG, align 4
  %17 = load i32, i32* @EMU_A_DBG_SINGLE_STEP, align 4
  %18 = call i32 @emu_wrptr(%struct.emu_sc_info* %15, i32 0, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %9
  store i64 0, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %23 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %28 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %33 = load i32, i32* @ACC3, align 4
  %34 = call i32 @DSP_CONST(i32 0)
  %35 = call i32 @DSP_CONST(i32 0)
  %36 = call i32 @DSP_CONST(i32 0)
  %37 = call i32 @DSP_CONST(i32 0)
  %38 = call i32 @emu_addefxop(%struct.emu_sc_info* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i64* %4)
  br label %47

39:                                               ; preds = %26
  %40 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %41 = load i32, i32* @SKIP, align 4
  %42 = call i32 @DSP_CONST(i32 0)
  %43 = call i32 @DSP_CONST(i32 0)
  %44 = call i32 @DSP_CONST(i32 15)
  %45 = call i32 @DSP_CONST(i32 0)
  %46 = call i32 @emu_addefxop(%struct.emu_sc_info* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i64* %4)
  br label %47

47:                                               ; preds = %39, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %20

51:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %76, %51
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @NUM_MUTE, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %58 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @emu_rm_gpr_alloc(i32 %59, i32 1)
  %61 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %62 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %61, i32 0, i32 11
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %60, i8** %66, align 8
  %67 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %68 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %69 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %68, i32 0, i32 11
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @emumix_set_gpr(%struct.emu_sc_info* %67, i8* %74, i32 1)
  br label %76

76:                                               ; preds = %56
  %77 = load i32, i32* %3, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %52

79:                                               ; preds = %52
  %80 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %81 = call i32 @emu_digitalswitch(%struct.emu_sc_info* %80)
  store i64 0, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %94, %79
  %83 = load i32, i32* %3, align 4
  %84 = icmp ult i32 %83, 16
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %87 = load i32, i32* @ACC3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @OUTP(i32 %88)
  %90 = call i32 @DSP_CONST(i32 0)
  %91 = call i32 @DSP_CONST(i32 0)
  %92 = call i32 @DSP_CONST(i32 0)
  %93 = call i32 @emu_addefxop(%struct.emu_sc_info* %86, i32 %87, i32 %89, i32 %90, i32 %91, i32 %92, i64* %4)
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %3, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %82

97:                                               ; preds = %82
  %98 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %99 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %471

102:                                              ; preds = %97
  %103 = load i64, i64* @C_FRONT_L, align 8
  %104 = call i32 @EFX_CACHE(i64 %103)
  %105 = load i64, i64* @C_FRONT_R, align 8
  %106 = call i32 @EFX_CACHE(i64 %105)
  %107 = load i64, i64* @C_REC_L, align 8
  %108 = call i32 @EFX_CACHE(i64 %107)
  %109 = load i64, i64* @C_REC_R, align 8
  %110 = call i32 @EFX_CACHE(i64 %109)
  %111 = call i32 @FX(i32 0)
  %112 = load i32, i32* @M_FX0_FRONT_L, align 4
  %113 = load i64, i64* @C_FRONT_L, align 8
  %114 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %112, i64 %113, i32 100)
  %115 = call i32 @FX(i32 1)
  %116 = load i32, i32* @M_FX1_FRONT_R, align 4
  %117 = load i64, i64* @C_FRONT_R, align 8
  %118 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116, i64 %117, i32 100)
  %119 = call i32 @FX(i32 0)
  %120 = load i32, i32* @M_FX0_REC_L, align 4
  %121 = load i64, i64* @C_REC_L, align 8
  %122 = call i32 @EFX_ROUTE(i8* null, i32 %119, i32 %120, i64 %121, i32 0)
  %123 = call i32 @FX(i32 1)
  %124 = load i32, i32* @M_FX1_REC_R, align 4
  %125 = load i64, i64* @C_REC_R, align 8
  %126 = call i32 @EFX_ROUTE(i8* null, i32 %123, i32 %124, i64 %125, i32 0)
  %127 = load i32, i32* @IN_AC97_L, align 4
  %128 = call i32 @INP(i32 %127)
  %129 = load i32, i32* @M_IN0_FRONT_L, align 4
  %130 = load i64, i64* @C_FRONT_L, align 8
  %131 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %129, i64 %130, i32 0)
  %132 = load i32, i32* @IN_AC97_R, align 4
  %133 = call i32 @INP(i32 %132)
  %134 = load i32, i32* @M_IN0_FRONT_R, align 4
  %135 = load i64, i64* @C_FRONT_R, align 8
  %136 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %134, i64 %135, i32 0)
  %137 = load i32, i32* @IN_AC97_L, align 4
  %138 = call i32 @INP(i32 %137)
  %139 = load i32, i32* @M_IN0_REC_L, align 4
  %140 = load i64, i64* @C_REC_L, align 8
  %141 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %138, i32 %139, i64 %140, i32 0)
  %142 = load i32, i32* @IN_AC97_R, align 4
  %143 = call i32 @INP(i32 %142)
  %144 = load i32, i32* @M_IN0_REC_R, align 4
  %145 = load i64, i64* @C_REC_R, align 8
  %146 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %143, i32 %144, i64 %145, i32 0)
  %147 = load i32, i32* @CDSPDIFMUTE, align 4
  %148 = call i32 @EFX_SKIP(i32 4, i32 %147)
  %149 = load i32, i32* @IN_SPDIF_CD_L, align 4
  %150 = call i32 @INP(i32 %149)
  %151 = load i32, i32* @M_IN1_FRONT_L, align 4
  %152 = load i64, i64* @C_FRONT_L, align 8
  %153 = call i32 @EFX_ROUTE(i8* null, i32 %150, i32 %151, i64 %152, i32 0)
  %154 = load i32, i32* @IN_SPDIF_CD_R, align 4
  %155 = call i32 @INP(i32 %154)
  %156 = load i32, i32* @M_IN1_FRONT_R, align 4
  %157 = load i64, i64* @C_FRONT_R, align 8
  %158 = call i32 @EFX_ROUTE(i8* null, i32 %155, i32 %156, i64 %157, i32 0)
  %159 = load i32, i32* @IN_SPDIF_CD_L, align 4
  %160 = call i32 @INP(i32 %159)
  %161 = load i32, i32* @M_IN1_REC_L, align 4
  %162 = load i64, i64* @C_REC_L, align 8
  %163 = call i32 @EFX_ROUTE(i8* null, i32 %160, i32 %161, i64 %162, i32 0)
  %164 = load i32, i32* @IN_SPDIF_CD_R, align 4
  %165 = call i32 @INP(i32 %164)
  %166 = load i32, i32* @M_IN1_REC_R, align 4
  %167 = load i64, i64* @C_REC_R, align 8
  %168 = call i32 @EFX_ROUTE(i8* null, i32 %165, i32 %166, i64 %167, i32 0)
  %169 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %170 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %102
  %174 = load i32, i32* @IN_ZOOM_L, align 4
  %175 = call i32 @INP(i32 %174)
  %176 = load i32, i32* @M_IN2_FRONT_L, align 4
  %177 = load i64, i64* @C_FRONT_L, align 8
  %178 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %175, i32 %176, i64 %177, i32 0)
  %179 = load i32, i32* @IN_ZOOM_R, align 4
  %180 = call i32 @INP(i32 %179)
  %181 = load i32, i32* @M_IN2_FRONT_R, align 4
  %182 = load i64, i64* @C_FRONT_R, align 8
  %183 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %180, i32 %181, i64 %182, i32 0)
  %184 = load i32, i32* @IN_ZOOM_L, align 4
  %185 = call i32 @INP(i32 %184)
  %186 = load i32, i32* @M_IN2_REC_L, align 4
  %187 = load i64, i64* @C_REC_L, align 8
  %188 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %185, i32 %186, i64 %187, i32 0)
  %189 = load i32, i32* @IN_ZOOM_R, align 4
  %190 = call i32 @INP(i32 %189)
  %191 = load i32, i32* @M_IN2_REC_R, align 4
  %192 = load i64, i64* @C_REC_R, align 8
  %193 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %190, i32 %191, i64 %192, i32 0)
  br label %194

194:                                              ; preds = %173, %102
  %195 = load i32, i32* @IN_TOSLINK_L, align 4
  %196 = call i32 @INP(i32 %195)
  %197 = load i32, i32* @M_IN3_FRONT_L, align 4
  %198 = load i64, i64* @C_FRONT_L, align 8
  %199 = call i32 @EFX_ROUTE(i8* null, i32 %196, i32 %197, i64 %198, i32 0)
  %200 = load i32, i32* @IN_TOSLINK_R, align 4
  %201 = call i32 @INP(i32 %200)
  %202 = load i32, i32* @M_IN3_FRONT_R, align 4
  %203 = load i64, i64* @C_FRONT_R, align 8
  %204 = call i32 @EFX_ROUTE(i8* null, i32 %201, i32 %202, i64 %203, i32 0)
  %205 = load i32, i32* @IN_TOSLINK_L, align 4
  %206 = call i32 @INP(i32 %205)
  %207 = load i32, i32* @M_IN3_REC_L, align 4
  %208 = load i64, i64* @C_REC_L, align 8
  %209 = call i32 @EFX_ROUTE(i8* null, i32 %206, i32 %207, i64 %208, i32 0)
  %210 = load i32, i32* @IN_TOSLINK_R, align 4
  %211 = call i32 @INP(i32 %210)
  %212 = load i32, i32* @M_IN3_REC_R, align 4
  %213 = load i64, i64* @C_REC_R, align 8
  %214 = call i32 @EFX_ROUTE(i8* null, i32 %211, i32 %212, i64 %213, i32 0)
  %215 = load i32, i32* @IN_LINE1_L, align 4
  %216 = call i32 @INP(i32 %215)
  %217 = load i32, i32* @M_IN4_FRONT_L, align 4
  %218 = load i64, i64* @C_FRONT_L, align 8
  %219 = call i32 @EFX_ROUTE(i8* null, i32 %216, i32 %217, i64 %218, i32 0)
  %220 = load i32, i32* @IN_LINE1_R, align 4
  %221 = call i32 @INP(i32 %220)
  %222 = load i32, i32* @M_IN4_FRONT_R, align 4
  %223 = load i64, i64* @C_FRONT_R, align 8
  %224 = call i32 @EFX_ROUTE(i8* null, i32 %221, i32 %222, i64 %223, i32 0)
  %225 = load i32, i32* @IN_LINE1_L, align 4
  %226 = call i32 @INP(i32 %225)
  %227 = load i32, i32* @M_IN4_REC_L, align 4
  %228 = load i64, i64* @C_REC_L, align 8
  %229 = call i32 @EFX_ROUTE(i8* null, i32 %226, i32 %227, i64 %228, i32 0)
  %230 = load i32, i32* @IN_LINE1_R, align 4
  %231 = call i32 @INP(i32 %230)
  %232 = load i32, i32* @M_IN4_REC_R, align 4
  %233 = load i64, i64* @C_REC_R, align 8
  %234 = call i32 @EFX_ROUTE(i8* null, i32 %231, i32 %232, i64 %233, i32 0)
  %235 = load i32, i32* @IN_COAX_SPDIF_L, align 4
  %236 = call i32 @INP(i32 %235)
  %237 = load i32, i32* @M_IN5_FRONT_L, align 4
  %238 = load i64, i64* @C_FRONT_L, align 8
  %239 = call i32 @EFX_ROUTE(i8* null, i32 %236, i32 %237, i64 %238, i32 0)
  %240 = load i32, i32* @IN_COAX_SPDIF_R, align 4
  %241 = call i32 @INP(i32 %240)
  %242 = load i32, i32* @M_IN5_FRONT_R, align 4
  %243 = load i64, i64* @C_FRONT_R, align 8
  %244 = call i32 @EFX_ROUTE(i8* null, i32 %241, i32 %242, i64 %243, i32 0)
  %245 = load i32, i32* @IN_COAX_SPDIF_L, align 4
  %246 = call i32 @INP(i32 %245)
  %247 = load i32, i32* @M_IN5_REC_L, align 4
  %248 = load i64, i64* @C_REC_L, align 8
  %249 = call i32 @EFX_ROUTE(i8* null, i32 %246, i32 %247, i64 %248, i32 0)
  %250 = load i32, i32* @IN_COAX_SPDIF_R, align 4
  %251 = call i32 @INP(i32 %250)
  %252 = load i32, i32* @M_IN5_REC_R, align 4
  %253 = load i64, i64* @C_REC_R, align 8
  %254 = call i32 @EFX_ROUTE(i8* null, i32 %251, i32 %252, i64 %253, i32 0)
  %255 = load i32, i32* @IN_LINE2_L, align 4
  %256 = call i32 @INP(i32 %255)
  %257 = load i32, i32* @M_IN6_FRONT_L, align 4
  %258 = load i64, i64* @C_FRONT_L, align 8
  %259 = call i32 @EFX_ROUTE(i8* null, i32 %256, i32 %257, i64 %258, i32 0)
  %260 = load i32, i32* @IN_LINE2_R, align 4
  %261 = call i32 @INP(i32 %260)
  %262 = load i32, i32* @M_IN6_FRONT_R, align 4
  %263 = load i64, i64* @C_FRONT_R, align 8
  %264 = call i32 @EFX_ROUTE(i8* null, i32 %261, i32 %262, i64 %263, i32 0)
  %265 = load i32, i32* @IN_LINE2_L, align 4
  %266 = call i32 @INP(i32 %265)
  %267 = load i32, i32* @M_IN6_REC_L, align 4
  %268 = load i64, i64* @C_REC_L, align 8
  %269 = call i32 @EFX_ROUTE(i8* null, i32 %266, i32 %267, i64 %268, i32 0)
  %270 = load i32, i32* @IN_LINE2_R, align 4
  %271 = call i32 @INP(i32 %270)
  %272 = load i32, i32* @M_IN6_REC_R, align 4
  %273 = load i64, i64* @C_REC_R, align 8
  %274 = call i32 @EFX_ROUTE(i8* null, i32 %271, i32 %272, i64 %273, i32 0)
  %275 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %276 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = icmp sgt i64 %277, 0
  br i1 %278, label %279, label %296

279:                                              ; preds = %194
  %280 = call i32 @INP(i32 14)
  %281 = load i32, i32* @M_IN7_FRONT_L, align 4
  %282 = load i64, i64* @C_FRONT_L, align 8
  %283 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %280, i32 %281, i64 %282, i32 0)
  %284 = call i32 @INP(i32 15)
  %285 = load i32, i32* @M_IN7_FRONT_R, align 4
  %286 = load i64, i64* @C_FRONT_R, align 8
  %287 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %284, i32 %285, i64 %286, i32 0)
  %288 = call i32 @INP(i32 14)
  %289 = load i32, i32* @M_IN7_REC_L, align 4
  %290 = load i64, i64* @C_REC_L, align 8
  %291 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %288, i32 %289, i64 %290, i32 0)
  %292 = call i32 @INP(i32 15)
  %293 = load i32, i32* @M_IN7_REC_R, align 4
  %294 = load i64, i64* @C_REC_R, align 8
  %295 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %292, i32 %293, i64 %294, i32 0)
  br label %296

296:                                              ; preds = %279, %194
  %297 = load i64, i64* @C_FRONT_L, align 8
  %298 = load i32, i32* @M_MASTER_FRONT_L, align 4
  %299 = load i32, i32* @OUT_AC97_L, align 4
  %300 = call i32 @EFX_OUTPUT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i64 %297, i32 %298, i32 %299, i32 100)
  %301 = load i64, i64* @C_FRONT_R, align 8
  %302 = load i32, i32* @M_MASTER_FRONT_R, align 4
  %303 = load i32, i32* @OUT_AC97_R, align 4
  %304 = call i32 @EFX_OUTPUT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i64 %301, i32 %302, i32 %303, i32 100)
  %305 = load i64, i64* @C_FRONT_L, align 8
  %306 = load i32, i32* @M_MASTER_FRONT_L, align 4
  %307 = load i32, i32* @OUT_TOSLINK_L, align 4
  %308 = call i32 @EFX_OUTPUTD(i64 %305, i32 %306, i32 %307)
  %309 = load i64, i64* @C_FRONT_R, align 8
  %310 = load i32, i32* @M_MASTER_FRONT_R, align 4
  %311 = load i32, i32* @OUT_TOSLINK_R, align 4
  %312 = call i32 @EFX_OUTPUTD(i64 %309, i32 %310, i32 %311)
  %313 = load i64, i64* @C_FRONT_L, align 8
  %314 = load i32, i32* @M_MASTER_FRONT_L, align 4
  %315 = load i32, i32* @OUT_HEADPHONE_L, align 4
  %316 = call i32 @EFX_OUTPUTD(i64 %313, i32 %314, i32 %315)
  %317 = load i64, i64* @C_FRONT_R, align 8
  %318 = load i32, i32* @M_MASTER_FRONT_R, align 4
  %319 = load i32, i32* @OUT_HEADPHONE_R, align 4
  %320 = call i32 @EFX_OUTPUTD(i64 %317, i32 %318, i32 %319)
  %321 = load i64, i64* @C_REC_L, align 8
  %322 = load i32, i32* @M_MASTER_REC_L, align 4
  %323 = load i32, i32* @OUT_ADC_REC_L, align 4
  %324 = call i32 @EFX_OUTPUT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 %321, i32 %322, i32 %323, i32 100)
  %325 = load i64, i64* @C_REC_R, align 8
  %326 = load i32, i32* @M_MASTER_REC_R, align 4
  %327 = load i32, i32* @OUT_ADC_REC_R, align 4
  %328 = call i32 @EFX_OUTPUT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i64 %325, i32 %326, i32 %327, i32 100)
  %329 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %330 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %329, i32 0, i32 10
  %331 = load i32, i32* %330, align 8
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %392, label %333

333:                                              ; preds = %296
  %334 = load i64, i64* @C_REAR_L, align 8
  %335 = call i32 @EFX_CACHE(i64 %334)
  %336 = load i64, i64* @C_REAR_R, align 8
  %337 = call i32 @EFX_CACHE(i64 %336)
  %338 = call i32 @FX(i32 2)
  %339 = load i32, i32* @M_FX2_REAR_L, align 4
  %340 = load i64, i64* @C_REAR_L, align 8
  %341 = call i32 @EFX_ROUTE(i8* null, i32 %338, i32 %339, i64 %340, i32 100)
  %342 = call i32 @FX(i32 3)
  %343 = load i32, i32* @M_FX3_REAR_R, align 4
  %344 = load i64, i64* @C_REAR_R, align 8
  %345 = call i32 @EFX_ROUTE(i8* null, i32 %342, i32 %343, i64 %344, i32 100)
  %346 = load i64, i64* @C_REAR_L, align 8
  %347 = load i32, i32* @M_MASTER_REAR_L, align 4
  %348 = load i32, i32* @OUT_REAR_L, align 4
  %349 = call i32 @EFX_OUTPUT(i8* null, i64 %346, i32 %347, i32 %348, i32 100)
  %350 = load i64, i64* @C_REAR_R, align 8
  %351 = load i32, i32* @M_MASTER_REAR_R, align 4
  %352 = load i32, i32* @OUT_REAR_R, align 4
  %353 = call i32 @EFX_OUTPUT(i8* null, i64 %350, i32 %351, i32 %352, i32 100)
  %354 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %355 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %354, i32 0, i32 8
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %391

358:                                              ; preds = %333
  %359 = load i64, i64* @C_CENTER, align 8
  %360 = call i32 @EFX_CACHE(i64 %359)
  %361 = call i32 @FX(i32 4)
  %362 = load i32, i32* @M_FX4_CENTER, align 4
  %363 = load i64, i64* @C_CENTER, align 8
  %364 = call i32 @EFX_ROUTE(i8* null, i32 %361, i32 %362, i64 %363, i32 100)
  %365 = load i64, i64* @C_CENTER, align 8
  %366 = load i32, i32* @M_MASTER_CENTER, align 4
  %367 = load i32, i32* @OUT_D_CENTER, align 4
  %368 = call i32 @EFX_OUTPUT(i8* null, i64 %365, i32 %366, i32 %367, i32 100)
  %369 = load i32, i32* @ANALOGMUTE, align 4
  %370 = call i32 @EFX_SKIP(i32 1, i32 %369)
  %371 = load i64, i64* @C_CENTER, align 8
  %372 = load i32, i32* @M_MASTER_CENTER, align 4
  %373 = load i32, i32* @OUT_A_CENTER, align 4
  %374 = call i32 @EFX_OUTPUTD(i64 %371, i32 %372, i32 %373)
  %375 = load i64, i64* @C_SUB, align 8
  %376 = call i32 @EFX_CACHE(i64 %375)
  %377 = call i32 @FX(i32 5)
  %378 = load i32, i32* @M_FX5_SUBWOOFER, align 4
  %379 = load i64, i64* @C_SUB, align 8
  %380 = call i32 @EFX_ROUTE(i8* null, i32 %377, i32 %378, i64 %379, i32 100)
  %381 = load i64, i64* @C_SUB, align 8
  %382 = load i32, i32* @M_MASTER_SUBWOOFER, align 4
  %383 = load i32, i32* @OUT_D_SUB, align 4
  %384 = call i32 @EFX_OUTPUT(i8* null, i64 %381, i32 %382, i32 %383, i32 100)
  %385 = load i32, i32* @ANALOGMUTE, align 4
  %386 = call i32 @EFX_SKIP(i32 1, i32 %385)
  %387 = load i64, i64* @C_SUB, align 8
  %388 = load i32, i32* @M_MASTER_SUBWOOFER, align 4
  %389 = load i32, i32* @OUT_A_SUB, align 4
  %390 = call i32 @EFX_OUTPUTD(i64 %387, i32 %388, i32 %389)
  br label %391

391:                                              ; preds = %358, %333
  br label %401

392:                                              ; preds = %296
  %393 = load i64, i64* @C_FRONT_L, align 8
  %394 = load i32, i32* @M_MASTER_REAR_L, align 4
  %395 = load i32, i32* @OUT_REAR_L, align 4
  %396 = call i32 @EFX_OUTPUT(i8* null, i64 %393, i32 %394, i32 %395, i32 57)
  %397 = load i64, i64* @C_FRONT_R, align 8
  %398 = load i32, i32* @M_MASTER_REAR_R, align 4
  %399 = load i32, i32* @OUT_REAR_R, align 4
  %400 = call i32 @EFX_OUTPUT(i8* null, i64 %397, i32 %398, i32 %399, i32 57)
  br label %401

401:                                              ; preds = %392, %391
  %402 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %403 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %402, i32 0, i32 6
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %470

406:                                              ; preds = %401
  %407 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %408 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %407, i32 0, i32 8
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  %411 = zext i1 %410 to i64
  %412 = select i1 %410, i32 2, i32 0
  store i32 %412, i32* %3, align 4
  br label %413

413:                                              ; preds = %421, %406
  %414 = load i32, i32* %3, align 4
  %415 = icmp ult i32 %414, 2
  br i1 %415, label %416, label %424

416:                                              ; preds = %413
  %417 = load i32, i32* %3, align 4
  %418 = call i32 @FX2(i32 %417)
  %419 = call i32 @DSP_CONST(i32 0)
  %420 = call i32 @EFX_COPY(i32 %418, i32 %419)
  br label %421

421:                                              ; preds = %416
  %422 = load i32, i32* %3, align 4
  %423 = add i32 %422, 1
  store i32 %423, i32* %3, align 4
  br label %413

424:                                              ; preds = %413
  store i32 0, i32* %3, align 4
  br label %425

425:                                              ; preds = %435, %424
  %426 = load i32, i32* %3, align 4
  %427 = icmp ult i32 %426, 4
  br i1 %427, label %428, label %438

428:                                              ; preds = %425
  %429 = load i32, i32* %3, align 4
  %430 = add i32 %429, 2
  %431 = call i32 @FX2(i32 %430)
  %432 = load i32, i32* %3, align 4
  %433 = call i32 @FX(i32 %432)
  %434 = call i32 @EFX_COPY(i32 %431, i32 %433)
  br label %435

435:                                              ; preds = %428
  %436 = load i32, i32* %3, align 4
  %437 = add i32 %436, 1
  store i32 %437, i32* %3, align 4
  br label %425

438:                                              ; preds = %425
  store i32 0, i32* %3, align 4
  br label %439

439:                                              ; preds = %449, %438
  %440 = load i32, i32* %3, align 4
  %441 = icmp ult i32 %440, 9
  br i1 %441, label %442, label %452

442:                                              ; preds = %439
  %443 = load i32, i32* %3, align 4
  %444 = add i32 %443, 8
  %445 = call i32 @FX2(i32 %444)
  %446 = load i32, i32* %3, align 4
  %447 = call i32 @INP(i32 %446)
  %448 = call i32 @EFX_COPY(i32 %445, i32 %447)
  br label %449

449:                                              ; preds = %442
  %450 = load i32, i32* %3, align 4
  %451 = add i32 %450, 1
  store i32 %451, i32* %3, align 4
  br label %439

452:                                              ; preds = %439
  %453 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %454 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %453, i32 0, i32 5
  %455 = load i32, i32* %454, align 8
  %456 = call i8* @emu_rm_gpr_alloc(i32 %455, i32 1)
  %457 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %458 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %457, i32 0, i32 4
  store i8* %456, i8** %458, align 8
  %459 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %460 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %461 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %460, i32 0, i32 4
  %462 = load i8*, i8** %461, align 8
  %463 = call i32 @emumix_set_gpr(%struct.emu_sc_info* %459, i8* %462, i32 -1059192832)
  %464 = call i32 @FX2(i32 15)
  %465 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %466 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %465, i32 0, i32 4
  %467 = load i8*, i8** %466, align 8
  %468 = call i32 @GPR(i8* %467)
  %469 = call i32 @EFX_COPY(i32 %464, i32 %468)
  br label %470

470:                                              ; preds = %452, %401
  br label %960

471:                                              ; preds = %97
  %472 = load i64, i64* @C_FRONT_L, align 8
  %473 = call i32 @EFX_CACHE(i64 %472)
  %474 = load i64, i64* @C_FRONT_R, align 8
  %475 = call i32 @EFX_CACHE(i64 %474)
  %476 = load i64, i64* @C_REC_L, align 8
  %477 = call i32 @EFX_CACHE(i64 %476)
  %478 = load i64, i64* @C_REC_R, align 8
  %479 = call i32 @EFX_CACHE(i64 %478)
  %480 = call i32 @FX(i32 0)
  %481 = load i32, i32* @M_FX0_FRONT_L, align 4
  %482 = load i64, i64* @C_FRONT_L, align 8
  %483 = call i32 @EFX_ROUTE(i8* null, i32 %480, i32 %481, i64 %482, i32 100)
  %484 = call i32 @FX(i32 1)
  %485 = load i32, i32* @M_FX1_FRONT_R, align 4
  %486 = load i64, i64* @C_FRONT_R, align 8
  %487 = call i32 @EFX_ROUTE(i8* null, i32 %484, i32 %485, i64 %486, i32 100)
  %488 = call i32 @FX(i32 0)
  %489 = load i32, i32* @M_FX0_REC_L, align 4
  %490 = load i64, i64* @C_REC_L, align 8
  %491 = call i32 @EFX_ROUTE(i8* null, i32 %488, i32 %489, i64 %490, i32 0)
  %492 = call i32 @FX(i32 1)
  %493 = load i32, i32* @M_FX1_REC_R, align 4
  %494 = load i64, i64* @C_REC_R, align 8
  %495 = call i32 @EFX_ROUTE(i8* null, i32 %492, i32 %493, i64 %494, i32 0)
  %496 = load i32, i32* @A_IN_AC97_L, align 4
  %497 = call i32 @INP(i32 %496)
  %498 = load i32, i32* @M_IN0_FRONT_L, align 4
  %499 = load i64, i64* @C_FRONT_L, align 8
  %500 = call i32 @EFX_ROUTE(i8* null, i32 %497, i32 %498, i64 %499, i32 100)
  %501 = load i32, i32* @A_IN_AC97_R, align 4
  %502 = call i32 @INP(i32 %501)
  %503 = load i32, i32* @M_IN0_FRONT_R, align 4
  %504 = load i64, i64* @C_FRONT_R, align 8
  %505 = call i32 @EFX_ROUTE(i8* null, i32 %502, i32 %503, i64 %504, i32 100)
  %506 = load i32, i32* @A_IN_AC97_L, align 4
  %507 = call i32 @INP(i32 %506)
  %508 = load i32, i32* @M_IN0_REC_L, align 4
  %509 = load i64, i64* @C_REC_L, align 8
  %510 = call i32 @EFX_ROUTE(i8* null, i32 %507, i32 %508, i64 %509, i32 0)
  %511 = load i32, i32* @A_IN_AC97_R, align 4
  %512 = call i32 @INP(i32 %511)
  %513 = load i32, i32* @M_IN0_REC_R, align 4
  %514 = load i64, i64* @C_REC_R, align 8
  %515 = call i32 @EFX_ROUTE(i8* null, i32 %512, i32 %513, i64 %514, i32 0)
  %516 = load i32, i32* @A_IN_SPDIF_CD_L, align 4
  %517 = call i32 @INP(i32 %516)
  %518 = load i32, i32* @M_IN1_FRONT_L, align 4
  %519 = load i64, i64* @C_FRONT_L, align 8
  %520 = call i32 @EFX_ROUTE(i8* null, i32 %517, i32 %518, i64 %519, i32 0)
  %521 = load i32, i32* @A_IN_SPDIF_CD_R, align 4
  %522 = call i32 @INP(i32 %521)
  %523 = load i32, i32* @M_IN1_FRONT_R, align 4
  %524 = load i64, i64* @C_FRONT_R, align 8
  %525 = call i32 @EFX_ROUTE(i8* null, i32 %522, i32 %523, i64 %524, i32 0)
  %526 = load i32, i32* @A_IN_SPDIF_CD_L, align 4
  %527 = call i32 @INP(i32 %526)
  %528 = load i32, i32* @M_IN1_REC_L, align 4
  %529 = load i64, i64* @C_REC_L, align 8
  %530 = call i32 @EFX_ROUTE(i8* null, i32 %527, i32 %528, i64 %529, i32 0)
  %531 = load i32, i32* @A_IN_SPDIF_CD_R, align 4
  %532 = call i32 @INP(i32 %531)
  %533 = load i32, i32* @M_IN1_REC_R, align 4
  %534 = load i64, i64* @C_REC_R, align 8
  %535 = call i32 @EFX_ROUTE(i8* null, i32 %532, i32 %533, i64 %534, i32 0)
  %536 = load i32, i32* @A_IN_O_SPDIF_L, align 4
  %537 = call i32 @INP(i32 %536)
  %538 = load i32, i32* @M_IN2_FRONT_L, align 4
  %539 = load i64, i64* @C_FRONT_L, align 8
  %540 = call i32 @EFX_ROUTE(i8* null, i32 %537, i32 %538, i64 %539, i32 0)
  %541 = load i32, i32* @A_IN_O_SPDIF_R, align 4
  %542 = call i32 @INP(i32 %541)
  %543 = load i32, i32* @M_IN2_FRONT_R, align 4
  %544 = load i64, i64* @C_FRONT_R, align 8
  %545 = call i32 @EFX_ROUTE(i8* null, i32 %542, i32 %543, i64 %544, i32 0)
  %546 = load i32, i32* @A_IN_O_SPDIF_L, align 4
  %547 = call i32 @INP(i32 %546)
  %548 = load i32, i32* @M_IN2_REC_L, align 4
  %549 = load i64, i64* @C_REC_L, align 8
  %550 = call i32 @EFX_ROUTE(i8* null, i32 %547, i32 %548, i64 %549, i32 0)
  %551 = load i32, i32* @A_IN_O_SPDIF_R, align 4
  %552 = call i32 @INP(i32 %551)
  %553 = load i32, i32* @M_IN2_REC_R, align 4
  %554 = load i64, i64* @C_REC_R, align 8
  %555 = call i32 @EFX_ROUTE(i8* null, i32 %552, i32 %553, i64 %554, i32 0)
  %556 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %557 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %556, i32 0, i32 1
  %558 = load i64, i64* %557, align 8
  %559 = icmp sgt i64 %558, 0
  br i1 %559, label %560, label %577

560:                                              ; preds = %471
  %561 = call i32 @INP(i32 6)
  %562 = load i32, i32* @M_IN3_FRONT_L, align 4
  %563 = load i64, i64* @C_FRONT_L, align 8
  %564 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %561, i32 %562, i64 %563, i32 0)
  %565 = call i32 @INP(i32 7)
  %566 = load i32, i32* @M_IN3_FRONT_R, align 4
  %567 = load i64, i64* @C_FRONT_R, align 8
  %568 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %565, i32 %566, i64 %567, i32 0)
  %569 = call i32 @INP(i32 6)
  %570 = load i32, i32* @M_IN3_REC_L, align 4
  %571 = load i64, i64* @C_REC_L, align 8
  %572 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 %569, i32 %570, i64 %571, i32 0)
  %573 = call i32 @INP(i32 7)
  %574 = load i32, i32* @M_IN3_REC_R, align 4
  %575 = load i64, i64* @C_REC_R, align 8
  %576 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 %573, i32 %574, i64 %575, i32 0)
  br label %577

577:                                              ; preds = %560, %471
  %578 = load i32, i32* @A_IN_LINE2_L, align 4
  %579 = call i32 @INP(i32 %578)
  %580 = load i32, i32* @M_IN4_FRONT_L, align 4
  %581 = load i64, i64* @C_FRONT_L, align 8
  %582 = call i32 @EFX_ROUTE(i8* null, i32 %579, i32 %580, i64 %581, i32 0)
  %583 = load i32, i32* @A_IN_LINE2_R, align 4
  %584 = call i32 @INP(i32 %583)
  %585 = load i32, i32* @M_IN4_FRONT_R, align 4
  %586 = load i64, i64* @C_FRONT_R, align 8
  %587 = call i32 @EFX_ROUTE(i8* null, i32 %584, i32 %585, i64 %586, i32 0)
  %588 = load i32, i32* @A_IN_LINE2_L, align 4
  %589 = call i32 @INP(i32 %588)
  %590 = load i32, i32* @M_IN4_REC_L, align 4
  %591 = load i64, i64* @C_REC_L, align 8
  %592 = call i32 @EFX_ROUTE(i8* null, i32 %589, i32 %590, i64 %591, i32 0)
  %593 = load i32, i32* @A_IN_LINE2_R, align 4
  %594 = call i32 @INP(i32 %593)
  %595 = load i32, i32* @M_IN4_REC_R, align 4
  %596 = load i64, i64* @C_REC_R, align 8
  %597 = call i32 @EFX_ROUTE(i8* null, i32 %594, i32 %595, i64 %596, i32 0)
  %598 = load i32, i32* @A_IN_R_SPDIF_L, align 4
  %599 = call i32 @INP(i32 %598)
  %600 = load i32, i32* @M_IN5_FRONT_L, align 4
  %601 = load i64, i64* @C_FRONT_L, align 8
  %602 = call i32 @EFX_ROUTE(i8* null, i32 %599, i32 %600, i64 %601, i32 0)
  %603 = load i32, i32* @A_IN_R_SPDIF_R, align 4
  %604 = call i32 @INP(i32 %603)
  %605 = load i32, i32* @M_IN5_FRONT_R, align 4
  %606 = load i64, i64* @C_FRONT_R, align 8
  %607 = call i32 @EFX_ROUTE(i8* null, i32 %604, i32 %605, i64 %606, i32 0)
  %608 = load i32, i32* @A_IN_R_SPDIF_L, align 4
  %609 = call i32 @INP(i32 %608)
  %610 = load i32, i32* @M_IN5_REC_L, align 4
  %611 = load i64, i64* @C_REC_L, align 8
  %612 = call i32 @EFX_ROUTE(i8* null, i32 %609, i32 %610, i64 %611, i32 0)
  %613 = load i32, i32* @A_IN_R_SPDIF_R, align 4
  %614 = call i32 @INP(i32 %613)
  %615 = load i32, i32* @M_IN5_REC_R, align 4
  %616 = load i64, i64* @C_REC_R, align 8
  %617 = call i32 @EFX_ROUTE(i8* null, i32 %614, i32 %615, i64 %616, i32 0)
  %618 = load i32, i32* @A_IN_AUX2_L, align 4
  %619 = call i32 @INP(i32 %618)
  %620 = load i32, i32* @M_IN6_FRONT_L, align 4
  %621 = load i64, i64* @C_FRONT_L, align 8
  %622 = call i32 @EFX_ROUTE(i8* null, i32 %619, i32 %620, i64 %621, i32 0)
  %623 = load i32, i32* @A_IN_AUX2_R, align 4
  %624 = call i32 @INP(i32 %623)
  %625 = load i32, i32* @M_IN6_FRONT_R, align 4
  %626 = load i64, i64* @C_FRONT_R, align 8
  %627 = call i32 @EFX_ROUTE(i8* null, i32 %624, i32 %625, i64 %626, i32 0)
  %628 = load i32, i32* @A_IN_AUX2_L, align 4
  %629 = call i32 @INP(i32 %628)
  %630 = load i32, i32* @M_IN6_REC_L, align 4
  %631 = load i64, i64* @C_REC_L, align 8
  %632 = call i32 @EFX_ROUTE(i8* null, i32 %629, i32 %630, i64 %631, i32 0)
  %633 = load i32, i32* @A_IN_AUX2_R, align 4
  %634 = call i32 @INP(i32 %633)
  %635 = load i32, i32* @M_IN6_REC_R, align 4
  %636 = load i64, i64* @C_REC_R, align 8
  %637 = call i32 @EFX_ROUTE(i8* null, i32 %634, i32 %635, i64 %636, i32 0)
  %638 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %639 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %638, i32 0, i32 1
  %640 = load i64, i64* %639, align 8
  %641 = icmp sgt i64 %640, 0
  br i1 %641, label %642, label %659

642:                                              ; preds = %577
  %643 = call i32 @INP(i32 14)
  %644 = load i32, i32* @M_IN7_FRONT_L, align 4
  %645 = load i64, i64* @C_FRONT_L, align 8
  %646 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %643, i32 %644, i64 %645, i32 0)
  %647 = call i32 @INP(i32 15)
  %648 = load i32, i32* @M_IN7_FRONT_R, align 4
  %649 = load i64, i64* @C_FRONT_R, align 8
  %650 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %647, i32 %648, i64 %649, i32 0)
  %651 = call i32 @INP(i32 14)
  %652 = load i32, i32* @M_IN7_REC_L, align 4
  %653 = load i64, i64* @C_REC_L, align 8
  %654 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %651, i32 %652, i64 %653, i32 0)
  %655 = call i32 @INP(i32 15)
  %656 = load i32, i32* @M_IN7_REC_R, align 4
  %657 = load i64, i64* @C_REC_R, align 8
  %658 = call i32 @EFX_ROUTE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %655, i32 %656, i64 %657, i32 0)
  br label %659

659:                                              ; preds = %642, %577
  %660 = load i64, i64* @C_FRONT_L, align 8
  %661 = load i32, i32* @M_MASTER_FRONT_L, align 4
  %662 = load i32, i32* @A_OUT_A_FRONT_L, align 4
  %663 = call i32 @EFX_OUTPUT(i8* null, i64 %660, i32 %661, i32 %662, i32 100)
  %664 = load i64, i64* @C_FRONT_R, align 8
  %665 = load i32, i32* @M_MASTER_FRONT_R, align 4
  %666 = load i32, i32* @A_OUT_A_FRONT_R, align 4
  %667 = call i32 @EFX_OUTPUT(i8* null, i64 %664, i32 %665, i32 %666, i32 100)
  %668 = load i64, i64* @C_FRONT_L, align 8
  %669 = load i32, i32* @M_MASTER_FRONT_L, align 4
  %670 = load i32, i32* @A_OUT_D_FRONT_L, align 4
  %671 = call i32 @EFX_OUTPUTD(i64 %668, i32 %669, i32 %670)
  %672 = load i64, i64* @C_FRONT_R, align 8
  %673 = load i32, i32* @M_MASTER_FRONT_R, align 4
  %674 = load i32, i32* @A_OUT_D_FRONT_R, align 4
  %675 = call i32 @EFX_OUTPUTD(i64 %672, i32 %673, i32 %674)
  %676 = load i64, i64* @C_FRONT_L, align 8
  %677 = load i32, i32* @M_MASTER_FRONT_L, align 4
  %678 = load i32, i32* @A_OUT_HPHONE_L, align 4
  %679 = call i32 @EFX_OUTPUTD(i64 %676, i32 %677, i32 %678)
  %680 = load i64, i64* @C_FRONT_R, align 8
  %681 = load i32, i32* @M_MASTER_FRONT_R, align 4
  %682 = load i32, i32* @A_OUT_HPHONE_R, align 4
  %683 = call i32 @EFX_OUTPUTD(i64 %680, i32 %681, i32 %682)
  %684 = load i64, i64* @C_REC_L, align 8
  %685 = load i32, i32* @M_MASTER_REC_L, align 4
  %686 = load i32, i32* @A_OUT_ADC_REC_L, align 4
  %687 = call i32 @EFX_OUTPUT(i8* null, i64 %684, i32 %685, i32 %686, i32 100)
  %688 = load i64, i64* @C_REC_R, align 8
  %689 = load i32, i32* @M_MASTER_REC_R, align 4
  %690 = load i32, i32* @A_OUT_ADC_REC_R, align 4
  %691 = call i32 @EFX_OUTPUT(i8* null, i64 %688, i32 %689, i32 %690, i32 100)
  %692 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %693 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %692, i32 0, i32 10
  %694 = load i32, i32* %693, align 8
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %779, label %696

696:                                              ; preds = %659
  %697 = load i64, i64* @C_REAR_L, align 8
  %698 = call i32 @EFX_CACHE(i64 %697)
  %699 = load i64, i64* @C_REAR_R, align 8
  %700 = call i32 @EFX_CACHE(i64 %699)
  %701 = call i32 @FX(i32 2)
  %702 = load i32, i32* @M_FX2_REAR_L, align 4
  %703 = load i64, i64* @C_REAR_L, align 8
  %704 = call i32 @EFX_ROUTE(i8* null, i32 %701, i32 %702, i64 %703, i32 100)
  %705 = call i32 @FX(i32 3)
  %706 = load i32, i32* @M_FX3_REAR_R, align 4
  %707 = load i64, i64* @C_REAR_R, align 8
  %708 = call i32 @EFX_ROUTE(i8* null, i32 %705, i32 %706, i64 %707, i32 100)
  %709 = load i64, i64* @C_REAR_L, align 8
  %710 = load i32, i32* @M_MASTER_REAR_L, align 4
  %711 = load i32, i32* @A_OUT_A_REAR_L, align 4
  %712 = call i32 @EFX_OUTPUT(i8* null, i64 %709, i32 %710, i32 %711, i32 100)
  %713 = load i64, i64* @C_REAR_R, align 8
  %714 = load i32, i32* @M_MASTER_REAR_R, align 4
  %715 = load i32, i32* @A_OUT_A_REAR_R, align 4
  %716 = call i32 @EFX_OUTPUT(i8* null, i64 %713, i32 %714, i32 %715, i32 100)
  %717 = load i64, i64* @C_REAR_L, align 8
  %718 = load i32, i32* @M_MASTER_REAR_L, align 4
  %719 = load i32, i32* @A_OUT_D_REAR_L, align 4
  %720 = call i32 @EFX_OUTPUTD(i64 %717, i32 %718, i32 %719)
  %721 = load i64, i64* @C_REAR_R, align 8
  %722 = load i32, i32* @M_MASTER_REAR_R, align 4
  %723 = load i32, i32* @A_OUT_D_REAR_R, align 4
  %724 = call i32 @EFX_OUTPUTD(i64 %721, i32 %722, i32 %723)
  %725 = load i64, i64* @C_CENTER, align 8
  %726 = call i32 @EFX_CACHE(i64 %725)
  %727 = call i32 @FX(i32 4)
  %728 = load i32, i32* @M_FX4_CENTER, align 4
  %729 = load i64, i64* @C_CENTER, align 8
  %730 = call i32 @EFX_ROUTE(i8* null, i32 %727, i32 %728, i64 %729, i32 100)
  %731 = load i64, i64* @C_CENTER, align 8
  %732 = load i32, i32* @M_MASTER_CENTER, align 4
  %733 = load i32, i32* @A_OUT_D_CENTER, align 4
  %734 = call i32 @EFX_OUTPUT(i8* null, i64 %731, i32 %732, i32 %733, i32 100)
  %735 = load i64, i64* @C_SUB, align 8
  %736 = call i32 @EFX_CACHE(i64 %735)
  %737 = call i32 @FX(i32 5)
  %738 = load i32, i32* @M_FX5_SUBWOOFER, align 4
  %739 = load i64, i64* @C_SUB, align 8
  %740 = call i32 @EFX_ROUTE(i8* null, i32 %737, i32 %738, i64 %739, i32 100)
  %741 = load i64, i64* @C_SUB, align 8
  %742 = load i32, i32* @M_MASTER_SUBWOOFER, align 4
  %743 = load i32, i32* @A_OUT_D_SUB, align 4
  %744 = call i32 @EFX_OUTPUT(i8* null, i64 %741, i32 %742, i32 %743, i32 100)
  %745 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %746 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %745, i32 0, i32 9
  %747 = load i64, i64* %746, align 8
  %748 = icmp ne i64 %747, 0
  br i1 %748, label %749, label %778

749:                                              ; preds = %696
  %750 = load i64, i64* @C_SIDE_L, align 8
  %751 = call i32 @EFX_CACHE(i64 %750)
  %752 = load i64, i64* @C_SIDE_R, align 8
  %753 = call i32 @EFX_CACHE(i64 %752)
  %754 = call i32 @FX(i32 6)
  %755 = load i32, i32* @M_FX6_SIDE_L, align 4
  %756 = load i64, i64* @C_SIDE_L, align 8
  %757 = call i32 @EFX_ROUTE(i8* null, i32 %754, i32 %755, i64 %756, i32 100)
  %758 = call i32 @FX(i32 7)
  %759 = load i32, i32* @M_FX7_SIDE_R, align 4
  %760 = load i64, i64* @C_SIDE_R, align 8
  %761 = call i32 @EFX_ROUTE(i8* null, i32 %758, i32 %759, i64 %760, i32 100)
  %762 = load i64, i64* @C_SIDE_L, align 8
  %763 = load i32, i32* @M_MASTER_SIDE_L, align 4
  %764 = load i32, i32* @A_OUT_A_SIDE_L, align 4
  %765 = call i32 @EFX_OUTPUT(i8* null, i64 %762, i32 %763, i32 %764, i32 100)
  %766 = load i64, i64* @C_SIDE_R, align 8
  %767 = load i32, i32* @M_MASTER_SIDE_R, align 4
  %768 = load i32, i32* @A_OUT_A_SIDE_R, align 4
  %769 = call i32 @EFX_OUTPUT(i8* null, i64 %766, i32 %767, i32 %768, i32 100)
  %770 = load i64, i64* @C_SIDE_L, align 8
  %771 = load i32, i32* @M_MASTER_SIDE_L, align 4
  %772 = load i32, i32* @A_OUT_D_SIDE_L, align 4
  %773 = call i32 @EFX_OUTPUTD(i64 %770, i32 %771, i32 %772)
  %774 = load i64, i64* @C_SIDE_R, align 8
  %775 = load i32, i32* @M_MASTER_SIDE_R, align 4
  %776 = load i32, i32* @A_OUT_D_SIDE_R, align 4
  %777 = call i32 @EFX_OUTPUTD(i64 %774, i32 %775, i32 %776)
  br label %778

778:                                              ; preds = %749, %696
  br label %926

779:                                              ; preds = %659
  %780 = load i64, i64* @C_FRONT_L, align 8
  %781 = load i32, i32* @M_MASTER_FRONT_L, align 4
  %782 = load i32, i32* @A_OUT_A_REAR_L, align 4
  %783 = call i32 @EFX_OUTPUTD(i64 %780, i32 %781, i32 %782)
  %784 = load i64, i64* @C_FRONT_R, align 8
  %785 = load i32, i32* @M_MASTER_FRONT_R, align 4
  %786 = load i32, i32* @A_OUT_A_REAR_R, align 4
  %787 = call i32 @EFX_OUTPUTD(i64 %784, i32 %785, i32 %786)
  %788 = load i64, i64* @C_FRONT_L, align 8
  %789 = load i32, i32* @M_MASTER_FRONT_L, align 4
  %790 = load i32, i32* @A_OUT_D_REAR_L, align 4
  %791 = call i32 @EFX_OUTPUTD(i64 %788, i32 %789, i32 %790)
  %792 = load i64, i64* @C_FRONT_R, align 8
  %793 = load i32, i32* @M_MASTER_FRONT_R, align 4
  %794 = load i32, i32* @A_OUT_D_REAR_R, align 4
  %795 = call i32 @EFX_OUTPUTD(i64 %792, i32 %793, i32 %794)
  %796 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %797 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %796, i32 0, i32 8
  %798 = load i64, i64* %797, align 8
  %799 = icmp ne i64 %798, 0
  br i1 %799, label %800, label %925

800:                                              ; preds = %779
  %801 = load i64, i64* @C_CENTER, align 8
  %802 = call i32 @EFX_CACHE(i64 %801)
  %803 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %804 = load i32, i32* @MACS, align 4
  %805 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %806 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %805, i32 0, i32 7
  %807 = load i8**, i8*** %806, align 8
  %808 = load i64, i64* @C_CENTER, align 8
  %809 = getelementptr inbounds i8*, i8** %807, i64 %808
  %810 = load i8*, i8** %809, align 8
  %811 = call i32 @GPR(i8* %810)
  %812 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %813 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %812, i32 0, i32 7
  %814 = load i8**, i8*** %813, align 8
  %815 = load i64, i64* @C_CENTER, align 8
  %816 = getelementptr inbounds i8*, i8** %814, i64 %815
  %817 = load i8*, i8** %816, align 8
  %818 = call i32 @GPR(i8* %817)
  %819 = call i32 @DSP_CONST(i32 13)
  %820 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %821 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %820, i32 0, i32 7
  %822 = load i8**, i8*** %821, align 8
  %823 = load i64, i64* @C_FRONT_L, align 8
  %824 = getelementptr inbounds i8*, i8** %822, i64 %823
  %825 = load i8*, i8** %824, align 8
  %826 = call i32 @GPR(i8* %825)
  %827 = call i32 @emu_addefxop(%struct.emu_sc_info* %803, i32 %804, i32 %811, i32 %818, i32 %819, i32 %826, i64* %4)
  %828 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %829 = load i32, i32* @MACS, align 4
  %830 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %831 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %830, i32 0, i32 7
  %832 = load i8**, i8*** %831, align 8
  %833 = load i64, i64* @C_CENTER, align 8
  %834 = getelementptr inbounds i8*, i8** %832, i64 %833
  %835 = load i8*, i8** %834, align 8
  %836 = call i32 @GPR(i8* %835)
  %837 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %838 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %837, i32 0, i32 7
  %839 = load i8**, i8*** %838, align 8
  %840 = load i64, i64* @C_CENTER, align 8
  %841 = getelementptr inbounds i8*, i8** %839, i64 %840
  %842 = load i8*, i8** %841, align 8
  %843 = call i32 @GPR(i8* %842)
  %844 = call i32 @DSP_CONST(i32 13)
  %845 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %846 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %845, i32 0, i32 7
  %847 = load i8**, i8*** %846, align 8
  %848 = load i64, i64* @C_FRONT_R, align 8
  %849 = getelementptr inbounds i8*, i8** %847, i64 %848
  %850 = load i8*, i8** %849, align 8
  %851 = call i32 @GPR(i8* %850)
  %852 = call i32 @emu_addefxop(%struct.emu_sc_info* %828, i32 %829, i32 %836, i32 %843, i32 %844, i32 %851, i64* %4)
  %853 = load i64, i64* @C_CENTER, align 8
  %854 = load i32, i32* @M_MASTER_CENTER, align 4
  %855 = load i32, i32* @A_OUT_D_CENTER, align 4
  %856 = call i32 @EFX_OUTPUT(i8* null, i64 %853, i32 %854, i32 %855, i32 100)
  %857 = load i32, i32* @ANALOGMUTE, align 4
  %858 = call i32 @EFX_SKIP(i32 1, i32 %857)
  %859 = load i64, i64* @C_CENTER, align 8
  %860 = load i32, i32* @M_MASTER_CENTER, align 4
  %861 = load i32, i32* @A_OUT_A_CENTER, align 4
  %862 = call i32 @EFX_OUTPUTD(i64 %859, i32 %860, i32 %861)
  %863 = load i64, i64* @C_SUB, align 8
  %864 = call i32 @EFX_CACHE(i64 %863)
  %865 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %866 = load i32, i32* @MACS, align 4
  %867 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %868 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %867, i32 0, i32 7
  %869 = load i8**, i8*** %868, align 8
  %870 = load i64, i64* @C_SUB, align 8
  %871 = getelementptr inbounds i8*, i8** %869, i64 %870
  %872 = load i8*, i8** %871, align 8
  %873 = call i32 @GPR(i8* %872)
  %874 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %875 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %874, i32 0, i32 7
  %876 = load i8**, i8*** %875, align 8
  %877 = load i64, i64* @C_SUB, align 8
  %878 = getelementptr inbounds i8*, i8** %876, i64 %877
  %879 = load i8*, i8** %878, align 8
  %880 = call i32 @GPR(i8* %879)
  %881 = call i32 @DSP_CONST(i32 13)
  %882 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %883 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %882, i32 0, i32 7
  %884 = load i8**, i8*** %883, align 8
  %885 = load i64, i64* @C_FRONT_L, align 8
  %886 = getelementptr inbounds i8*, i8** %884, i64 %885
  %887 = load i8*, i8** %886, align 8
  %888 = call i32 @GPR(i8* %887)
  %889 = call i32 @emu_addefxop(%struct.emu_sc_info* %865, i32 %866, i32 %873, i32 %880, i32 %881, i32 %888, i64* %4)
  %890 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %891 = load i32, i32* @MACS, align 4
  %892 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %893 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %892, i32 0, i32 7
  %894 = load i8**, i8*** %893, align 8
  %895 = load i64, i64* @C_SUB, align 8
  %896 = getelementptr inbounds i8*, i8** %894, i64 %895
  %897 = load i8*, i8** %896, align 8
  %898 = call i32 @GPR(i8* %897)
  %899 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %900 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %899, i32 0, i32 7
  %901 = load i8**, i8*** %900, align 8
  %902 = load i64, i64* @C_SUB, align 8
  %903 = getelementptr inbounds i8*, i8** %901, i64 %902
  %904 = load i8*, i8** %903, align 8
  %905 = call i32 @GPR(i8* %904)
  %906 = call i32 @DSP_CONST(i32 13)
  %907 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %908 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %907, i32 0, i32 7
  %909 = load i8**, i8*** %908, align 8
  %910 = load i64, i64* @C_FRONT_R, align 8
  %911 = getelementptr inbounds i8*, i8** %909, i64 %910
  %912 = load i8*, i8** %911, align 8
  %913 = call i32 @GPR(i8* %912)
  %914 = call i32 @emu_addefxop(%struct.emu_sc_info* %890, i32 %891, i32 %898, i32 %905, i32 %906, i32 %913, i64* %4)
  %915 = load i64, i64* @C_SUB, align 8
  %916 = load i32, i32* @M_MASTER_SUBWOOFER, align 4
  %917 = load i32, i32* @A_OUT_D_SUB, align 4
  %918 = call i32 @EFX_OUTPUT(i8* null, i64 %915, i32 %916, i32 %917, i32 100)
  %919 = load i32, i32* @ANALOGMUTE, align 4
  %920 = call i32 @EFX_SKIP(i32 1, i32 %919)
  %921 = load i64, i64* @C_SUB, align 8
  %922 = load i32, i32* @M_MASTER_SUBWOOFER, align 4
  %923 = load i32, i32* @A_OUT_A_SUB, align 4
  %924 = call i32 @EFX_OUTPUTD(i64 %921, i32 %922, i32 %923)
  br label %925

925:                                              ; preds = %800, %779
  br label %926

926:                                              ; preds = %925, %778
  %927 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %928 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %927, i32 0, i32 6
  %929 = load i64, i64* %928, align 8
  %930 = icmp ne i64 %929, 0
  br i1 %930, label %931, label %959

931:                                              ; preds = %926
  store i32 0, i32* %3, align 4
  br label %932

932:                                              ; preds = %941, %931
  %933 = load i32, i32* %3, align 4
  %934 = icmp ult i32 %933, 16
  br i1 %934, label %935, label %944

935:                                              ; preds = %932
  %936 = load i32, i32* %3, align 4
  %937 = call i32 @FX2(i32 %936)
  %938 = load i32, i32* %3, align 4
  %939 = call i32 @FX(i32 %938)
  %940 = call i32 @EFX_COPY(i32 %937, i32 %939)
  br label %941

941:                                              ; preds = %935
  %942 = load i32, i32* %3, align 4
  %943 = add i32 %942, 1
  store i32 %943, i32* %3, align 4
  br label %932

944:                                              ; preds = %932
  store i32 0, i32* %3, align 4
  br label %945

945:                                              ; preds = %955, %944
  %946 = load i32, i32* %3, align 4
  %947 = icmp ult i32 %946, 16
  br i1 %947, label %948, label %958

948:                                              ; preds = %945
  %949 = load i32, i32* %3, align 4
  %950 = add i32 %949, 16
  %951 = call i32 @FX2(i32 %950)
  %952 = load i32, i32* %3, align 4
  %953 = call i32 @INP(i32 %952)
  %954 = call i32 @EFX_COPY(i32 %951, i32 %953)
  br label %955

955:                                              ; preds = %948
  %956 = load i32, i32* %3, align 4
  %957 = add i32 %956, 1
  store i32 %957, i32* %3, align 4
  br label %945

958:                                              ; preds = %945
  br label %959

959:                                              ; preds = %958, %926
  br label %960

960:                                              ; preds = %959, %470
  %961 = load i64, i64* %4, align 8
  %962 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %963 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %962, i32 0, i32 3
  store i64 %961, i64* %963, align 8
  %964 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %965 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %964, i32 0, i32 2
  %966 = load i64, i64* %965, align 8
  %967 = icmp ne i64 %966, 0
  br i1 %967, label %968, label %972

968:                                              ; preds = %960
  %969 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %970 = load i32, i32* @EMU_DBG, align 4
  %971 = call i32 @emu_wrptr(%struct.emu_sc_info* %969, i32 0, i32 %970, i32 0)
  br label %976

972:                                              ; preds = %960
  %973 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %974 = load i32, i32* @EMU_A_DBG, align 4
  %975 = call i32 @emu_wrptr(%struct.emu_sc_info* %973, i32 0, i32 %974, i32 0)
  br label %976

976:                                              ; preds = %972, %968
  ret void
}

declare dso_local i32 @emu_wrptr(%struct.emu_sc_info*, i32, i32, i32) #1

declare dso_local i32 @emu_addefxop(%struct.emu_sc_info*, i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @DSP_CONST(i32) #1

declare dso_local i8* @emu_rm_gpr_alloc(i32, i32) #1

declare dso_local i32 @emumix_set_gpr(%struct.emu_sc_info*, i8*, i32) #1

declare dso_local i32 @emu_digitalswitch(%struct.emu_sc_info*) #1

declare dso_local i32 @OUTP(i32) #1

declare dso_local i32 @EFX_CACHE(i64) #1

declare dso_local i32 @EFX_ROUTE(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @FX(i32) #1

declare dso_local i32 @INP(i32) #1

declare dso_local i32 @EFX_SKIP(i32, i32) #1

declare dso_local i32 @EFX_OUTPUT(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @EFX_OUTPUTD(i64, i32, i32) #1

declare dso_local i32 @EFX_COPY(i32, i32) #1

declare dso_local i32 @FX2(i32) #1

declare dso_local i32 @GPR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
