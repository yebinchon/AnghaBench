; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_dev.c_cfi_devread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_dev.c_cfi_devread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.cfi_softc* }
%struct.cfi_softc = type { i64, i32, i64 }
%struct.uio = type { i64, i64 }
%union.anon = type { [4 x i8*] }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @cfi_devread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_devread(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 8
  %8 = alloca %struct.cfi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.cdev*, %struct.cdev** %4, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load %struct.cfi_softc*, %struct.cfi_softc** %13, align 8
  store %struct.cfi_softc* %14, %struct.cfi_softc** %8, align 8
  %15 = load %struct.cfi_softc*, %struct.cfi_softc** %8, align 8
  %16 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.cfi_softc*, %struct.cfi_softc** %8, align 8
  %21 = call i32 @cfi_block_finish(%struct.cfi_softc* %20)
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = load %struct.uio*, %struct.uio** %5, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cfi_softc*, %struct.cfi_softc** %8, align 8
  %32 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EIO, align 4
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %38, %23
  br label %41

41:                                               ; preds = %82, %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.uio*, %struct.uio** %5, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.uio*, %struct.uio** %5, align 8
  %51 = getelementptr inbounds %struct.uio, %struct.uio* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.cfi_softc*, %struct.cfi_softc** %8, align 8
  %54 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br label %57

57:                                               ; preds = %49, %44, %41
  %58 = phi i1 [ false, %44 ], [ false, %41 ], [ %56, %49 ]
  br i1 %58, label %59, label %105

59:                                               ; preds = %57
  %60 = load %struct.uio*, %struct.uio** %5, align 8
  %61 = getelementptr inbounds %struct.uio, %struct.uio* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = load %struct.cfi_softc*, %struct.cfi_softc** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i8* @cfi_read_raw(%struct.cfi_softc* %64, i32 %65)
  store i8* %66, i8** %10, align 8
  %67 = load %struct.cfi_softc*, %struct.cfi_softc** %8, align 8
  %68 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %82 [
    i32 1, label %70
    i32 2, label %74
    i32 4, label %78
  ]

70:                                               ; preds = %59
  %71 = load i8*, i8** %10, align 8
  %72 = bitcast %union.anon* %7 to [4 x i8*]*
  %73 = getelementptr inbounds [4 x i8*], [4 x i8*]* %72, i64 0, i64 0
  store i8* %71, i8** %73, align 8
  br label %82

74:                                               ; preds = %59
  %75 = load i8*, i8** %10, align 8
  %76 = bitcast %union.anon* %7 to [2 x i8*]*
  %77 = getelementptr inbounds [2 x i8*], [2 x i8*]* %76, i64 0, i64 0
  store i8* %75, i8** %77, align 8
  br label %82

78:                                               ; preds = %59
  %79 = load i8*, i8** %10, align 8
  %80 = bitcast %union.anon* %7 to [1 x i8*]*
  %81 = getelementptr inbounds [1 x i8*], [1 x i8*]* %80, i64 0, i64 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %59, %78, %74, %70
  %83 = load %struct.cfi_softc*, %struct.cfi_softc** %8, align 8
  %84 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = bitcast %union.anon* %7 to [4 x i8*]*
  %90 = getelementptr inbounds [4 x i8*], [4 x i8*]* %89, i64 0, i64 0
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load %struct.uio*, %struct.uio** %5, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cfi_softc*, %struct.cfi_softc** %8, align 8
  %98 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i32 @MIN(i64 %96, i32 %101)
  %103 = load %struct.uio*, %struct.uio** %5, align 8
  %104 = call i32 @uiomove(i8** %93, i32 %102, %struct.uio* %103)
  store i32 %104, i32* %11, align 4
  br label %41

105:                                              ; preds = %57
  %106 = load i32, i32* %11, align 4
  ret i32 %106
}

declare dso_local i32 @cfi_block_finish(%struct.cfi_softc*) #1

declare dso_local i8* @cfi_read_raw(%struct.cfi_softc*, i32) #1

declare dso_local i32 @uiomove(i8**, i32, %struct.uio*) #1

declare dso_local i32 @MIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
