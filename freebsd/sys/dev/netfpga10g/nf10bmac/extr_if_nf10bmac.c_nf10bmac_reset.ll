; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf10bmac_softc = type { i32*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"\00NFBSD\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf10bmac_softc*)* @nf10bmac_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf10bmac_reset(%struct.nf10bmac_softc* %0) #0 {
  %2 = alloca %struct.nf10bmac_softc*, align 8
  store %struct.nf10bmac_softc* %0, %struct.nf10bmac_softc** %2, align 8
  %3 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %4 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %1
  %10 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %11 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %9
  %17 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %18 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %16
  %24 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %25 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %23
  %31 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %32 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %39 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %46 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %45, i32 0, i32 0
  %47 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %48 = call i32 @memcpy(i32** %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %50 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %53 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %51
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  br label %60

60:                                               ; preds = %44, %37, %30, %23, %16, %9, %1
  ret i32 0
}

declare dso_local i32 @memcpy(i32**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
