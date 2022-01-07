; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_reg_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_reg_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32*, i32 }

@JME_PAR0 = common dso_local global i32 0, align 4
@JME_PAR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to retrieve Ethernet address.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_reg_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_reg_macaddr(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %5 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %6 = load i32, i32* @JME_PAR0, align 4
  %7 = call i32 @CSR_READ_4(%struct.jme_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %9 = load i32, i32* @JME_PAR1, align 4
  %10 = call i32 @CSR_READ_4(%struct.jme_softc* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 65535
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 65535
  br i1 %23, label %24, label %29

24:                                               ; preds = %21, %15
  %25 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %26 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %72

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %3, align 4
  %31 = ashr i32 %30, 0
  %32 = and i32 %31, 255
  %33 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %34 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %3, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %41 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %3, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %48 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %3, align 4
  %52 = ashr i32 %51, 24
  %53 = and i32 %52, 255
  %54 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %55 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %4, align 4
  %59 = ashr i32 %58, 0
  %60 = and i32 %59, 255
  %61 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %62 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %4, align 4
  %66 = ashr i32 %65, 8
  %67 = and i32 %66, 255
  %68 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %69 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
