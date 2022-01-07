; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i8*, i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@APM_BIOS = common dso_local global i32 0, align 4
@APM_SETPWSTATE = common dso_local global i32 0, align 4
@PMDV_DISP0 = common dso_local global i32 0, align 4
@PMST_APMENABLED = common dso_local global i8* null, align 8
@PMST_SUSPEND = common dso_local global i8* null, align 8
@PMDV_DISPALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Display off failure: errcode = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apm_display(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.apm_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %4, align 8
  %5 = load i32, i32* @APM_BIOS, align 4
  %6 = shl i32 %5, 8
  %7 = load i32, i32* @APM_SETPWSTATE, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %10 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %8, i32* %12, align 8
  %13 = load i32, i32* @PMDV_DISP0, align 4
  %14 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %15 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i32 %13, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i8*, i8** @PMST_APMENABLED, align 8
  br label %24

22:                                               ; preds = %1
  %23 = load i8*, i8** @PMST_SUSPEND, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i8* [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %27 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i8* %25, i8** %29, align 8
  %30 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %31 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = call i64 (...) @apm_bioscall()
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %79

37:                                               ; preds = %24
  %38 = load i32, i32* @APM_BIOS, align 4
  %39 = shl i32 %38, 8
  %40 = load i32, i32* @APM_SETPWSTATE, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %43 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* @PMDV_DISPALL, align 4
  %47 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %48 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 8
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i8*, i8** @PMST_APMENABLED, align 8
  br label %57

55:                                               ; preds = %37
  %56 = load i8*, i8** @PMST_SUSPEND, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i8* [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %60 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i8* %58, i8** %62, align 8
  %63 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %64 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = call i64 (...) @apm_bioscall()
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %79

70:                                               ; preds = %57
  %71 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %72 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 8
  %77 = and i32 255, %76
  %78 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %77)
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %70, %69, %36
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @apm_bioscall(...) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
