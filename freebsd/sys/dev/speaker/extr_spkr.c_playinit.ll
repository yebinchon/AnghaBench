; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/speaker/extr_spkr.c_playinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/speaker/extr_spkr.c_playinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DFLT_OCTAVE = common dso_local global i32 0, align 4
@octave = common dso_local global i32 0, align 4
@SECS_PER_MIN = common dso_local global i32 0, align 4
@WHOLE_NOTE = common dso_local global i32 0, align 4
@DFLT_TEMPO = common dso_local global i32 0, align 4
@whole = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@fill = common dso_local global i32 0, align 4
@DFLT_VALUE = common dso_local global i32 0, align 4
@value = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@octtrack = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@octprefix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @playinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @playinit() #0 {
  %1 = load i32, i32* @DFLT_OCTAVE, align 4
  store i32 %1, i32* @octave, align 4
  %2 = load i32, i32* @SECS_PER_MIN, align 4
  %3 = mul nsw i32 100, %2
  %4 = load i32, i32* @WHOLE_NOTE, align 4
  %5 = mul nsw i32 %3, %4
  %6 = load i32, i32* @DFLT_TEMPO, align 4
  %7 = sdiv i32 %5, %6
  store i32 %7, i32* @whole, align 4
  %8 = load i32, i32* @NORMAL, align 4
  store i32 %8, i32* @fill, align 4
  %9 = load i32, i32* @DFLT_VALUE, align 4
  store i32 %9, i32* @value, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* @octtrack, align 4
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* @octprefix, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
