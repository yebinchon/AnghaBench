; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tick.c_tick_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tick.c_tick_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }

@tickincrement = common dso_local global i32 0, align 4
@tickadj = common dso_local global i32 0, align 4
@tickref = common dso_local global i32 0, align 4
@adjust_ticks = common dso_local global i32 0, align 4
@adjust_missed = common dso_local global i32 0, align 4
@adjust_edges = common dso_local global i32 0, align 4
@adjust_excess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trapframe*)* @tick_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tick_intr(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %10 = load i32, i32* @tickincrement, align 4
  %11 = call i64 @PCPU_GET(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %86

14:                                               ; preds = %1
  %15 = call i32 (...) @intr_disable()
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @tickadj, align 4
  %17 = call i64 @PCPU_GET(i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = call i64 (...) @rd_tick()
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* %3, align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i32 @wr_tick_cmpr(i64 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @intr_restore(i32 %25)
  %27 = load i32, i32* @tickref, align 4
  %28 = call i64 @PCPU_GET(i32 %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %50, %14
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %38 = call i32 @tick_process(%struct.trapframe* %37)
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %3, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @adjust_ticks, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @adjust_ticks, align 4
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %32

53:                                               ; preds = %32
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* @adjust_missed, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* @adjust_missed, align 4
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %6, align 8
  %63 = ashr i64 %62, 3
  %64 = icmp sgt i64 %61, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load i64, i64* %3, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @adjust_edges, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @adjust_edges, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i64, i64* %6, align 8
  %73 = ashr i64 %72, 4
  store i64 %73, i64* %3, align 8
  br label %75

74:                                               ; preds = %56
  store i64 0, i64* %3, align 8
  br label %75

75:                                               ; preds = %74, %71
  br label %79

76:                                               ; preds = %53
  store i64 0, i64* %3, align 8
  %77 = load i32, i32* @adjust_excess, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @adjust_excess, align 4
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, i32* @tickref, align 4
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @PCPU_SET(i32 %80, i64 %81)
  %83 = load i32, i32* @tickadj, align 4
  %84 = load i64, i64* %3, align 8
  %85 = call i32 @PCPU_SET(i32 %83, i64 %84)
  br label %89

86:                                               ; preds = %1
  %87 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %88 = call i32 @tick_process(%struct.trapframe* %87)
  br label %89

89:                                               ; preds = %86, %79
  ret void
}

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i64 @rd_tick(...) #1

declare dso_local i32 @wr_tick_cmpr(i64) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @tick_process(%struct.trapframe*) #1

declare dso_local i32 @PCPU_SET(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
