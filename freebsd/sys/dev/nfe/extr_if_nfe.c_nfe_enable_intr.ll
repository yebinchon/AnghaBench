; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*)* @nfe_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_enable_intr(%struct.nfe_softc* %0) #0 {
  %2 = alloca %struct.nfe_softc*, align 8
  store %struct.nfe_softc* %0, %struct.nfe_softc** %2, align 8
  %3 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %4 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %9 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @NFE_READ(%struct.nfe_softc* %8, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %16 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %17 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %20 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @NFE_WRITE(%struct.nfe_softc* %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %14, %7
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %26 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %27 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @NFE_WRITE(%struct.nfe_softc* %25, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @NFE_READ(%struct.nfe_softc*, i32) #1

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
