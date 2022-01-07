; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_p4tcc.c_p4tcc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_p4tcc.c_p4tcc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p4tcc_softc = type { i8*, i8*, i32, i32 }
%struct.cf_setting = type { i32 }

@TCC_NUM_SETTINGS = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @p4tcc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4tcc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p4tcc_softc*, align 8
  %4 = alloca %struct.cf_setting, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.p4tcc_softc* @device_get_softc(i32 %5)
  store %struct.p4tcc_softc* %6, %struct.p4tcc_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load i8*, i8** @TCC_NUM_SETTINGS, align 8
  %11 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %3, align 8
  %12 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @TRUE, align 4
  %14 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @cpu_id, align 4
  %17 = and i32 %16, 255
  switch i32 %17, label %28 [
    i32 34, label %18
    i32 36, label %18
    i32 37, label %18
    i32 39, label %18
    i32 41, label %18
    i32 7, label %23
    i32 10, label %23
    i32 18, label %23
    i32 19, label %23
    i32 98, label %23
    i32 100, label %23
    i32 101, label %23
  ]

18:                                               ; preds = %1, %1, %1, %1, %1
  %19 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr i8, i8* %21, i64 -1
  store i8* %22, i8** %20, align 8
  br label %28

23:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %24 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr i8, i8* %26, i64 -2
  store i8* %27, i8** %25, align 8
  br label %28

28:                                               ; preds = %1, %23, %18
  %29 = load i8*, i8** @TCC_NUM_SETTINGS, align 8
  %30 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %29 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = add nsw i64 %35, 1
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %3, align 8
  %39 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %4, i32 0, i32 0
  store i32 10000, i32* %40, align 4
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @p4tcc_set(i32 %41, %struct.cf_setting* %4)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @cpufreq_register(i32 %43)
  ret i32 0
}

declare dso_local %struct.p4tcc_softc* @device_get_softc(i32) #1

declare dso_local i32 @p4tcc_set(i32, %struct.cf_setting*) #1

declare dso_local i32 @cpufreq_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
