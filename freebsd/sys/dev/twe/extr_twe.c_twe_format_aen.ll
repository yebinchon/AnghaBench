; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_format_aen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_format_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i8*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@twe_table_aen = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"twed%d: %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"twe%d: %s for unknown unit %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"twe%d: port %d: %s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"unknown AEN 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.twe_softc*, i32)* @twe_format_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @twe_format_aen(%struct.twe_softc* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.twe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.twe_softc* %0, %struct.twe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @twe_table_aen, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @TWE_AEN_CODE(i32 %10)
  %12 = call i8* @twe_describe_code(i32 %9, i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %76 [
    i32 113, label %18
    i32 97, label %23
    i32 99, label %25
    i32 112, label %60
    i32 120, label %75
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @bootverbose, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i8* null, i8** %3, align 8
  br label %86

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %2, %22
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %3, align 8
  br label %86

25:                                               ; preds = %2
  %26 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %27 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @TWE_AEN_UNIT(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %38 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @device_get_unit(i32* %40)
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %39, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %42)
  br label %56

44:                                               ; preds = %25
  %45 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %46 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %49 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @device_get_unit(i32* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @TWE_AEN_UNIT(i32 %53)
  %55 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %47, i32 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %51, i8* %52, i32 %54)
  br label %56

56:                                               ; preds = %44, %36
  %57 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %58 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %3, align 8
  br label %86

60:                                               ; preds = %2
  %61 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %62 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %65 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @device_get_unit(i32* %66)
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @TWE_AEN_UNIT(i32 %68)
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %63, i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %69, i8* %70)
  %72 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %73 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %3, align 8
  br label %86

75:                                               ; preds = %2
  br label %76

76:                                               ; preds = %2, %75
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %79 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %80, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %84 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %3, align 8
  br label %86

86:                                               ; preds = %77, %60, %56, %23, %21
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

declare dso_local i8* @twe_describe_code(i32, i32) #1

declare dso_local i32 @TWE_AEN_CODE(i32) #1

declare dso_local i32 @TWE_AEN_UNIT(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @device_get_unit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
