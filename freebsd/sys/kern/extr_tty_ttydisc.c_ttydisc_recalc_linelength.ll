; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_recalc_linelength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_recalc_linelength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32 }
%struct.ttydisc_recalc_length = type { i32, i32, %struct.tty* }

@ttydisc_recalc_charlength = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @ttydisc_recalc_linelength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttydisc_recalc_linelength(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.ttydisc_recalc_length, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = getelementptr inbounds %struct.ttydisc_recalc_length, %struct.ttydisc_recalc_length* %3, i32 0, i32 0
  %5 = load %struct.tty*, %struct.tty** %2, align 8
  %6 = ptrtoint %struct.tty* %5 to i32
  store i32 %6, i32* %4, align 8
  %7 = getelementptr inbounds %struct.ttydisc_recalc_length, %struct.ttydisc_recalc_length* %3, i32 0, i32 1
  %8 = load %struct.tty*, %struct.tty** %2, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %struct.ttydisc_recalc_length, %struct.ttydisc_recalc_length* %3, i32 0, i32 2
  store %struct.tty* null, %struct.tty** %11, align 8
  %12 = load %struct.tty*, %struct.tty** %2, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 0
  %14 = load i32, i32* @ttydisc_recalc_charlength, align 4
  %15 = call i32 @ttyinq_line_iterate_from_reprintpos(i32* %13, i32 %14, %struct.ttydisc_recalc_length* %3)
  %16 = getelementptr inbounds %struct.ttydisc_recalc_length, %struct.ttydisc_recalc_length* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  ret i32 %17
}

declare dso_local i32 @ttyinq_line_iterate_from_reprintpos(i32*, i32, %struct.ttydisc_recalc_length*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
