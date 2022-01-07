; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_termcn_cnregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_termcn_cnregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { %struct.consdev*, i32 }
%struct.consdev = type { i32, i32, %struct.terminal*, i32* }

@M_TERMINAL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@termcn_cnops = common dso_local global i32 0, align 4
@CN_INTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ttyv0\00", align 1
@TF_CONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @termcn_cnregister(%struct.terminal* %0) #0 {
  %2 = alloca %struct.terminal*, align 8
  %3 = alloca %struct.consdev*, align 8
  store %struct.terminal* %0, %struct.terminal** %2, align 8
  %4 = load %struct.terminal*, %struct.terminal** %2, align 8
  %5 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 0
  %6 = load %struct.consdev*, %struct.consdev** %5, align 8
  store %struct.consdev* %6, %struct.consdev** %3, align 8
  %7 = load %struct.consdev*, %struct.consdev** %3, align 8
  %8 = icmp eq %struct.consdev* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load i32, i32* @M_TERMINAL, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.consdev* @malloc(i32 24, i32 %10, i32 %13)
  store %struct.consdev* %14, %struct.consdev** %3, align 8
  %15 = load %struct.consdev*, %struct.consdev** %3, align 8
  %16 = getelementptr inbounds %struct.consdev, %struct.consdev* %15, i32 0, i32 3
  store i32* @termcn_cnops, i32** %16, align 8
  %17 = load %struct.terminal*, %struct.terminal** %2, align 8
  %18 = load %struct.consdev*, %struct.consdev** %3, align 8
  %19 = getelementptr inbounds %struct.consdev, %struct.consdev* %18, i32 0, i32 2
  store %struct.terminal* %17, %struct.terminal** %19, align 8
  %20 = load i32, i32* @CN_INTERNAL, align 4
  %21 = load %struct.consdev*, %struct.consdev** %3, align 8
  %22 = getelementptr inbounds %struct.consdev, %struct.consdev* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.consdev*, %struct.consdev** %3, align 8
  %24 = getelementptr inbounds %struct.consdev, %struct.consdev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sprintf(i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @TF_CONS, align 4
  %28 = load %struct.terminal*, %struct.terminal** %2, align 8
  %29 = getelementptr inbounds %struct.terminal, %struct.terminal* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.consdev*, %struct.consdev** %3, align 8
  %31 = load %struct.terminal*, %struct.terminal** %2, align 8
  %32 = getelementptr inbounds %struct.terminal, %struct.terminal* %31, i32 0, i32 0
  store %struct.consdev* %30, %struct.consdev** %32, align 8
  %33 = load %struct.terminal*, %struct.terminal** %2, align 8
  %34 = call i32 @terminal_init(%struct.terminal* %33)
  br label %35

35:                                               ; preds = %9, %1
  %36 = load %struct.consdev*, %struct.consdev** %3, align 8
  %37 = call i32 @cnadd(%struct.consdev* %36)
  ret void
}

declare dso_local %struct.consdev* @malloc(i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @terminal_init(%struct.terminal*) #1

declare dso_local i32 @cnadd(%struct.consdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
