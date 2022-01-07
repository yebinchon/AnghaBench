; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_change_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_change_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rxl_tab = common dso_local global i32* null, align 8
@CSR0 = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbni_softc*)* @change_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_level(%struct.sbni_softc* %0) #0 {
  %2 = alloca %struct.sbni_softc*, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %2, align 8
  %3 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %4 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %73

8:                                                ; preds = %1
  %9 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %15 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %41

16:                                               ; preds = %8
  %17 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %18 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 15
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %23 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  br label %40

24:                                               ; preds = %16
  %25 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %26 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %29 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %34 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 0, %35
  %37 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %38 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %32, %24
  br label %40

40:                                               ; preds = %39, %21
  br label %41

41:                                               ; preds = %40, %13
  %42 = load i32*, i32** @rxl_tab, align 8
  %43 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %44 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %47 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %42, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %54 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %57 = load i32, i32* @CSR0, align 4
  %58 = call i32 @sbni_inb(%struct.sbni_softc* %56, i32 %57)
  %59 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %60 = load i32, i32* @CSR1, align 4
  %61 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %62 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %61, i32 0, i32 4
  %63 = bitcast %struct.TYPE_2__* %62 to i32*
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sbni_outb(%struct.sbni_softc* %59, i32 %60, i32 %64)
  %66 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %67 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %70 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %72 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %41, %7
  ret void
}

declare dso_local i32 @sbni_inb(%struct.sbni_softc*, i32) #1

declare dso_local i32 @sbni_outb(%struct.sbni_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
