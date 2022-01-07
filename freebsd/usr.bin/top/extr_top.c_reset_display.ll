; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_top.c_reset_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_top.c_reset_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i_loadave = common dso_local global i32 0, align 4
@d_loadave = common dso_local global i32 0, align 4
@i_procstates = common dso_local global i32 0, align 4
@d_procstates = common dso_local global i32 0, align 4
@i_cpustates = common dso_local global i32 0, align 4
@d_cpustates = common dso_local global i32 0, align 4
@i_memory = common dso_local global i32 0, align 4
@d_memory = common dso_local global i32 0, align 4
@i_arc = common dso_local global i32 0, align 4
@d_arc = common dso_local global i32 0, align 4
@i_carc = common dso_local global i32 0, align 4
@d_carc = common dso_local global i32 0, align 4
@i_swap = common dso_local global i32 0, align 4
@d_swap = common dso_local global i32 0, align 4
@i_message = common dso_local global i32 0, align 4
@d_message = common dso_local global i32 0, align 4
@i_header = common dso_local global i32 0, align 4
@d_header = common dso_local global i32 0, align 4
@i_process = common dso_local global i32 0, align 4
@d_process = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_display() #0 {
  %1 = load i32, i32* @i_loadave, align 4
  store i32 %1, i32* @d_loadave, align 4
  %2 = load i32, i32* @i_procstates, align 4
  store i32 %2, i32* @d_procstates, align 4
  %3 = load i32, i32* @i_cpustates, align 4
  store i32 %3, i32* @d_cpustates, align 4
  %4 = load i32, i32* @i_memory, align 4
  store i32 %4, i32* @d_memory, align 4
  %5 = load i32, i32* @i_arc, align 4
  store i32 %5, i32* @d_arc, align 4
  %6 = load i32, i32* @i_carc, align 4
  store i32 %6, i32* @d_carc, align 4
  %7 = load i32, i32* @i_swap, align 4
  store i32 %7, i32* @d_swap, align 4
  %8 = load i32, i32* @i_message, align 4
  store i32 %8, i32* @d_message, align 4
  %9 = load i32, i32* @i_header, align 4
  store i32 %9, i32* @d_header, align 4
  %10 = load i32, i32* @i_process, align 4
  store i32 %10, i32* @d_process, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
