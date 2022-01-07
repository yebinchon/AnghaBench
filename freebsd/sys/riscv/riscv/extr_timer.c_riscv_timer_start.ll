; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_timer.c_riscv_timer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_timer.c_riscv_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i64 }

@sie = common dso_local global i32 0, align 4
@SIE_STIE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @riscv_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riscv_timer_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eventtimer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %13 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %15, %16
  %18 = ashr i32 %17, 32
  store i32 %18, i32* %8, align 4
  %19 = call i64 (...) @get_cycles()
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 @sbi_set_timer(i64 %22)
  %24 = load i32, i32* @sie, align 4
  %25 = load i32, i32* @SIE_STIE, align 4
  %26 = call i32 @csr_set(i32 %24, i32 %25)
  store i32 0, i32* %4, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %11
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @sbi_set_timer(i64) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @csr_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
