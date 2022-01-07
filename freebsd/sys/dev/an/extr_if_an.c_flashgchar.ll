; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_flashgchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_flashgchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.an_softc* }
%struct.an_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32)* @flashgchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashgchar(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.an_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8 0, i8* %8, align 1
  store i32 -1, i32* %9, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load %struct.an_softc*, %struct.an_softc** %12, align 8
  store %struct.an_softc* %13, %struct.an_softc** %10, align 8
  br label %14

14:                                               ; preds = %78, %3
  %15 = load %struct.an_softc*, %struct.an_softc** %10, align 8
  %16 = load %struct.an_softc*, %struct.an_softc** %10, align 8
  %17 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AN_SW1(i32 %18)
  %20 = call i32 @CSR_READ_2(%struct.an_softc* %15, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = and i32 32768, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 10
  store i32 %29, i32* %6, align 4
  %30 = load %struct.an_softc*, %struct.an_softc** %10, align 8
  %31 = call i32 @FLASH_DELAY(%struct.an_softc* %30, i32 10)
  br label %78

32:                                               ; preds = %23, %14
  %33 = load i32, i32* %7, align 4
  %34 = and i32 255, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %8, align 1
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = and i32 32768, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.an_softc*, %struct.an_softc** %10, align 8
  %46 = load %struct.an_softc*, %struct.an_softc** %10, align 8
  %47 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @AN_SW1(i32 %48)
  %50 = call i32 @CSR_WRITE_2(%struct.an_softc* %45, i32 %49, i32 0)
  store i32 1, i32* %9, align 4
  br label %81

51:                                               ; preds = %40, %32
  %52 = load i8, i8* %8, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 129
  br i1 %54, label %70, label %55

55:                                               ; preds = %51
  %56 = load i8, i8* %8, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 130
  br i1 %58, label %70, label %59

59:                                               ; preds = %55
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 131
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load i8, i8* %8, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 26
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 65535, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %63, %59, %55, %51
  br label %81

71:                                               ; preds = %67
  %72 = load %struct.an_softc*, %struct.an_softc** %10, align 8
  %73 = load %struct.an_softc*, %struct.an_softc** %10, align 8
  %74 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @AN_SW1(i32 %75)
  %77 = call i32 @CSR_WRITE_2(%struct.an_softc* %72, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %71, %27
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %14, label %81

81:                                               ; preds = %78, %70, %44
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @CSR_READ_2(%struct.an_softc*, i32) #1

declare dso_local i32 @AN_SW1(i32) #1

declare dso_local i32 @FLASH_DELAY(%struct.an_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
