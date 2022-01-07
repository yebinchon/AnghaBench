; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smist_softc = type { %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8* }

@ENXIO = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smist_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smist_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.smist_softc*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.smist_softc* @device_get_softc(i8* %5)
  store %struct.smist_softc* %6, %struct.smist_softc** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %9 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %8, i32 0, i32 1
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @set_ownership(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %17 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %18 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  store i8* %16, i8** %21, align 8
  %22 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %23 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %24 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i8* %22, i8** %27, align 8
  %28 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %29 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %30 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i8* %28, i8** %33, align 8
  %34 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %35 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 1000, i32* %38, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %41 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i8* %39, i8** %44, align 8
  %45 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %46 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 1
  %49 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %50 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 0
  %53 = bitcast %struct.TYPE_2__* %48 to i8*
  %54 = bitcast %struct.TYPE_2__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 40, i1 false)
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @cpufreq_register(i8* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %15, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.smist_softc* @device_get_softc(i8*) #1

declare dso_local i64 @set_ownership(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpufreq_register(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
