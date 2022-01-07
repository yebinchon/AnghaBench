; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_audigy_initefx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_audigy_initefx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@EMU_A_FXGPREGBASE = common dso_local global i64 0, align 8
@EMU_A_DBG = common dso_local global i64 0, align 8
@EMU_A_DBG_SINGLE_STEP = common dso_local global i32 0, align 4
@iACC3 = common dso_local global i32 0, align 4
@A_EXTOUT_AC97_L = common dso_local global i32 0, align 4
@A_C_00000000 = common dso_local global i32 0, align 4
@FXBUS_PCM_LEFT = common dso_local global i32 0, align 4
@A_EXTOUT_AC97_R = common dso_local global i32 0, align 4
@FXBUS_PCM_RIGHT = common dso_local global i32 0, align 4
@EXTIN_COAX_SPDIF_L = common dso_local global i32 0, align 4
@EXTIN_COAX_SPDIF_R = common dso_local global i32 0, align 4
@iINTERP = common dso_local global i32 0, align 4
@A_C_40000000 = common dso_local global i32 0, align 4
@A_EXTOUT_HEADPHONE_L = common dso_local global i32 0, align 4
@A_EXTOUT_HEADPHONE_R = common dso_local global i32 0, align 4
@A_EXTOUT_AFRONT_L = common dso_local global i32 0, align 4
@A_EXTOUT_AFRONT_R = common dso_local global i32 0, align 4
@A_EXTOUT_FRONT_L = common dso_local global i32 0, align 4
@A_EXTOUT_FRONT_R = common dso_local global i32 0, align 4
@A_EXTOUT_ACENTER = common dso_local global i32 0, align 4
@A_EXTOUT_ALFE = common dso_local global i32 0, align 4
@A_EXTOUT_CENTER = common dso_local global i32 0, align 4
@A_EXTOUT_LFE = common dso_local global i32 0, align 4
@A_EXTOUT_AREAR_L = common dso_local global i32 0, align 4
@A_EXTOUT_AREAR_R = common dso_local global i32 0, align 4
@A_EXTOUT_REAR_L = common dso_local global i32 0, align 4
@A_EXTOUT_REAR_R = common dso_local global i32 0, align 4
@A_EXTOUT_ADC_CAP_L = common dso_local global i32 0, align 4
@A_EXTIN_AC97_L = common dso_local global i32 0, align 4
@A_EXTOUT_ADC_CAP_R = common dso_local global i32 0, align 4
@A_EXTIN_AC97_R = common dso_local global i32 0, align 4
@iMAC0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @audigy_initefx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audigy_initefx(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %11, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 512
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %10 = call i32 @audigy_addefxop(%struct.sc_info* %9, i32 15, i32 192, i32 192, i32 207, i32 192, i32* %4)
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %5

14:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 512
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %20 = load i64, i64* @EMU_A_FXGPREGBASE, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @emu_wrptr(%struct.sc_info* %19, i32 0, i64 %23, i32 0)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %15

28:                                               ; preds = %15
  store i32 16, i32* %4, align 4
  %29 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %30 = load i64, i64* @EMU_A_DBG, align 8
  %31 = load i32, i32* @EMU_A_DBG_SINGLE_STEP, align 4
  %32 = call i32 @emu_wrptr(%struct.sc_info* %29, i32 0, i64 %30, i32 %31)
  %33 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %34 = load i32, i32* @iACC3, align 4
  %35 = load i32, i32* @A_EXTOUT_AC97_L, align 4
  %36 = call i32 @A_EXTOUT(i32 %35)
  %37 = load i32, i32* @A_C_00000000, align 4
  %38 = load i32, i32* @A_C_00000000, align 4
  %39 = load i32, i32* @FXBUS_PCM_LEFT, align 4
  %40 = call i32 @A_FXBUS(i32 %39)
  %41 = call i32 @audigy_addefxop(%struct.sc_info* %33, i32 %34, i32 %36, i32 %37, i32 %38, i32 %40, i32* %4)
  %42 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %43 = load i32, i32* @iACC3, align 4
  %44 = load i32, i32* @A_EXTOUT_AC97_R, align 4
  %45 = call i32 @A_EXTOUT(i32 %44)
  %46 = load i32, i32* @A_C_00000000, align 4
  %47 = load i32, i32* @A_C_00000000, align 4
  %48 = load i32, i32* @FXBUS_PCM_RIGHT, align 4
  %49 = call i32 @A_FXBUS(i32 %48)
  %50 = call i32 @audigy_addefxop(%struct.sc_info* %42, i32 %43, i32 %45, i32 %46, i32 %47, i32 %49, i32* %4)
  %51 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %52 = load i32, i32* @iACC3, align 4
  %53 = call i32 @A_GPR(i32 0)
  %54 = load i32, i32* @A_C_00000000, align 4
  %55 = load i32, i32* @A_C_00000000, align 4
  %56 = load i32, i32* @EXTIN_COAX_SPDIF_L, align 4
  %57 = call i32 @A_EXTIN(i32 %56)
  %58 = call i32 @audigy_addefxop(%struct.sc_info* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %57, i32* %4)
  %59 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %60 = load i32, i32* @iACC3, align 4
  %61 = call i32 @A_GPR(i32 1)
  %62 = load i32, i32* @A_C_00000000, align 4
  %63 = load i32, i32* @A_C_00000000, align 4
  %64 = load i32, i32* @EXTIN_COAX_SPDIF_R, align 4
  %65 = call i32 @A_EXTIN(i32 %64)
  %66 = call i32 @audigy_addefxop(%struct.sc_info* %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %65, i32* %4)
  %67 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %68 = load i32, i32* @iINTERP, align 4
  %69 = call i32 @A_GPR(i32 2)
  %70 = call i32 @A_GPR(i32 1)
  %71 = load i32, i32* @A_C_40000000, align 4
  %72 = call i32 @A_GPR(i32 0)
  %73 = call i32 @audigy_addefxop(%struct.sc_info* %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32* %4)
  %74 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %75 = load i32, i32* @iACC3, align 4
  %76 = load i32, i32* @A_EXTOUT_HEADPHONE_L, align 4
  %77 = call i32 @A_EXTOUT(i32 %76)
  %78 = load i32, i32* @A_C_00000000, align 4
  %79 = load i32, i32* @A_C_00000000, align 4
  %80 = call i32 @A_GPR(i32 0)
  %81 = call i32 @audigy_addefxop(%struct.sc_info* %74, i32 %75, i32 %77, i32 %78, i32 %79, i32 %80, i32* %4)
  %82 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %83 = load i32, i32* @iACC3, align 4
  %84 = load i32, i32* @A_EXTOUT_HEADPHONE_R, align 4
  %85 = call i32 @A_EXTOUT(i32 %84)
  %86 = load i32, i32* @A_C_00000000, align 4
  %87 = load i32, i32* @A_C_00000000, align 4
  %88 = call i32 @A_GPR(i32 1)
  %89 = call i32 @audigy_addefxop(%struct.sc_info* %82, i32 %83, i32 %85, i32 %86, i32 %87, i32 %88, i32* %4)
  %90 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %91 = load i32, i32* @iACC3, align 4
  %92 = load i32, i32* @A_EXTOUT_AFRONT_L, align 4
  %93 = call i32 @A_EXTOUT(i32 %92)
  %94 = load i32, i32* @A_C_00000000, align 4
  %95 = load i32, i32* @A_C_00000000, align 4
  %96 = call i32 @A_GPR(i32 0)
  %97 = call i32 @audigy_addefxop(%struct.sc_info* %90, i32 %91, i32 %93, i32 %94, i32 %95, i32 %96, i32* %4)
  %98 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %99 = load i32, i32* @iACC3, align 4
  %100 = load i32, i32* @A_EXTOUT_AFRONT_R, align 4
  %101 = call i32 @A_EXTOUT(i32 %100)
  %102 = load i32, i32* @A_C_00000000, align 4
  %103 = load i32, i32* @A_C_00000000, align 4
  %104 = call i32 @A_GPR(i32 1)
  %105 = call i32 @audigy_addefxop(%struct.sc_info* %98, i32 %99, i32 %101, i32 %102, i32 %103, i32 %104, i32* %4)
  %106 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %107 = load i32, i32* @iACC3, align 4
  %108 = load i32, i32* @A_EXTOUT_FRONT_L, align 4
  %109 = call i32 @A_EXTOUT(i32 %108)
  %110 = load i32, i32* @A_C_00000000, align 4
  %111 = load i32, i32* @A_C_00000000, align 4
  %112 = call i32 @A_GPR(i32 0)
  %113 = call i32 @audigy_addefxop(%struct.sc_info* %106, i32 %107, i32 %109, i32 %110, i32 %111, i32 %112, i32* %4)
  %114 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %115 = load i32, i32* @iACC3, align 4
  %116 = load i32, i32* @A_EXTOUT_FRONT_R, align 4
  %117 = call i32 @A_EXTOUT(i32 %116)
  %118 = load i32, i32* @A_C_00000000, align 4
  %119 = load i32, i32* @A_C_00000000, align 4
  %120 = call i32 @A_GPR(i32 1)
  %121 = call i32 @audigy_addefxop(%struct.sc_info* %114, i32 %115, i32 %117, i32 %118, i32 %119, i32 %120, i32* %4)
  %122 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %123 = load i32, i32* @iACC3, align 4
  %124 = load i32, i32* @A_EXTOUT_ACENTER, align 4
  %125 = call i32 @A_EXTOUT(i32 %124)
  %126 = load i32, i32* @A_C_00000000, align 4
  %127 = call i32 @A_GPR(i32 0)
  %128 = call i32 @A_GPR(i32 2)
  %129 = call i32 @audigy_addefxop(%struct.sc_info* %122, i32 %123, i32 %125, i32 %126, i32 %127, i32 %128, i32* %4)
  %130 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %131 = load i32, i32* @iACC3, align 4
  %132 = load i32, i32* @A_EXTOUT_ALFE, align 4
  %133 = call i32 @A_EXTOUT(i32 %132)
  %134 = load i32, i32* @A_C_00000000, align 4
  %135 = call i32 @A_GPR(i32 1)
  %136 = call i32 @A_GPR(i32 2)
  %137 = call i32 @audigy_addefxop(%struct.sc_info* %130, i32 %131, i32 %133, i32 %134, i32 %135, i32 %136, i32* %4)
  %138 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %139 = load i32, i32* @iACC3, align 4
  %140 = load i32, i32* @A_EXTOUT_CENTER, align 4
  %141 = call i32 @A_EXTOUT(i32 %140)
  %142 = load i32, i32* @A_C_00000000, align 4
  %143 = call i32 @A_GPR(i32 0)
  %144 = call i32 @A_GPR(i32 2)
  %145 = call i32 @audigy_addefxop(%struct.sc_info* %138, i32 %139, i32 %141, i32 %142, i32 %143, i32 %144, i32* %4)
  %146 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %147 = load i32, i32* @iACC3, align 4
  %148 = load i32, i32* @A_EXTOUT_LFE, align 4
  %149 = call i32 @A_EXTOUT(i32 %148)
  %150 = load i32, i32* @A_C_00000000, align 4
  %151 = call i32 @A_GPR(i32 1)
  %152 = call i32 @A_GPR(i32 2)
  %153 = call i32 @audigy_addefxop(%struct.sc_info* %146, i32 %147, i32 %149, i32 %150, i32 %151, i32 %152, i32* %4)
  %154 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %155 = load i32, i32* @iACC3, align 4
  %156 = load i32, i32* @A_EXTOUT_AREAR_L, align 4
  %157 = call i32 @A_EXTOUT(i32 %156)
  %158 = load i32, i32* @A_C_00000000, align 4
  %159 = load i32, i32* @A_C_00000000, align 4
  %160 = call i32 @A_GPR(i32 0)
  %161 = call i32 @audigy_addefxop(%struct.sc_info* %154, i32 %155, i32 %157, i32 %158, i32 %159, i32 %160, i32* %4)
  %162 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %163 = load i32, i32* @iACC3, align 4
  %164 = load i32, i32* @A_EXTOUT_AREAR_R, align 4
  %165 = call i32 @A_EXTOUT(i32 %164)
  %166 = load i32, i32* @A_C_00000000, align 4
  %167 = load i32, i32* @A_C_00000000, align 4
  %168 = call i32 @A_GPR(i32 1)
  %169 = call i32 @audigy_addefxop(%struct.sc_info* %162, i32 %163, i32 %165, i32 %166, i32 %167, i32 %168, i32* %4)
  %170 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %171 = load i32, i32* @iACC3, align 4
  %172 = load i32, i32* @A_EXTOUT_REAR_L, align 4
  %173 = call i32 @A_EXTOUT(i32 %172)
  %174 = load i32, i32* @A_C_00000000, align 4
  %175 = load i32, i32* @A_C_00000000, align 4
  %176 = call i32 @A_GPR(i32 0)
  %177 = call i32 @audigy_addefxop(%struct.sc_info* %170, i32 %171, i32 %173, i32 %174, i32 %175, i32 %176, i32* %4)
  %178 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %179 = load i32, i32* @iACC3, align 4
  %180 = load i32, i32* @A_EXTOUT_REAR_R, align 4
  %181 = call i32 @A_EXTOUT(i32 %180)
  %182 = load i32, i32* @A_C_00000000, align 4
  %183 = load i32, i32* @A_C_00000000, align 4
  %184 = call i32 @A_GPR(i32 1)
  %185 = call i32 @audigy_addefxop(%struct.sc_info* %178, i32 %179, i32 %181, i32 %182, i32 %183, i32 %184, i32* %4)
  %186 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %187 = load i32, i32* @iACC3, align 4
  %188 = load i32, i32* @A_EXTOUT_ADC_CAP_L, align 4
  %189 = call i32 @A_EXTOUT(i32 %188)
  %190 = load i32, i32* @A_C_00000000, align 4
  %191 = load i32, i32* @A_C_00000000, align 4
  %192 = load i32, i32* @A_EXTIN_AC97_L, align 4
  %193 = call i32 @A_EXTIN(i32 %192)
  %194 = call i32 @audigy_addefxop(%struct.sc_info* %186, i32 %187, i32 %189, i32 %190, i32 %191, i32 %193, i32* %4)
  %195 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %196 = load i32, i32* @iACC3, align 4
  %197 = load i32, i32* @A_EXTOUT_ADC_CAP_R, align 4
  %198 = call i32 @A_EXTOUT(i32 %197)
  %199 = load i32, i32* @A_C_00000000, align 4
  %200 = load i32, i32* @A_C_00000000, align 4
  %201 = load i32, i32* @A_EXTIN_AC97_R, align 4
  %202 = call i32 @A_EXTIN(i32 %201)
  %203 = call i32 @audigy_addefxop(%struct.sc_info* %195, i32 %196, i32 %198, i32 %199, i32 %200, i32 %202, i32* %4)
  %204 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %205 = load i64, i64* @EMU_A_DBG, align 8
  %206 = call i32 @emu_wrptr(%struct.sc_info* %204, i32 0, i64 %205, i32 0)
  ret void
}

declare dso_local i32 @audigy_addefxop(%struct.sc_info*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @emu_wrptr(%struct.sc_info*, i32, i64, i32) #1

declare dso_local i32 @A_EXTOUT(i32) #1

declare dso_local i32 @A_FXBUS(i32) #1

declare dso_local i32 @A_GPR(i32) #1

declare dso_local i32 @A_EXTIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
