; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_terminal_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_terminal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.terminal = type { i32, i32, i32 }

@TF_CONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"trmlck\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@terminal_drawmethods = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"teken.fg_color\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"teken.bg_color\00", align 1
@default_message = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@kernel_message = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@TC_WHITE = common dso_local global i32 0, align 4
@TC_LIGHT = common dso_local global i32 0, align 4
@TC_BLACK = common dso_local global i32 0, align 4
@TC_NCOLORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.terminal*)* @terminal_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminal_init(%struct.terminal* %0) #0 {
  %2 = alloca %struct.terminal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.terminal* %0, %struct.terminal** %2, align 8
  %5 = load %struct.terminal*, %struct.terminal** %2, align 8
  %6 = getelementptr inbounds %struct.terminal, %struct.terminal* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TF_CONS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.terminal*, %struct.terminal** %2, align 8
  %13 = getelementptr inbounds %struct.terminal, %struct.terminal* %12, i32 0, i32 2
  %14 = load i32, i32* @MTX_SPIN, align 4
  %15 = call i32 @mtx_init(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.terminal*, %struct.terminal** %2, align 8
  %18 = getelementptr inbounds %struct.terminal, %struct.terminal* %17, i32 0, i32 1
  %19 = load %struct.terminal*, %struct.terminal** %2, align 8
  %20 = call i32 @teken_init(i32* %18, i32* @terminal_drawmethods, %struct.terminal* %19)
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %3, align 4
  %21 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  %22 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_message, i32 0, i32 0), align 4
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_message, i32 0, i32 0), align 4
  br label %28

28:                                               ; preds = %25, %16
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_message, i32 0, i32 1), align 4
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_message, i32 0, i32 1), align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_message, i32 0, i32 1), align 4
  %36 = load i32, i32* @TC_WHITE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* @TC_LIGHT, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_message, i32 0, i32 1), align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_message, i32 0, i32 1), align 4
  %42 = load i32, i32* @TC_LIGHT, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_message, i32 0, i32 1), align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_message, i32 0, i32 1), align 4
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_message, i32 0, i32 1), align 4
  %47 = load i32, i32* @TC_BLACK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_message, i32 0, i32 0), align 4
  %51 = load i32, i32* @TC_NCOLORS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @TC_LIGHT, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_message, i32 0, i32 0), align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_message, i32 0, i32 0), align 4
  br label %57

57:                                               ; preds = %53, %49, %45
  %58 = load %struct.terminal*, %struct.terminal** %2, align 8
  %59 = getelementptr inbounds %struct.terminal, %struct.terminal* %58, i32 0, i32 1
  %60 = call i32 @teken_set_defattr(i32* %59, %struct.TYPE_4__* @default_message)
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @teken_init(i32*, i32*, %struct.terminal*) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @teken_set_defattr(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
