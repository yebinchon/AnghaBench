; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_copyfrombuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_copyfrombuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32 }
%struct.le_lebuffer_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_softc*, i8*, i32, i32)* @le_lebuffer_copyfrombuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le_lebuffer_copyfrombuf(%struct.lance_softc* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lance_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.le_lebuffer_softc*, align 8
  %10 = alloca i32*, align 8
  store %struct.lance_softc* %0, %struct.lance_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %12 = bitcast %struct.lance_softc* %11 to %struct.le_lebuffer_softc*
  store %struct.le_lebuffer_softc* %12, %struct.le_lebuffer_softc** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %10, align 8
  br label %15

15:                                               ; preds = %26, %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i32*, i32** %10, align 8
  %20 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %9, align 8
  %21 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @bus_read_2(i32 %22, i32 %23)
  %25 = call i32 @le16enc(i32* %19, i32 %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 2
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32* %32, i32** %10, align 8
  br label %15

33:                                               ; preds = %15
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %9, align 8
  %38 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @bus_read_1(i32 %39, i32 %41)
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @le16enc(i32*, i32) #1

declare dso_local i32 @bus_read_2(i32, i32) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
