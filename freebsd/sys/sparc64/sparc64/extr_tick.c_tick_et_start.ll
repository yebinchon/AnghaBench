; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tick.c_tick_et_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tick.c_tick_et_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.eventtimer = type { i32 }

@tick_et = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@tickincrement = common dso_local global i32 0, align 4
@tickadj = common dso_local global i32 0, align 4
@tickref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @tick_et_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tick_et_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eventtimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_et, i32 0, i32 0), align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %14, %15
  %17 = ashr i32 %16, 32
  store i32 %17, i32* %8, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_et, i32 0, i32 0), align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %23, %24
  %26 = ashr i32 %25, 32
  store i32 %26, i32* %9, align 4
  br label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* @tickincrement, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @PCPU_SET(i32 %30, i32 %31)
  %33 = call i32 (...) @intr_disable()
  store i32 %33, i32* %10, align 4
  %34 = call i32 (...) @rd_tick()
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i32, i32* @tickadj, align 4
  %39 = call i32 @PCPU_SET(i32 %38, i32 0)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @roundup(i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %29
  %44 = load i32, i32* @tickref, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @PCPU_SET(i32 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @wr_tick_cmpr(i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @intr_restore(i32 %51)
  ret i32 0
}

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @rd_tick(...) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @wr_tick_cmpr(i32) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
