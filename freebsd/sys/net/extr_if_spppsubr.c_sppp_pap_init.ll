; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_pap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_pap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sppp = type { i32, i32*, i64*, i64*, i64*, i32* }

@STATE_CLOSED = common dso_local global i32 0, align 4
@IDX_PAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sppp*)* @sppp_pap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sppp_pap_init(%struct.sppp* %0) #0 {
  %2 = alloca %struct.sppp*, align 8
  store %struct.sppp* %0, %struct.sppp** %2, align 8
  %3 = load i32, i32* @STATE_CLOSED, align 4
  %4 = load %struct.sppp*, %struct.sppp** %2, align 8
  %5 = getelementptr inbounds %struct.sppp, %struct.sppp* %4, i32 0, i32 5
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @IDX_PAP, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sppp*, %struct.sppp** %2, align 8
  %10 = getelementptr inbounds %struct.sppp, %struct.sppp* %9, i32 0, i32 4
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @IDX_PAP, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64 0, i64* %13, align 8
  %14 = load %struct.sppp*, %struct.sppp** %2, align 8
  %15 = getelementptr inbounds %struct.sppp, %struct.sppp* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @IDX_PAP, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64 0, i64* %18, align 8
  %19 = load %struct.sppp*, %struct.sppp** %2, align 8
  %20 = getelementptr inbounds %struct.sppp, %struct.sppp* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @IDX_PAP, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 0, i64* %23, align 8
  %24 = load %struct.sppp*, %struct.sppp** %2, align 8
  %25 = getelementptr inbounds %struct.sppp, %struct.sppp* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @IDX_PAP, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @callout_init(i32* %28, i32 1)
  %30 = load %struct.sppp*, %struct.sppp** %2, align 8
  %31 = getelementptr inbounds %struct.sppp, %struct.sppp* %30, i32 0, i32 0
  %32 = call i32 @callout_init(i32* %31, i32 1)
  ret void
}

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
