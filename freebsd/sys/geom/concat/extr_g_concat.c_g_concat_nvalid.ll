; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_nvalid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_nvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_concat_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.g_concat_softc*)* @g_concat_nvalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @g_concat_nvalid(%struct.g_concat_softc* %0) #0 {
  %2 = alloca %struct.g_concat_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.g_concat_softc* %0, %struct.g_concat_softc** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %8 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %5
  %12 = load %struct.g_concat_softc*, %struct.g_concat_softc** %2, align 8
  %13 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %20, %11
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %5

27:                                               ; preds = %5
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
