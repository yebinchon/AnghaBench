; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_emulate_mtspr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_emulate_mtspr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.trapframe = type { i32, i32* }

@curthread = common dso_local global %struct.thread* null, align 8
@SPR_DSCR = common dso_local global i32 0, align 4
@SPR_DSCRP = common dso_local global i32 0, align 4
@cpu_features2 = common dso_local global i32 0, align 4
@PPC_FEATURE2_DSCR = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@PCB_CDSCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.trapframe*)* @emulate_mtspr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_mtspr(i32 %0, i32 %1, %struct.trapframe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca %struct.thread*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.trapframe* %2, %struct.trapframe** %7, align 8
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SPR_DSCR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SPR_DSCRP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @cpu_features2, align 4
  %19 = load i32, i32* @PPC_FEATURE2_DSCR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @SIGILL, align 4
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %17
  %25 = load i32, i32* @PCB_CDSCR, align 4
  %26 = load %struct.thread*, %struct.thread** %8, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %25
  store i32 %31, i32* %29, align 4
  %32 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %33 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.thread*, %struct.thread** %8, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @SPR_DSCRP, align 4
  %44 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %45 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mtspr(i32 %43, i32 %50)
  %52 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %53 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 4
  store i32 %55, i32* %53, align 8
  store i32 0, i32* %4, align 4
  br label %58

56:                                               ; preds = %13
  %57 = load i32, i32* @SIGILL, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %24, %22
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
