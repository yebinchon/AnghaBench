; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { %struct.TYPE_6__, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.apm_pwstatus*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.apm_pwstatus = type { i32, i32, i32, i32, i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@PMDV_ALLDEV = common dso_local global i32 0, align 4
@APM_BIOS = common dso_local global i32 0, align 4
@APM_GETCAPABILITIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @apm_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_get_info(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.apm_softc*, align 8
  %5 = alloca %struct.apm_pwstatus, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %4, align 8
  %6 = call i32 @bzero(%struct.apm_pwstatus* %5, i32 20)
  %7 = load i32, i32* @PMDV_ALLDEV, align 4
  %8 = getelementptr inbounds %struct.apm_pwstatus, %struct.apm_pwstatus* %5, i32 0, i32 4
  store i32 %7, i32* %8, align 4
  %9 = call i64 @apm_get_pwstatus(%struct.apm_pwstatus* %5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %98

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.apm_pwstatus, %struct.apm_pwstatus* %5, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 10
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.apm_pwstatus, %struct.apm_pwstatus* %5, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.apm_pwstatus, %struct.apm_pwstatus* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.apm_pwstatus, %struct.apm_pwstatus* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %32 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %38 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %44 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @APM_BIOS, align 4
  %50 = shl i32 %49, 8
  %51 = load i32, i32* @APM_GETCAPABILITIES, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %54 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 8
  %57 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %58 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %62 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %66 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = call i64 (...) @apm_bioscall()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %12
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32 -1, i32* %73, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 65280, i32* %75, align 8
  br label %93

76:                                               ; preds = %12
  %77 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %78 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 255
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %86 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 255
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %76, %71
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load %struct.apm_pwstatus*, %struct.apm_pwstatus** %95, align 8
  %97 = call i32 @bzero(%struct.apm_pwstatus* %96, i32 8)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %93, %11
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @bzero(%struct.apm_pwstatus*, i32) #1

declare dso_local i64 @apm_get_pwstatus(%struct.apm_pwstatus*) #1

declare dso_local i64 @apm_bioscall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
