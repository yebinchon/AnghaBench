; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_copytodesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_copytodesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32 }
%struct.le_lebuffer_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_softc*, i8*, i32, i32)* @le_lebuffer_copytodesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le_lebuffer_copytodesc(%struct.lance_softc* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %17 = icmp sge i32 %16, 8
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %9, align 8
  %20 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @be64dec(i32* %23)
  %25 = call i32 @bus_write_8(i32 %21, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 8
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  store i32* %32, i32** %10, align 8
  br label %15

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 4
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %9, align 8
  %39 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @be32dec(i32* %42)
  %44 = call i32 @bus_write_4(i32 %40, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %7, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32* %51, i32** %10, align 8
  br label %34

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %64, %52
  %54 = load i32, i32* %8, align 4
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %9, align 8
  %58 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @be16dec(i32* %61)
  %63 = call i32 @bus_write_2(i32 %59, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 2
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %7, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32* %70, i32** %10, align 8
  br label %53

71:                                               ; preds = %53
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %9, align 8
  %76 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bus_write_1(i32 %77, i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %74, %71
  ret void
}

declare dso_local i32 @bus_write_8(i32, i32, i32) #1

declare dso_local i32 @be64dec(i32*) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @be32dec(i32*) #1

declare dso_local i32 @bus_write_2(i32, i32, i32) #1

declare dso_local i32 @be16dec(i32*) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
