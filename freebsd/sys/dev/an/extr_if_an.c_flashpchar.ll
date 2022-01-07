; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_flashpchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_flashpchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.an_softc* }
%struct.an_softc = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"flash putchar busywait timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32)* @flashpchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashpchar(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.an_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load %struct.an_softc*, %struct.an_softc** %13, align 8
  store %struct.an_softc* %14, %struct.an_softc** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, 32768
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 200, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %38, %20
  %23 = load %struct.an_softc*, %struct.an_softc** %11, align 8
  %24 = load %struct.an_softc*, %struct.an_softc** %11, align 8
  %25 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @AN_SW0(i32 %26)
  %28 = call i32 @CSR_READ_2(%struct.an_softc* %23, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 32768
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.an_softc*, %struct.an_softc** %11, align 8
  %34 = call i32 @FLASH_DELAY(%struct.an_softc* %33, i32 50)
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 50
  store i32 %36, i32* %10, align 4
  br label %38

37:                                               ; preds = %22
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %22, label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %10, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %46 = call i32 @if_printf(%struct.ifnet* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %86

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %73, %47
  %49 = load %struct.an_softc*, %struct.an_softc** %11, align 8
  %50 = load %struct.an_softc*, %struct.an_softc** %11, align 8
  %51 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @AN_SW0(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @CSR_WRITE_2(%struct.an_softc* %49, i32 %53, i32 %54)
  %56 = load %struct.an_softc*, %struct.an_softc** %11, align 8
  %57 = call i32 @FLASH_DELAY(%struct.an_softc* %56, i32 50)
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 50
  store i32 %59, i32* %7, align 4
  %60 = load %struct.an_softc*, %struct.an_softc** %11, align 8
  %61 = load %struct.an_softc*, %struct.an_softc** %11, align 8
  %62 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @AN_SW1(i32 %63)
  %65 = call i32 @CSR_READ_2(%struct.an_softc* %60, i32 %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %7, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %70, %71
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ false, %66 ], [ %72, %69 ]
  br i1 %74, label %48, label %75

75:                                               ; preds = %73
  %76 = load %struct.an_softc*, %struct.an_softc** %11, align 8
  %77 = load %struct.an_softc*, %struct.an_softc** %11, align 8
  %78 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @AN_SW1(i32 %79)
  %81 = call i32 @CSR_WRITE_2(%struct.an_softc* %76, i32 %80, i32 0)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %75, %44
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @CSR_READ_2(%struct.an_softc*, i32) #1

declare dso_local i32 @AN_SW0(i32) #1

declare dso_local i32 @FLASH_DELAY(%struct.an_softc*, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @AN_SW1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
