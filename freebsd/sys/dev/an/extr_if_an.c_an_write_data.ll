; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_write_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32 }

@AN_BAP0 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AN_DATA0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.an_softc*, i32, i32, i64, i32)* @an_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_write_data(%struct.an_softc* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.an_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.an_softc* %0, %struct.an_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %27

17:                                               ; preds = %5
  %18 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @AN_BAP0, align 4
  %22 = call i64 @an_seek(%struct.an_softc* %18, i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @EIO, align 4
  store i32 %25, i32* %6, align 4
  br label %55

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %5
  %28 = load i64, i64* %10, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %41, %27
  %32 = load i32, i32* %12, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %36 = load i32, i32* @AN_DATA0, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %13, align 8
  %39 = load i32, i32* %37, align 4
  %40 = call i32 @CSR_WRITE_2(%struct.an_softc* %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %42, 2
  store i32 %43, i32* %12, align 4
  br label %31

44:                                               ; preds = %31
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32*, i32** %13, align 8
  store i32* %48, i32** %14, align 8
  %49 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %50 = load i32, i32* @AN_DATA0, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @CSR_WRITE_1(%struct.an_softc* %49, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %47, %44
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %24
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @an_seek(%struct.an_softc*, i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.an_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
