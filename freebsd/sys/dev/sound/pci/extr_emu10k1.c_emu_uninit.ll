; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@EMU_INTE = common dso_local global i32 0, align 4
@NUM_G = common dso_local global i64 0, align 8
@EMU_CHAN_DCYSUSV = common dso_local global i32 0, align 4
@ENV_OFF = common dso_local global i32 0, align 4
@EMU_CHAN_VTFT = common dso_local global i32 0, align 4
@EMU_CHAN_CVCF = common dso_local global i32 0, align 4
@EMU_CHAN_PTRX = common dso_local global i32 0, align 4
@EMU_CHAN_CPF = common dso_local global i32 0, align 4
@EMU_A_DBG = common dso_local global i32 0, align 4
@EMU_A_DBG_SINGLE_STEP = common dso_local global i32 0, align 4
@EMU_HCFG = common dso_local global i32 0, align 4
@EMU_HCFG_LOCKSOUNDCACHE = common dso_local global i32 0, align 4
@EMU_HCFG_LOCKTANKCACHE_MASK = common dso_local global i32 0, align 4
@EMU_HCFG_MUTEBUTTONENABLE = common dso_local global i32 0, align 4
@EMU_PTB = common dso_local global i32 0, align 4
@EMU_MICBS = common dso_local global i32 0, align 4
@EMU_RECBS_BUFSIZE_NONE = common dso_local global i32 0, align 4
@EMU_MICBA = common dso_local global i32 0, align 4
@EMU_FXBS = common dso_local global i32 0, align 4
@EMU_FXBA = common dso_local global i32 0, align 4
@EMU_FXWC = common dso_local global i32 0, align 4
@EMU_ADCBS = common dso_local global i32 0, align 4
@EMU_ADCBA = common dso_local global i32 0, align 4
@EMU_TCB = common dso_local global i32 0, align 4
@EMU_TCBS = common dso_local global i32 0, align 4
@EMU_CLIEL = common dso_local global i32 0, align 4
@EMU_CLIEH = common dso_local global i32 0, align 4
@EMU_SOLEL = common dso_local global i32 0, align 4
@EMU_SOLEH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"warning: memblock list not empty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @emu_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_uninit(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i64, align 8
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %4 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %5 = load i32, i32* @EMU_INTE, align 4
  %6 = call i32 @emu_wr(%struct.sc_info* %4, i32 %5, i32 0, i32 4)
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @NUM_G, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @EMU_CHAN_DCYSUSV, align 4
  %15 = load i32, i32* @ENV_OFF, align 4
  %16 = call i32 @emu_wrptr(%struct.sc_info* %12, i64 %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %11
  %18 = load i64, i64* %3, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %3, align 8
  br label %7

20:                                               ; preds = %7
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %42, %20
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @NUM_G, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* @EMU_CHAN_VTFT, align 4
  %29 = call i32 @emu_wrptr(%struct.sc_info* %26, i64 %27, i32 %28, i32 0)
  %30 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* @EMU_CHAN_CVCF, align 4
  %33 = call i32 @emu_wrptr(%struct.sc_info* %30, i64 %31, i32 %32, i32 0)
  %34 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* @EMU_CHAN_PTRX, align 4
  %37 = call i32 @emu_wrptr(%struct.sc_info* %34, i64 %35, i32 %36, i32 0)
  %38 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i32, i32* @EMU_CHAN_CPF, align 4
  %41 = call i32 @emu_wrptr(%struct.sc_info* %38, i64 %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %25
  %43 = load i64, i64* %3, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %21

45:                                               ; preds = %21
  %46 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %47 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %52 = load i32, i32* @EMU_A_DBG, align 4
  %53 = load i32, i32* @EMU_A_DBG_SINGLE_STEP, align 4
  %54 = call i32 @emu_wrptr(%struct.sc_info* %51, i64 0, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %57 = load i32, i32* @EMU_HCFG, align 4
  %58 = load i32, i32* @EMU_HCFG_LOCKSOUNDCACHE, align 4
  %59 = load i32, i32* @EMU_HCFG_LOCKTANKCACHE_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @EMU_HCFG_MUTEBUTTONENABLE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @emu_wr(%struct.sc_info* %56, i32 %57, i32 %62, i32 4)
  %64 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %65 = load i32, i32* @EMU_PTB, align 4
  %66 = call i32 @emu_wrptr(%struct.sc_info* %64, i64 0, i32 %65, i32 0)
  %67 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %68 = load i32, i32* @EMU_MICBS, align 4
  %69 = load i32, i32* @EMU_RECBS_BUFSIZE_NONE, align 4
  %70 = call i32 @emu_wrptr(%struct.sc_info* %67, i64 0, i32 %68, i32 %69)
  %71 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %72 = load i32, i32* @EMU_MICBA, align 4
  %73 = call i32 @emu_wrptr(%struct.sc_info* %71, i64 0, i32 %72, i32 0)
  %74 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %75 = load i32, i32* @EMU_FXBS, align 4
  %76 = load i32, i32* @EMU_RECBS_BUFSIZE_NONE, align 4
  %77 = call i32 @emu_wrptr(%struct.sc_info* %74, i64 0, i32 %75, i32 %76)
  %78 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %79 = load i32, i32* @EMU_FXBA, align 4
  %80 = call i32 @emu_wrptr(%struct.sc_info* %78, i64 0, i32 %79, i32 0)
  %81 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %82 = load i32, i32* @EMU_FXWC, align 4
  %83 = call i32 @emu_wrptr(%struct.sc_info* %81, i64 0, i32 %82, i32 0)
  %84 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %85 = load i32, i32* @EMU_ADCBS, align 4
  %86 = load i32, i32* @EMU_RECBS_BUFSIZE_NONE, align 4
  %87 = call i32 @emu_wrptr(%struct.sc_info* %84, i64 0, i32 %85, i32 %86)
  %88 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %89 = load i32, i32* @EMU_ADCBA, align 4
  %90 = call i32 @emu_wrptr(%struct.sc_info* %88, i64 0, i32 %89, i32 0)
  %91 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %92 = load i32, i32* @EMU_TCB, align 4
  %93 = call i32 @emu_wrptr(%struct.sc_info* %91, i64 0, i32 %92, i32 0)
  %94 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %95 = load i32, i32* @EMU_TCBS, align 4
  %96 = call i32 @emu_wrptr(%struct.sc_info* %94, i64 0, i32 %95, i32 0)
  %97 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %98 = load i32, i32* @EMU_CLIEL, align 4
  %99 = call i32 @emu_wrptr(%struct.sc_info* %97, i64 0, i32 %98, i32 0)
  %100 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %101 = load i32, i32* @EMU_CLIEH, align 4
  %102 = call i32 @emu_wrptr(%struct.sc_info* %100, i64 0, i32 %101, i32 0)
  %103 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %104 = load i32, i32* @EMU_SOLEL, align 4
  %105 = call i32 @emu_wrptr(%struct.sc_info* %103, i64 0, i32 %104, i32 0)
  %106 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %107 = load i32, i32* @EMU_SOLEH, align 4
  %108 = call i32 @emu_wrptr(%struct.sc_info* %106, i64 0, i32 %107, i32 0)
  %109 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %110 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = call i32 @SLIST_EMPTY(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %55
  %115 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %116 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @device_printf(i32 %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %114, %55
  %120 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %121 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %122 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %126 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @emu_free(%struct.sc_info* %120, i32 %124, i32 %128)
  %130 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %131 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %132 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %136 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @emu_free(%struct.sc_info* %130, i32 %134, i32 %138)
  %140 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %141 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %119
  %145 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %146 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @mpu401_uninit(i64 %147)
  br label %149

149:                                              ; preds = %144, %119
  ret i32 0
}

declare dso_local i32 @emu_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @emu_wrptr(%struct.sc_info*, i64, i32, i32) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @emu_free(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @mpu401_uninit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
