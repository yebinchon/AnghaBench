; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_get_hwaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_get_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_softc*, i8*)* @dwc_get_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_get_hwaddr(%struct.dwc_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.dwc_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc_softc* %0, %struct.dwc_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %9 = call i32 @MAC_ADDRESS_LOW(i32 0)
  %10 = call i32 @READ4(%struct.dwc_softc* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %12 = call i32 @MAC_ADDRESS_HIGH(i32 0)
  %13 = call i32 @READ4(%struct.dwc_softc* %11, i32 %12)
  %14 = and i32 %13, 65535
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 65535
  br i1 %19, label %20, label %57

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 0
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %24, i8* %26, align 1
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %30, i8* %32, align 1
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  store i8 %42, i8* %44, align 1
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 0
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  store i8 %48, i8* %50, align 1
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 5
  store i8 %54, i8* %56, align 1
  br label %81

57:                                               ; preds = %17
  %58 = call i32 (...) @arc4random()
  %59 = and i32 %58, 16777215
  store i32 %59, i32* %7, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 98, i8* %61, align 1
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 115, i8* %63, align 1
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8 100, i8* %65, align 1
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 16
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %7, align 4
  %72 = ashr i32 %71, 8
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  store i8 %73, i8* %75, align 1
  %76 = load i32, i32* %7, align 4
  %77 = ashr i32 %76, 0
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 5
  store i8 %78, i8* %80, align 1
  br label %81

81:                                               ; preds = %57, %20
  ret i32 0
}

declare dso_local i32 @READ4(%struct.dwc_softc*, i32) #1

declare dso_local i32 @MAC_ADDRESS_LOW(i32) #1

declare dso_local i32 @MAC_ADDRESS_HIGH(i32) #1

declare dso_local i32 @arc4random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
