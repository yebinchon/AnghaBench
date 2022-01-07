; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_cp_change_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_cp_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp = type { i64, i32 }
%struct.sppp = type { i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp*, %struct.sppp*, i32)* @sppp_cp_change_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sppp_cp_change_state(%struct.cp* %0, %struct.sppp* %1, i32 %2) #0 {
  %4 = alloca %struct.cp*, align 8
  %5 = alloca %struct.sppp*, align 8
  %6 = alloca i32, align 4
  store %struct.cp* %0, %struct.cp** %4, align 8
  store %struct.sppp* %1, %struct.sppp** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sppp*, %struct.sppp** %5, align 8
  %9 = getelementptr inbounds %struct.sppp, %struct.sppp* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.cp*, %struct.cp** %4, align 8
  %12 = getelementptr inbounds %struct.cp, %struct.cp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  store i32 %7, i32* %14, align 4
  %15 = load %struct.sppp*, %struct.sppp** %5, align 8
  %16 = getelementptr inbounds %struct.sppp, %struct.sppp* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.cp*, %struct.cp** %4, align 8
  %19 = getelementptr inbounds %struct.cp, %struct.cp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = call i32 @callout_stop(i32* %21)
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %43 [
    i32 133, label %24
    i32 130, label %24
    i32 135, label %24
    i32 129, label %24
    i32 132, label %24
    i32 134, label %25
    i32 128, label %25
    i32 131, label %25
    i32 137, label %25
    i32 136, label %25
  ]

24:                                               ; preds = %3, %3, %3, %3, %3
  br label %43

25:                                               ; preds = %3, %3, %3, %3, %3
  %26 = load %struct.sppp*, %struct.sppp** %5, align 8
  %27 = getelementptr inbounds %struct.sppp, %struct.sppp* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.cp*, %struct.cp** %4, align 8
  %30 = getelementptr inbounds %struct.cp, %struct.cp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load %struct.sppp*, %struct.sppp** %5, align 8
  %34 = getelementptr inbounds %struct.sppp, %struct.sppp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cp*, %struct.cp** %4, align 8
  %38 = getelementptr inbounds %struct.cp, %struct.cp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sppp*, %struct.sppp** %5, align 8
  %41 = bitcast %struct.sppp* %40 to i8*
  %42 = call i32 @callout_reset(i32* %32, i32 %36, i32 %39, i8* %41)
  br label %43

43:                                               ; preds = %3, %25, %24
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
