; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_get_hwaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_get_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32 }

@FEC_PALR_REG = common dso_local global i32 0, align 4
@FEC_PAUR_REG = common dso_local global i32 0, align 4
@FEC_PAUR_PADDR2_MASK = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"MAC address %02x:%02x:%02x:%02x:%02x:%02x:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffec_softc*, i8*)* @ffec_get_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_get_hwaddr(%struct.ffec_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.ffec_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ffec_softc* %0, %struct.ffec_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %9 = load i32, i32* @FEC_PALR_REG, align 4
  %10 = call i32 @RD4(%struct.ffec_softc* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %12 = load i32, i32* @FEC_PAUR_REG, align 4
  %13 = call i32 @RD4(%struct.ffec_softc* %11, i32 %12)
  %14 = load i32, i32* @FEC_PAUR_PADDR2_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 24
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %23, i8* %25, align 1
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 16
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 8
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 %33, i8* %35, align 1
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 0
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 24
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 16
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 5
  store i8 %48, i8* %50, align 1
  br label %75

51:                                               ; preds = %2
  %52 = call i32 (...) @arc4random()
  %53 = and i32 %52, 16777215
  store i32 %53, i32* %7, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 98, i8* %55, align 1
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8 115, i8* %57, align 1
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8 100, i8* %59, align 1
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 16
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8 %62, i8* %64, align 1
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 8
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  store i8 %67, i8* %69, align 1
  %70 = load i32, i32* %7, align 4
  %71 = ashr i32 %70, 0
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 5
  store i8 %72, i8* %74, align 1
  br label %75

75:                                               ; preds = %51, %20
  %76 = load i64, i64* @bootverbose, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 4
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 5
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8 signext %84, i8 signext %87, i8 signext %90, i8 signext %93, i8 signext %96, i8 signext %99)
  br label %101

101:                                              ; preds = %78, %75
  ret void
}

declare dso_local i32 @RD4(%struct.ffec_softc*, i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @device_printf(i32, i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
