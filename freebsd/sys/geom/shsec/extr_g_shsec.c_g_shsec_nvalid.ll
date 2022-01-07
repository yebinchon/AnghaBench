; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_nvalid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_nvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_shsec_softc = type { i64, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.g_shsec_softc*)* @g_shsec_nvalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @g_shsec_nvalid(%struct.g_shsec_softc* %0) #0 {
  %2 = alloca %struct.g_shsec_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.g_shsec_softc* %0, %struct.g_shsec_softc** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %8 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  %12 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %13 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %19, %11
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %5

26:                                               ; preds = %5
  %27 = load i64, i64* %4, align 8
  ret i64 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
