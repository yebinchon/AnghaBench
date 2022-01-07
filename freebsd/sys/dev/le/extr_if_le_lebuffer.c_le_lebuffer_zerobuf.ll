; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_zerobuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_zerobuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32 }
%struct.le_lebuffer_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_softc*, i32, i32)* @le_lebuffer_zerobuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le_lebuffer_zerobuf(%struct.lance_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lance_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.le_lebuffer_softc*, align 8
  store %struct.lance_softc* %0, %struct.lance_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lance_softc*, %struct.lance_softc** %4, align 8
  %9 = bitcast %struct.lance_softc* %8 to %struct.le_lebuffer_softc*
  store %struct.le_lebuffer_softc* %9, %struct.le_lebuffer_softc** %7, align 8
  br label %10

10:                                               ; preds = %19, %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %7, align 8
  %15 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @bus_write_2(i32 %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 2
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %5, align 4
  br label %10

24:                                               ; preds = %10
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %7, align 8
  %29 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @bus_write_1(i32 %30, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @bus_write_2(i32, i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
