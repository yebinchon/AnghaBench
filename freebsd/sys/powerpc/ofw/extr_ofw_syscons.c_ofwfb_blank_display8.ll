; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_blank_display8.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_blank_display8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofwfb_softc = type { i32, i32, i64 }

@SC_NORM_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ofwfb_blank_display8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwfb_blank_display8(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofwfb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.ofwfb_softc*
  store %struct.ofwfb_softc* %11, %struct.ofwfb_softc** %5, align 8
  %12 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %13 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 4
  %20 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @SC_NORM_ATTR, align 4
  %25 = call i32 @ofwfb_background(i32 %24)
  %26 = shl i32 %25, 24
  %27 = load i32, i32* @SC_NORM_ATTR, align 4
  %28 = call i32 @ofwfb_background(i32 %27)
  %29 = shl i32 %28, 16
  %30 = or i32 %26, %29
  %31 = load i32, i32* @SC_NORM_ATTR, align 4
  %32 = call i32 @ofwfb_background(i32 %31)
  %33 = shl i32 %32, 8
  %34 = or i32 %30, %33
  %35 = load i32, i32* @SC_NORM_ATTR, align 4
  %36 = call i32 @ofwfb_background(i32 %35)
  %37 = or i32 %34, %36
  store i32 %37, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %48, %2
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %38

51:                                               ; preds = %38
  ret i32 0
}

declare dso_local i32 @ofwfb_background(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
