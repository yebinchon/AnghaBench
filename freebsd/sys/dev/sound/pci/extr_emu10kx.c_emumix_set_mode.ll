; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emumix_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emumix_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i32, i32*, i64, i64, i64, i32, i64, i64 }

@EMU_HCFG_AUDIOENABLE = common dso_local global i32 0, align 4
@EMU_HCFG_AUTOMUTE = common dso_local global i32 0, align 4
@EMU_HCFG_JOYENABLE = common dso_local global i32 0, align 4
@EMU_HCFG_LOCKTANKCACHE_MASK = common dso_local global i32 0, align 4
@EMU_HCFG_CODECFMT_I2S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Digital mode is reported as broken on this card.\0A\00", align 1
@EMU_A_IOCFG_GPOUT1 = common dso_local global i32 0, align 4
@EMU_HCFG_GPOUT0 = common dso_local global i32 0, align 4
@SPDIF_MODE_PCM = common dso_local global i32 0, align 4
@EMU_A_IOCFG_DISABLE_ANALOG = common dso_local global i32 0, align 4
@ANALOGMUTE = common dso_local global i64 0, align 8
@EMU_HCFG = common dso_local global i32 0, align 4
@EMU_A_IOCFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emumix_set_mode(%struct.emu_sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.emu_sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %10 [
    i32 128, label %9
    i32 129, label %9
  ]

9:                                                ; preds = %2, %2
  br label %11

10:                                               ; preds = %2
  br label %151

11:                                               ; preds = %9
  %12 = load i32, i32* @EMU_HCFG_AUDIOENABLE, align 4
  %13 = load i32, i32* @EMU_HCFG_AUTOMUTE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %16 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %17, 6
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32, i32* @EMU_HCFG_JOYENABLE, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %11
  %24 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %25 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @EMU_HCFG_LOCKTANKCACHE_MASK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %38

32:                                               ; preds = %23
  %33 = load i32, i32* @EMU_HCFG_CODECFMT_I2S, align 4
  %34 = load i32, i32* @EMU_HCFG_JOYENABLE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %28
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %43 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %48 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @EMU_A_IOCFG_GPOUT1, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @EMU_HCFG_GPOUT0, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %51, %38
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 129
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %63 = load i32, i32* @SPDIF_MODE_PCM, align 4
  %64 = call i32 @emumix_set_spdif_mode(%struct.emu_sc_info* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %67 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, 128
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %75 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %80 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78, %73
  %84 = load i32, i32* @EMU_A_IOCFG_DISABLE_ANALOG, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %89 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, 32
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %96, 128
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %100 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %101 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @ANALOGMUTE, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @emumix_set_gpr(%struct.emu_sc_info* %99, i32 %105, i32 1)
  br label %107

107:                                              ; preds = %98, %95
  %108 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %109 = load i32, i32* @EMU_HCFG, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @emu_wr(%struct.emu_sc_info* %108, i32 %109, i32 %110, i32 4)
  %112 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %113 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %107
  %117 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %118 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %123 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121, %116, %107
  %127 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %128 = load i32, i32* @EMU_A_IOCFG, align 4
  %129 = call i32 @emu_rd(%struct.emu_sc_info* %127, i32 %128, i32 2)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %7, align 4
  %131 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %132 = load i32, i32* @EMU_A_IOCFG, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @emu_wr(%struct.emu_sc_info* %131, i32 %132, i32 %133, i32 2)
  br label %135

135:                                              ; preds = %126, %121
  %136 = load i32, i32* %4, align 4
  %137 = icmp eq i32 %136, 129
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %140 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %141 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @ANALOGMUTE, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @emumix_set_gpr(%struct.emu_sc_info* %139, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %138, %135
  %148 = load i32, i32* %4, align 4
  %149 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %150 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %10
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @emumix_set_spdif_mode(%struct.emu_sc_info*, i32) #1

declare dso_local i32 @emumix_set_gpr(%struct.emu_sc_info*, i32, i32) #1

declare dso_local i32 @emu_wr(%struct.emu_sc_info*, i32, i32, i32) #1

declare dso_local i32 @emu_rd(%struct.emu_sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
