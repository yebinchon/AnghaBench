; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_termcn_cnprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_termcn_cnprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { i32, %struct.terminal* }
%struct.terminal = type { %struct.TYPE_2__*, %struct.consdev* }
%struct.TYPE_2__ = type { i32 (%struct.terminal*, %struct.consdev*)* }

@CN_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @termcn_cnprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @termcn_cnprobe(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca %struct.terminal*, align 8
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %4 = load %struct.consdev*, %struct.consdev** %2, align 8
  %5 = getelementptr inbounds %struct.consdev, %struct.consdev* %4, i32 0, i32 1
  %6 = load %struct.terminal*, %struct.terminal** %5, align 8
  store %struct.terminal* %6, %struct.terminal** %3, align 8
  %7 = load %struct.terminal*, %struct.terminal** %3, align 8
  %8 = icmp eq %struct.terminal* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @CN_DEAD, align 4
  %11 = load %struct.consdev*, %struct.consdev** %2, align 8
  %12 = getelementptr inbounds %struct.consdev, %struct.consdev* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.consdev*, %struct.consdev** %2, align 8
  %15 = load %struct.terminal*, %struct.terminal** %3, align 8
  %16 = getelementptr inbounds %struct.terminal, %struct.terminal* %15, i32 0, i32 1
  store %struct.consdev* %14, %struct.consdev** %16, align 8
  %17 = load %struct.terminal*, %struct.terminal** %3, align 8
  %18 = call i32 @terminal_init(%struct.terminal* %17)
  %19 = load %struct.terminal*, %struct.terminal** %3, align 8
  %20 = getelementptr inbounds %struct.terminal, %struct.terminal* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.terminal*, %struct.consdev*)*, i32 (%struct.terminal*, %struct.consdev*)** %22, align 8
  %24 = load %struct.terminal*, %struct.terminal** %3, align 8
  %25 = load %struct.consdev*, %struct.consdev** %2, align 8
  %26 = call i32 %23(%struct.terminal* %24, %struct.consdev* %25)
  br label %27

27:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @terminal_init(%struct.terminal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
