; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_cnterm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_cnterm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i8**)* }
%struct.consdev = type { i32 }

@sc_console_unit = common dso_local global i32 0, align 4
@sc_ktsw = common dso_local global %struct.TYPE_2__* null, align 8
@mp_maxid = common dso_local global i32 0, align 4
@sc_kts = common dso_local global i32** null, align 8
@sc_console = common dso_local global i32* null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@SC_KERNEL_CONSOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @sc_cnterm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_cnterm(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %5 = load i32, i32* @sc_console_unit, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc_ktsw, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %35, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @mp_maxid, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i32**, i32*** @sc_kts, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to i8*
  store i8* %22, i8** %3, align 8
  %23 = load i32**, i32*** @sc_kts, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc_ktsw, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32*, i8**)*, i32 (i32*, i8**)** %28, align 8
  %30 = load i32*, i32** @sc_console, align 8
  %31 = call i32 %29(i32* %30, i8** %3)
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = call i32 @free(i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %16
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %12

38:                                               ; preds = %12
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @sc_ktsw, align 8
  br label %39

39:                                               ; preds = %38, %8
  %40 = load i32, i32* @sc_console_unit, align 4
  %41 = load i32, i32* @SC_KERNEL_CONSOLE, align 4
  %42 = call i32 @scterm(i32 %40, i32 %41)
  store i32 -1, i32* @sc_console_unit, align 4
  store i32* null, i32** @sc_console, align 8
  br label %43

43:                                               ; preds = %39, %7
  ret void
}

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @scterm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
