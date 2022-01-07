; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl.c_bhnd_pwrctl_request_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl.c_bhnd_pwrctl_request_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pwrctl_softc = type { i32 }
%struct.bhnd_pwrctl_clkres = type { i64, i32 }

@BHND_CLOCK_DYN = common dso_local global i64 0, align 8
@bhnd_pwrctl_clkres = common dso_local global i32 0, align 4
@cr_link = common dso_local global i32 0, align 4
@BHND_PWRCTL_WAR_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"clock transition failed: %d\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid owner\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @bhnd_pwrctl_request_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pwrctl_request_clock(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.bhnd_pwrctl_softc*, align 8
  %9 = alloca %struct.bhnd_pwrctl_clkres*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.bhnd_pwrctl_softc* @device_get_softc(i32 %11)
  store %struct.bhnd_pwrctl_softc* %12, %struct.bhnd_pwrctl_softc** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %14 = call i32 @PWRCTL_LOCK(%struct.bhnd_pwrctl_softc* %13)
  %15 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.bhnd_pwrctl_clkres* @bhnd_pwrctl_find_res(%struct.bhnd_pwrctl_softc* %15, i32 %16)
  store %struct.bhnd_pwrctl_clkres* %17, %struct.bhnd_pwrctl_clkres** %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @BHND_CLOCK_DYN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %3
  %22 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %23 = icmp eq %struct.bhnd_pwrctl_clkres* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %26 = call i32 @PWRCTL_UNLOCK(%struct.bhnd_pwrctl_softc* %25)
  store i32 0, i32* %4, align 4
  br label %110

27:                                               ; preds = %21
  %28 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %29 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %28, i32 0, i32 0
  %30 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %31 = load i32, i32* @bhnd_pwrctl_clkres, align 4
  %32 = load i32, i32* @cr_link, align 4
  %33 = call i32 @STAILQ_REMOVE(i32* %29, %struct.bhnd_pwrctl_clkres* %30, i32 %31, i32 %32)
  %34 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %35 = load i32, i32* @BHND_PWRCTL_WAR_RUN, align 4
  %36 = call i32 @bhnd_pwrctl_updateclk(%struct.bhnd_pwrctl_softc* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %43 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %42, i32 0, i32 0
  %44 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %45 = load i32, i32* @cr_link, align 4
  %46 = call i32 @STAILQ_INSERT_TAIL(i32* %43, %struct.bhnd_pwrctl_clkres* %44, i32 %45)
  %47 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %48 = call i32 @PWRCTL_UNLOCK(%struct.bhnd_pwrctl_softc* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %110

50:                                               ; preds = %27
  %51 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %52 = load i32, i32* @M_DEVBUF, align 4
  %53 = call i32 @free(%struct.bhnd_pwrctl_clkres* %51, i32 %52)
  %54 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %55 = call i32 @PWRCTL_UNLOCK(%struct.bhnd_pwrctl_softc* %54)
  store i32 0, i32* %4, align 4
  br label %110

56:                                               ; preds = %3
  %57 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %58 = icmp eq %struct.bhnd_pwrctl_clkres* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i32, i32* @M_DEVBUF, align 4
  %61 = load i32, i32* @M_NOWAIT, align 4
  %62 = call %struct.bhnd_pwrctl_clkres* @malloc(i32 16, i32 %60, i32 %61)
  store %struct.bhnd_pwrctl_clkres* %62, %struct.bhnd_pwrctl_clkres** %9, align 8
  %63 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %64 = icmp eq %struct.bhnd_pwrctl_clkres* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @ENOMEM, align 4
  store i32 %66, i32* %4, align 4
  br label %110

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %70 = getelementptr inbounds %struct.bhnd_pwrctl_clkres, %struct.bhnd_pwrctl_clkres* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %73 = getelementptr inbounds %struct.bhnd_pwrctl_clkres, %struct.bhnd_pwrctl_clkres* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %75 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %74, i32 0, i32 0
  %76 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %77 = load i32, i32* @cr_link, align 4
  %78 = call i32 @STAILQ_INSERT_TAIL(i32* %75, %struct.bhnd_pwrctl_clkres* %76, i32 %77)
  br label %90

79:                                               ; preds = %56
  %80 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %81 = getelementptr inbounds %struct.bhnd_pwrctl_clkres, %struct.bhnd_pwrctl_clkres* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @KASSERT(i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %89 = getelementptr inbounds %struct.bhnd_pwrctl_clkres, %struct.bhnd_pwrctl_clkres* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %79, %67
  %91 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %92 = load i32, i32* @BHND_PWRCTL_WAR_RUN, align 4
  %93 = call i32 @bhnd_pwrctl_updateclk(%struct.bhnd_pwrctl_softc* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %98 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %97, i32 0, i32 0
  %99 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %100 = load i32, i32* @bhnd_pwrctl_clkres, align 4
  %101 = load i32, i32* @cr_link, align 4
  %102 = call i32 @STAILQ_REMOVE(i32* %98, %struct.bhnd_pwrctl_clkres* %99, i32 %100, i32 %101)
  %103 = load %struct.bhnd_pwrctl_clkres*, %struct.bhnd_pwrctl_clkres** %9, align 8
  %104 = load i32, i32* @M_DEVBUF, align 4
  %105 = call i32 @free(%struct.bhnd_pwrctl_clkres* %103, i32 %104)
  br label %106

106:                                              ; preds = %96, %90
  %107 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %108 = call i32 @PWRCTL_UNLOCK(%struct.bhnd_pwrctl_softc* %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %65, %50, %38, %24
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.bhnd_pwrctl_softc* @device_get_softc(i32) #1

declare dso_local i32 @PWRCTL_LOCK(%struct.bhnd_pwrctl_softc*) #1

declare dso_local %struct.bhnd_pwrctl_clkres* @bhnd_pwrctl_find_res(%struct.bhnd_pwrctl_softc*, i32) #1

declare dso_local i32 @PWRCTL_UNLOCK(%struct.bhnd_pwrctl_softc*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.bhnd_pwrctl_clkres*, i32, i32) #1

declare dso_local i32 @bhnd_pwrctl_updateclk(%struct.bhnd_pwrctl_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.bhnd_pwrctl_clkres*, i32) #1

declare dso_local i32 @free(%struct.bhnd_pwrctl_clkres*, i32) #1

declare dso_local %struct.bhnd_pwrctl_clkres* @malloc(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
