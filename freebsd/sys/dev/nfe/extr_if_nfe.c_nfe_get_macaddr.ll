; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_get_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_get_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32 }

@NFE_CORRECT_MACADDR = common dso_local global i32 0, align 4
@NFE_MACADDR_LO = common dso_local global i32 0, align 4
@NFE_MACADDR_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*, i32*)* @nfe_get_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_get_macaddr(%struct.nfe_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %7 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NFE_CORRECT_MACADDR, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %14 = load i32, i32* @NFE_MACADDR_LO, align 4
  %15 = call i32 @NFE_READ(%struct.nfe_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 255
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %26 = load i32, i32* @NFE_MACADDR_HI, align 4
  %27 = call i32 @NFE_READ(%struct.nfe_softc* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 24
  %30 = and i32 %29, 255
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 255
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  store i32 %44, i32* %46, align 4
  br label %82

47:                                               ; preds = %2
  %48 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %49 = load i32, i32* @NFE_MACADDR_LO, align 4
  %50 = call i32 @NFE_READ(%struct.nfe_softc* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 255
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %61 = load i32, i32* @NFE_MACADDR_HI, align 4
  %62 = call i32 @NFE_READ(%struct.nfe_softc* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = ashr i32 %63, 24
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %5, align 4
  %74 = ashr i32 %73, 8
  %75 = and i32 %74, 255
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 255
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %47, %12
  ret void
}

declare dso_local i32 @NFE_READ(%struct.nfe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
