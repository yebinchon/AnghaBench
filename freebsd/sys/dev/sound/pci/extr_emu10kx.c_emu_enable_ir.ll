; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_enable_ir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_enable_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i32, i64, i64, i64 }

@EMU_A_IOCFG = common dso_local global i32 0, align 4
@EMU_A_IOCFG_GPOUT2 = common dso_local global i32 0, align 4
@EMU_A_IOCFG_GPOUT1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Audigy IR MIDI events enabled.\0A\00", align 1
@EMU_HCFG = common dso_local global i32 0, align 4
@EMU_HCFG_GPOUT2 = common dso_local global i32 0, align 4
@EMU_HCFG_GPOUT1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"SB Live! IR MIDI events enabled.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_enable_ir(%struct.emu_sc_info* %0) #0 {
  %2 = alloca %struct.emu_sc_info*, align 8
  %3 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %2, align 8
  %4 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %5 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %10 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %8, %1
  %14 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %15 = load i32, i32* @EMU_A_IOCFG, align 4
  %16 = call i32 @emu_rd_nolock(%struct.emu_sc_info* %14, i32 %15, i32 2)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %18 = load i32, i32* @EMU_A_IOCFG, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @EMU_A_IOCFG_GPOUT2, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @emu_wr_nolock(%struct.emu_sc_info* %17, i32 %18, i32 %21, i32 2)
  %23 = call i32 @DELAY(i32 500)
  %24 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %25 = load i32, i32* @EMU_A_IOCFG, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @EMU_A_IOCFG_GPOUT1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @EMU_A_IOCFG_GPOUT2, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @emu_wr_nolock(%struct.emu_sc_info* %24, i32 %25, i32 %30, i32 2)
  %32 = call i32 @DELAY(i32 500)
  %33 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %34 = load i32, i32* @EMU_A_IOCFG, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @EMU_A_IOCFG_GPOUT1, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @emu_wr_nolock(%struct.emu_sc_info* %33, i32 %34, i32 %37, i32 2)
  %39 = call i32 @DELAY(i32 100)
  %40 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %41 = load i32, i32* @EMU_A_IOCFG, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @emu_wr_nolock(%struct.emu_sc_info* %40, i32 %41, i32 %42, i32 2)
  %44 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %45 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %49 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %13, %8
  %51 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %52 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %50
  %56 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %57 = load i32, i32* @EMU_HCFG, align 4
  %58 = call i32 @emu_rd_nolock(%struct.emu_sc_info* %56, i32 %57, i32 4)
  store i32 %58, i32* %3, align 4
  %59 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %60 = load i32, i32* @EMU_HCFG, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @EMU_HCFG_GPOUT2, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @emu_wr_nolock(%struct.emu_sc_info* %59, i32 %60, i32 %63, i32 4)
  %65 = call i32 @DELAY(i32 500)
  %66 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %67 = load i32, i32* @EMU_HCFG, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @EMU_HCFG_GPOUT1, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @EMU_HCFG_GPOUT2, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @emu_wr_nolock(%struct.emu_sc_info* %66, i32 %67, i32 %72, i32 4)
  %74 = call i32 @DELAY(i32 100)
  %75 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %76 = load i32, i32* @EMU_HCFG, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @emu_wr_nolock(%struct.emu_sc_info* %75, i32 %76, i32 %77, i32 4)
  %79 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %80 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.emu_sc_info*, %struct.emu_sc_info** %2, align 8
  %84 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @emu_rd_nolock(%struct.emu_sc_info*, i32, i32) #1

declare dso_local i32 @emu_wr_nolock(%struct.emu_sc_info*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
