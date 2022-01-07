; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_cninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_cninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { i32 }
%struct.TYPE_2__ = type { i32* }

@SC_KERNEL_CONSOLE = common dso_local global i32 0, align 4
@sc_console_unit = common dso_local global i32 0, align 4
@sc_console = common dso_local global i32 0, align 4
@sc_consptr = common dso_local global %struct.consdev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @sc_cninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_cninit(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %5 = call i32 @sc_get_cons_priority(i32* %3, i32* %4)
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SC_KERNEL_CONSOLE, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @scinit(i32 %6, i32 %9)
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* @sc_console_unit, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SC_KERNEL_CONSOLE, align 4
  %14 = call %struct.TYPE_2__* @sc_get_softc(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sc_get_stat(i32 %18)
  store i32 %19, i32* @sc_console, align 4
  %20 = load %struct.consdev*, %struct.consdev** %2, align 8
  store %struct.consdev* %20, %struct.consdev** @sc_consptr, align 8
  ret void
}

declare dso_local i32 @sc_get_cons_priority(i32*, i32*) #1

declare dso_local i32 @scinit(i32, i32) #1

declare dso_local i32 @sc_get_stat(i32) #1

declare dso_local %struct.TYPE_2__* @sc_get_softc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
