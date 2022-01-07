; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_clock.c_decr_et_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_clock.c_decr_et_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.eventtimer = type { i32 }
%struct.decr_state = type { i32, i32 }

@decr_state = common dso_local global i32 0, align 4
@decr_et = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SPR_DECAR = common dso_local global i32 0, align 4
@SPR_TCR = common dso_local global i32 0, align 4
@TCR_ARE = common dso_local global i32 0, align 4
@TCR_DIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @decr_et_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decr_et_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eventtimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.decr_state*, align 8
  %8 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @decr_state, align 4
  %10 = call %struct.decr_state* @DPCPU_PTR(i32 %9)
  store %struct.decr_state* %10, %struct.decr_state** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.decr_state*, %struct.decr_state** %7, align 8
  %15 = getelementptr inbounds %struct.decr_state, %struct.decr_state* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @decr_et, i32 0, i32 0), align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %16, %17
  %19 = ashr i32 %18, 32
  %20 = load %struct.decr_state*, %struct.decr_state** %7, align 8
  %21 = getelementptr inbounds %struct.decr_state, %struct.decr_state* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.decr_state*, %struct.decr_state** %7, align 8
  %24 = getelementptr inbounds %struct.decr_state, %struct.decr_state* %23, i32 0, i32 0
  store i32 2, i32* %24, align 4
  %25 = load %struct.decr_state*, %struct.decr_state** %7, align 8
  %26 = getelementptr inbounds %struct.decr_state, %struct.decr_state* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %13
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @decr_et, i32 0, i32 0), align 4
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %31, %32
  %34 = ashr i32 %33, 32
  store i32 %34, i32* %8, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.decr_state*, %struct.decr_state** %7, align 8
  %37 = getelementptr inbounds %struct.decr_state, %struct.decr_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @mtdec(i32 %40)
  ret i32 0
}

declare dso_local %struct.decr_state* @DPCPU_PTR(i32) #1

declare dso_local i32 @mtdec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
