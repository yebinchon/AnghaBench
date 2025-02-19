; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_mutevolume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_mutevolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@ENVY24_VOL_MUTE = common dso_local global i32 0, align 4
@ENVY24_MT_VOLIDX = common dso_local global i32 0, align 4
@ENVY24_MT_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, i32)* @envy24_mutevolume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24_mutevolume(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ENVY24_VOL_MUTE, align 4
  %7 = shl i32 %6, 8
  %8 = load i32, i32* @ENVY24_VOL_MUTE, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %11 = load i32, i32* @ENVY24_MT_VOLIDX, align 4
  %12 = load i32, i32* %4, align 4
  %13 = mul i32 %12, 2
  %14 = call i32 @envy24_wrmt(%struct.sc_info* %10, i32 %11, i32 %13, i32 1)
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = load i32, i32* @ENVY24_MT_VOLUME, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @envy24_wrmt(%struct.sc_info* %15, i32 %16, i32 %17, i32 2)
  %19 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %20 = load i32, i32* @ENVY24_MT_VOLIDX, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul i32 %21, 2
  %23 = add i32 %22, 1
  %24 = call i32 @envy24_wrmt(%struct.sc_info* %19, i32 %20, i32 %23, i32 1)
  %25 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %26 = load i32, i32* @ENVY24_MT_VOLUME, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @envy24_wrmt(%struct.sc_info* %25, i32 %26, i32 %27, i32 2)
  ret void
}

declare dso_local i32 @envy24_wrmt(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
