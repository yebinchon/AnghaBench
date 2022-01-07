; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/fhc/extr_clkbrd.c_clkbrd_free_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/fhc/extr_clkbrd.c_clkbrd_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkbrd_softc = type { i32**, i32*, i32 }

@CLKBRD_CF = common dso_local global i32 0, align 4
@CLKBRD_CLKVER = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clkbrd_softc*)* @clkbrd_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clkbrd_free_resources(%struct.clkbrd_softc* %0) #0 {
  %2 = alloca %struct.clkbrd_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.clkbrd_softc* %0, %struct.clkbrd_softc** %2, align 8
  %4 = load i32, i32* @CLKBRD_CF, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @CLKBRD_CLKVER, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %2, align 8
  %11 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %9
  %19 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %2, align 8
  %20 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SYS_RES_MEMORY, align 4
  %23 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %2, align 8
  %24 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %2, align 8
  %31 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bus_release_resource(i32 %21, i32 %22, i32 %29, i32* %36)
  br label %38

38:                                               ; preds = %18, %9
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %5

42:                                               ; preds = %5
  ret void
}

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
