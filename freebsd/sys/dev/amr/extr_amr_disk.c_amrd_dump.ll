; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_disk.c_amrd_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_disk.c_amrd_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amrd_softc = type { i32, i64 }
%struct.amr_softc = type { i32 }
%struct.disk = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@AMR_BLKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i64)* @amrd_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amrd_dump(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.amrd_softc*, align 8
  %13 = alloca %struct.amr_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.disk*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.disk*
  store %struct.disk* %18, %struct.disk** %15, align 8
  %19 = load %struct.disk*, %struct.disk** %15, align 8
  %20 = getelementptr inbounds %struct.disk, %struct.disk* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.amrd_softc*
  store %struct.amrd_softc* %22, %struct.amrd_softc** %12, align 8
  %23 = load %struct.amrd_softc*, %struct.amrd_softc** %12, align 8
  %24 = icmp eq %struct.amrd_softc* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %6, align 4
  br label %58

27:                                               ; preds = %5
  %28 = load %struct.amrd_softc*, %struct.amrd_softc** %12, align 8
  %29 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.amr_softc*
  store %struct.amr_softc* %31, %struct.amr_softc** %13, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %27
  %35 = load %struct.amrd_softc*, %struct.amrd_softc** %12, align 8
  %36 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.amr_softc*, %struct.amr_softc** %13, align 8
  %39 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %16, align 4
  %42 = load %struct.amr_softc*, %struct.amr_softc** %13, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @AMR_BLKSIZE, align 4
  %46 = sdiv i32 %44, %45
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %11, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @AMR_BLKSIZE, align 4
  %51 = sdiv i32 %49, %50
  %52 = call i32 @amr_dump_blocks(%struct.amr_softc* %42, i32 %43, i32 %46, i8* %47, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56, %27
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %54, %25
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @amr_dump_blocks(%struct.amr_softc*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
