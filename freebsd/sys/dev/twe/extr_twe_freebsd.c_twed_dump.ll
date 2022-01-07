; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twed_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twed_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twed_softc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.twe_softc = type { i32 }
%struct.disk = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@TWE_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @twed_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twed_dump(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.twed_softc*, align 8
  %13 = alloca %struct.twe_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.disk*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.disk*
  store %struct.disk* %17, %struct.disk** %15, align 8
  %18 = load %struct.disk*, %struct.disk** %15, align 8
  %19 = getelementptr inbounds %struct.disk, %struct.disk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.twed_softc*
  store %struct.twed_softc* %21, %struct.twed_softc** %12, align 8
  %22 = load %struct.twed_softc*, %struct.twed_softc** %12, align 8
  %23 = icmp eq %struct.twed_softc* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %6, align 4
  br label %53

26:                                               ; preds = %5
  %27 = load %struct.twed_softc*, %struct.twed_softc** %12, align 8
  %28 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.twe_softc*
  store %struct.twe_softc* %30, %struct.twe_softc** %13, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load %struct.twe_softc*, %struct.twe_softc** %13, align 8
  %35 = load %struct.twed_softc*, %struct.twed_softc** %12, align 8
  %36 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @TWE_BLOCK_SIZE, align 8
  %42 = udiv i64 %40, %41
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @TWE_BLOCK_SIZE, align 8
  %46 = udiv i64 %44, %45
  %47 = call i32 @twe_dump_blocks(%struct.twe_softc* %34, i32 %39, i64 %42, i8* %43, i64 %46)
  store i32 %47, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %6, align 4
  br label %53

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %26
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %49, %24
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @twe_dump_blocks(%struct.twe_softc*, i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
