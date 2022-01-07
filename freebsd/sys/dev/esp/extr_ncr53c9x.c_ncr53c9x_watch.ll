; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_watch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i32, i32, %struct.ncr53c9x_tinfo* }
%struct.ncr53c9x_tinfo = type { i32, i32** }
%struct.ncr53c9x_linfo = type { i64, i64, i64, i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@time_second = common dso_local global i64 0, align 8
@NCR_NLUN = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ncr53c9x_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncr53c9x_watch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ncr53c9x_softc*, align 8
  %4 = alloca %struct.ncr53c9x_linfo*, align 8
  %5 = alloca %struct.ncr53c9x_tinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ncr53c9x_softc*
  store %struct.ncr53c9x_softc* %9, %struct.ncr53c9x_softc** %3, align 8
  %10 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc* %10, i32 %11)
  %13 = load i64, i64* @time_second, align 8
  %14 = sub nsw i64 %13, 600
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %79, %1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %15
  %22 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %22, i32 0, i32 2
  %24 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %24, i64 %26
  store %struct.ncr53c9x_tinfo* %27, %struct.ncr53c9x_tinfo** %5, align 8
  %28 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %29 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %28, i32 0, i32 0
  %30 = call %struct.ncr53c9x_linfo* @LIST_FIRST(i32* %29)
  store %struct.ncr53c9x_linfo* %30, %struct.ncr53c9x_linfo** %4, align 8
  br label %31

31:                                               ; preds = %74, %64, %21
  %32 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %4, align 8
  %33 = icmp ne %struct.ncr53c9x_linfo* %32, null
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %4, align 8
  %36 = getelementptr inbounds %struct.ncr53c9x_linfo, %struct.ncr53c9x_linfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %34
  %41 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %4, align 8
  %42 = getelementptr inbounds %struct.ncr53c9x_linfo, %struct.ncr53c9x_linfo* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %74

45:                                               ; preds = %40
  %46 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %4, align 8
  %47 = getelementptr inbounds %struct.ncr53c9x_linfo, %struct.ncr53c9x_linfo* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %45
  %51 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %4, align 8
  %52 = getelementptr inbounds %struct.ncr53c9x_linfo, %struct.ncr53c9x_linfo* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NCR_NLUN, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %58 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %4, align 8
  %61 = getelementptr inbounds %struct.ncr53c9x_linfo, %struct.ncr53c9x_linfo* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32*, i32** %59, i64 %62
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %56, %50
  %65 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %4, align 8
  %66 = load i32, i32* @link, align 4
  %67 = call i32 @LIST_REMOVE(%struct.ncr53c9x_linfo* %65, i32 %66)
  %68 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %4, align 8
  %69 = load i32, i32* @M_DEVBUF, align 4
  %70 = call i32 @free(%struct.ncr53c9x_linfo* %68, i32 %69)
  %71 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %72 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %71, i32 0, i32 0
  %73 = call %struct.ncr53c9x_linfo* @LIST_FIRST(i32* %72)
  store %struct.ncr53c9x_linfo* %73, %struct.ncr53c9x_linfo** %4, align 8
  br label %31

74:                                               ; preds = %45, %40, %34
  %75 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %4, align 8
  %76 = load i32, i32* @link, align 4
  %77 = call %struct.ncr53c9x_linfo* @LIST_NEXT(%struct.ncr53c9x_linfo* %75, i32 %76)
  store %struct.ncr53c9x_linfo* %77, %struct.ncr53c9x_linfo** %4, align 8
  br label %31

78:                                               ; preds = %31
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %15

82:                                               ; preds = %15
  %83 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %83, i32 0, i32 1
  %85 = load i32, i32* @hz, align 4
  %86 = mul nsw i32 60, %85
  %87 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %88 = call i32 @callout_reset(i32* %84, i32 %86, void (i8*)* @ncr53c9x_watch, %struct.ncr53c9x_softc* %87)
  ret void
}

declare dso_local i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc*, i32) #1

declare dso_local %struct.ncr53c9x_linfo* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.ncr53c9x_linfo*, i32) #1

declare dso_local i32 @free(%struct.ncr53c9x_linfo*, i32) #1

declare dso_local %struct.ncr53c9x_linfo* @LIST_NEXT(%struct.ncr53c9x_linfo*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ncr53c9x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
