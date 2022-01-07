; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_alloc_scp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_alloc_scp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SC_DFLT_TERM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @alloc_scp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @alloc_scp(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @M_DEVBUF, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = call i64 @malloc(i32 4, i32 %6, i32 %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @init_scp(i32* %10, i32 %11, i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @TRUE, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i32 @sc_alloc_scr_buffer(i32* %14, i32 %15, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** @SC_DFLT_TERM, align 8
  %20 = call i32 @sc_init_emulator(i32* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @sc_init_emulator(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @sc_alloc_cut_buffer(i32* %26, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @sc_alloc_history_buffer(i32* %29, i32 0, i32 0, i32 %30)
  %32 = load i32*, i32** %5, align 8
  ret i32* %32
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @init_scp(i32*, i32, i32*) #1

declare dso_local i32 @sc_alloc_scr_buffer(i32*, i32, i32) #1

declare dso_local i32 @sc_init_emulator(i32*, i8*) #1

declare dso_local i32 @sc_alloc_cut_buffer(i32*, i32) #1

declare dso_local i32 @sc_alloc_history_buffer(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
