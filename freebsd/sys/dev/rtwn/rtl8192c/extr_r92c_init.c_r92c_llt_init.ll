; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_init.c_r92c_llt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_init.c_r92c_llt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r92c_llt_init(%struct.rtwn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @r92c_llt_write(%struct.rtwn_softc* %13, i32 %14, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %64

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @r92c_llt_write(%struct.rtwn_softc* %26, i32 %27, i32 255)
  store i32 %28, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %64

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %52, %32
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %38 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @r92c_llt_write(%struct.rtwn_softc* %43, i32 %44, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %64

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %35

55:                                               ; preds = %35
  %56 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %59 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @r92c_llt_write(%struct.rtwn_softc* %56, i32 %57, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %55, %49, %30, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @r92c_llt_write(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
