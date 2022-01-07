; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_initefx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_initefx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64 }

@EMU_FXGPREGBASE = common dso_local global i64 0, align 8
@iMACINT0 = common dso_local global i32 0, align 4
@EXTIN_SPDIF_CD_L = common dso_local global i32 0, align 4
@FXBUS_PCM_LEFT = common dso_local global i32 0, align 4
@C_00000004 = common dso_local global i32 0, align 4
@EXTIN_SPDIF_CD_R = common dso_local global i32 0, align 4
@FXBUS_PCM_RIGHT = common dso_local global i32 0, align 4
@iACC3 = common dso_local global i32 0, align 4
@C_00000000 = common dso_local global i32 0, align 4
@EXTIN_TOSLINK_L = common dso_local global i32 0, align 4
@EXTIN_TOSLINK_R = common dso_local global i32 0, align 4
@EXTOUT_AC97_L = common dso_local global i32 0, align 4
@EXTOUT_AC97_R = common dso_local global i32 0, align 4
@C_00000001 = common dso_local global i32 0, align 4
@iINTERP = common dso_local global i32 0, align 4
@C_40000000 = common dso_local global i32 0, align 4
@EXTOUT_REAR_L = common dso_local global i32 0, align 4
@EXTOUT_REAR_R = common dso_local global i32 0, align 4
@EXTOUT_TOSLINK_L = common dso_local global i32 0, align 4
@EXTOUT_TOSLINK_R = common dso_local global i32 0, align 4
@EXTOUT_ACENTER = common dso_local global i32 0, align 4
@EXTOUT_ALFE = common dso_local global i32 0, align 4
@EXTOUT_AC97_CENTER = common dso_local global i32 0, align 4
@EXTOUT_AC97_LFE = common dso_local global i32 0, align 4
@EXTOUT_HEADPHONE_L = common dso_local global i32 0, align 4
@EXTOUT_HEADPHONE_R = common dso_local global i32 0, align 4
@EXTOUT_ADC_CAP_L = common dso_local global i32 0, align 4
@EXTIN_AC97_L = common dso_local global i32 0, align 4
@EXTOUT_ADC_CAP_R = common dso_local global i32 0, align 4
@EXTIN_AC97_R = common dso_local global i32 0, align 4
@EMU_DBG = common dso_local global i64 0, align 8
@iMAC0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @emu_initefx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_initefx(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  store i32 16, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 512
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %10, 2
  %12 = call i32 @emu_wrefx(%struct.sc_info* %9, i32 %11, i32 65600)
  %13 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %14, 2
  %16 = add nsw i32 %15, 1
  %17 = call i32 @emu_wrefx(%struct.sc_info* %13, i32 %16, i32 6357056)
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %5

21:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %27 = load i64, i64* @EMU_FXGPREGBASE, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i32 @emu_wrptr(%struct.sc_info* %26, i32 0, i64 %30, i32 0)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %37 = load i32, i32* @iMACINT0, align 4
  %38 = call i32 @GPR(i32 0)
  %39 = load i32, i32* @EXTIN_SPDIF_CD_L, align 4
  %40 = call i32 @EXTIN(i32 %39)
  %41 = load i32, i32* @FXBUS_PCM_LEFT, align 4
  %42 = call i32 @FXBUS(i32 %41)
  %43 = load i32, i32* @C_00000004, align 4
  %44 = call i32 @emu_addefxop(%struct.sc_info* %36, i32 %37, i32 %38, i32 %40, i32 %42, i32 %43, i32* %4)
  %45 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %46 = load i32, i32* @iMACINT0, align 4
  %47 = call i32 @GPR(i32 1)
  %48 = load i32, i32* @EXTIN_SPDIF_CD_R, align 4
  %49 = call i32 @EXTIN(i32 %48)
  %50 = load i32, i32* @FXBUS_PCM_RIGHT, align 4
  %51 = call i32 @FXBUS(i32 %50)
  %52 = load i32, i32* @C_00000004, align 4
  %53 = call i32 @emu_addefxop(%struct.sc_info* %45, i32 %46, i32 %47, i32 %49, i32 %51, i32 %52, i32* %4)
  %54 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %55 = load i32, i32* @iACC3, align 4
  %56 = call i32 @GPR(i32 0)
  %57 = call i32 @GPR(i32 0)
  %58 = load i32, i32* @C_00000000, align 4
  %59 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %35
  %64 = load i32, i32* @EXTIN_TOSLINK_L, align 4
  %65 = call i32 @EXTIN(i32 %64)
  br label %68

66:                                               ; preds = %35
  %67 = load i32, i32* @C_00000000, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %67, %66 ]
  %70 = call i32 @emu_addefxop(%struct.sc_info* %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %69, i32* %4)
  %71 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %72 = load i32, i32* @iACC3, align 4
  %73 = call i32 @GPR(i32 1)
  %74 = call i32 @GPR(i32 1)
  %75 = load i32, i32* @C_00000000, align 4
  %76 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %77 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load i32, i32* @EXTIN_TOSLINK_R, align 4
  %82 = call i32 @EXTIN(i32 %81)
  br label %85

83:                                               ; preds = %68
  %84 = load i32, i32* @C_00000000, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i32 [ %82, %80 ], [ %84, %83 ]
  %87 = call i32 @emu_addefxop(%struct.sc_info* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %86, i32* %4)
  %88 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %89 = load i32, i32* @iACC3, align 4
  %90 = load i32, i32* @EXTOUT_AC97_L, align 4
  %91 = call i32 @EXTOUT(i32 %90)
  %92 = load i32, i32* @C_00000000, align 4
  %93 = load i32, i32* @C_00000000, align 4
  %94 = call i32 @GPR(i32 0)
  %95 = call i32 @emu_addefxop(%struct.sc_info* %88, i32 %89, i32 %91, i32 %92, i32 %93, i32 %94, i32* %4)
  %96 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %97 = load i32, i32* @iACC3, align 4
  %98 = load i32, i32* @EXTOUT_AC97_R, align 4
  %99 = call i32 @EXTOUT(i32 %98)
  %100 = load i32, i32* @C_00000000, align 4
  %101 = load i32, i32* @C_00000001, align 4
  %102 = call i32 @GPR(i32 1)
  %103 = call i32 @emu_addefxop(%struct.sc_info* %96, i32 %97, i32 %99, i32 %100, i32 %101, i32 %102, i32* %4)
  %104 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %105 = load i32, i32* @iINTERP, align 4
  %106 = call i32 @GPR(i32 2)
  %107 = call i32 @GPR(i32 1)
  %108 = load i32, i32* @C_40000000, align 4
  %109 = call i32 @GPR(i32 0)
  %110 = call i32 @emu_addefxop(%struct.sc_info* %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32* %4)
  %111 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %112 = load i32, i32* @iACC3, align 4
  %113 = load i32, i32* @EXTOUT_REAR_L, align 4
  %114 = call i32 @EXTOUT(i32 %113)
  %115 = load i32, i32* @C_00000000, align 4
  %116 = load i32, i32* @C_00000000, align 4
  %117 = call i32 @GPR(i32 0)
  %118 = call i32 @emu_addefxop(%struct.sc_info* %111, i32 %112, i32 %114, i32 %115, i32 %116, i32 %117, i32* %4)
  %119 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %120 = load i32, i32* @iACC3, align 4
  %121 = load i32, i32* @EXTOUT_REAR_R, align 4
  %122 = call i32 @EXTOUT(i32 %121)
  %123 = load i32, i32* @C_00000000, align 4
  %124 = load i32, i32* @C_00000000, align 4
  %125 = call i32 @GPR(i32 1)
  %126 = call i32 @emu_addefxop(%struct.sc_info* %119, i32 %120, i32 %122, i32 %123, i32 %124, i32 %125, i32* %4)
  %127 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %128 = load i32, i32* @iACC3, align 4
  %129 = load i32, i32* @EXTOUT_TOSLINK_L, align 4
  %130 = call i32 @EXTOUT(i32 %129)
  %131 = load i32, i32* @C_00000000, align 4
  %132 = load i32, i32* @C_00000000, align 4
  %133 = call i32 @GPR(i32 0)
  %134 = call i32 @emu_addefxop(%struct.sc_info* %127, i32 %128, i32 %130, i32 %131, i32 %132, i32 %133, i32* %4)
  %135 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %136 = load i32, i32* @iACC3, align 4
  %137 = load i32, i32* @EXTOUT_TOSLINK_R, align 4
  %138 = call i32 @EXTOUT(i32 %137)
  %139 = load i32, i32* @C_00000000, align 4
  %140 = load i32, i32* @C_00000000, align 4
  %141 = call i32 @GPR(i32 1)
  %142 = call i32 @emu_addefxop(%struct.sc_info* %135, i32 %136, i32 %138, i32 %139, i32 %140, i32 %141, i32* %4)
  %143 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %144 = load i32, i32* @iACC3, align 4
  %145 = load i32, i32* @EXTOUT_ACENTER, align 4
  %146 = call i32 @EXTOUT(i32 %145)
  %147 = load i32, i32* @C_00000000, align 4
  %148 = call i32 @GPR(i32 0)
  %149 = call i32 @GPR(i32 2)
  %150 = call i32 @emu_addefxop(%struct.sc_info* %143, i32 %144, i32 %146, i32 %147, i32 %148, i32 %149, i32* %4)
  %151 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %152 = load i32, i32* @iACC3, align 4
  %153 = load i32, i32* @EXTOUT_ALFE, align 4
  %154 = call i32 @EXTOUT(i32 %153)
  %155 = load i32, i32* @C_00000000, align 4
  %156 = call i32 @GPR(i32 1)
  %157 = call i32 @GPR(i32 2)
  %158 = call i32 @emu_addefxop(%struct.sc_info* %151, i32 %152, i32 %154, i32 %155, i32 %156, i32 %157, i32* %4)
  %159 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %160 = load i32, i32* @iACC3, align 4
  %161 = load i32, i32* @EXTOUT_AC97_CENTER, align 4
  %162 = call i32 @EXTOUT(i32 %161)
  %163 = load i32, i32* @C_00000000, align 4
  %164 = call i32 @GPR(i32 0)
  %165 = call i32 @GPR(i32 2)
  %166 = call i32 @emu_addefxop(%struct.sc_info* %159, i32 %160, i32 %162, i32 %163, i32 %164, i32 %165, i32* %4)
  %167 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %168 = load i32, i32* @iACC3, align 4
  %169 = load i32, i32* @EXTOUT_AC97_LFE, align 4
  %170 = call i32 @EXTOUT(i32 %169)
  %171 = load i32, i32* @C_00000000, align 4
  %172 = call i32 @GPR(i32 1)
  %173 = call i32 @GPR(i32 2)
  %174 = call i32 @emu_addefxop(%struct.sc_info* %167, i32 %168, i32 %170, i32 %171, i32 %172, i32 %173, i32* %4)
  %175 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %176 = load i32, i32* @iACC3, align 4
  %177 = load i32, i32* @EXTOUT_HEADPHONE_L, align 4
  %178 = call i32 @EXTOUT(i32 %177)
  %179 = load i32, i32* @C_00000000, align 4
  %180 = load i32, i32* @C_00000000, align 4
  %181 = call i32 @GPR(i32 0)
  %182 = call i32 @emu_addefxop(%struct.sc_info* %175, i32 %176, i32 %178, i32 %179, i32 %180, i32 %181, i32* %4)
  %183 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %184 = load i32, i32* @iACC3, align 4
  %185 = load i32, i32* @EXTOUT_HEADPHONE_R, align 4
  %186 = call i32 @EXTOUT(i32 %185)
  %187 = load i32, i32* @C_00000000, align 4
  %188 = load i32, i32* @C_00000000, align 4
  %189 = call i32 @GPR(i32 1)
  %190 = call i32 @emu_addefxop(%struct.sc_info* %183, i32 %184, i32 %186, i32 %187, i32 %188, i32 %189, i32* %4)
  %191 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %192 = load i32, i32* @iACC3, align 4
  %193 = load i32, i32* @EXTOUT_ADC_CAP_L, align 4
  %194 = call i32 @EXTOUT(i32 %193)
  %195 = load i32, i32* @C_00000000, align 4
  %196 = load i32, i32* @C_00000000, align 4
  %197 = load i32, i32* @EXTIN_AC97_L, align 4
  %198 = call i32 @EXTIN(i32 %197)
  %199 = call i32 @emu_addefxop(%struct.sc_info* %191, i32 %192, i32 %194, i32 %195, i32 %196, i32 %198, i32* %4)
  %200 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %201 = load i32, i32* @iACC3, align 4
  %202 = load i32, i32* @EXTOUT_ADC_CAP_R, align 4
  %203 = call i32 @EXTOUT(i32 %202)
  %204 = load i32, i32* @C_00000000, align 4
  %205 = load i32, i32* @C_00000000, align 4
  %206 = load i32, i32* @EXTIN_AC97_R, align 4
  %207 = call i32 @EXTIN(i32 %206)
  %208 = call i32 @emu_addefxop(%struct.sc_info* %200, i32 %201, i32 %203, i32 %204, i32 %205, i32 %207, i32* %4)
  %209 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %210 = load i64, i64* @EMU_DBG, align 8
  %211 = call i32 @emu_wrptr(%struct.sc_info* %209, i32 0, i64 %210, i32 0)
  ret void
}

declare dso_local i32 @emu_wrefx(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @emu_wrptr(%struct.sc_info*, i32, i64, i32) #1

declare dso_local i32 @emu_addefxop(%struct.sc_info*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GPR(i32) #1

declare dso_local i32 @EXTIN(i32) #1

declare dso_local i32 @FXBUS(i32) #1

declare dso_local i32 @EXTOUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
