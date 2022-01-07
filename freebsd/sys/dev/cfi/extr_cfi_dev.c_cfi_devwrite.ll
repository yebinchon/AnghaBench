; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_dev.c_cfi_devwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_dev.c_cfi_devwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.cfi_softc* }
%struct.cfi_softc = type { i64, i64, i64, i64, i64 }
%struct.uio = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @cfi_devwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_devwrite(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfi_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cdev*, %struct.cdev** %4, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load %struct.cfi_softc*, %struct.cfi_softc** %12, align 8
  store %struct.cfi_softc* %13, %struct.cfi_softc** %7, align 8
  %14 = load %struct.uio*, %struct.uio** %5, align 8
  %15 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %18 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EIO, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %88, %24
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.uio*, %struct.uio** %5, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.uio*, %struct.uio** %5, align 8
  %36 = getelementptr inbounds %struct.uio, %struct.uio* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %39 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br label %42

42:                                               ; preds = %34, %29, %26
  %43 = phi i1 [ false, %29 ], [ false, %26 ], [ %41, %34 ]
  br i1 %43, label %44, label %114

44:                                               ; preds = %42
  %45 = load %struct.uio*, %struct.uio** %5, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  %48 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %49 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %44
  %53 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %54 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %57 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %62 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %52
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %52
  %70 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %71 = call i32 @cfi_block_finish(%struct.cfi_softc* %70)
  br label %72

72:                                               ; preds = %69, %65
  br label %73

73:                                               ; preds = %72, %44
  %74 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %75 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %80 = load %struct.uio*, %struct.uio** %5, align 8
  %81 = getelementptr inbounds %struct.uio, %struct.uio* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @cfi_block_start(%struct.cfi_softc* %79, i64 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %114

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %73
  %89 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %90 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %93 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  store i64 %95, i64* %9, align 8
  %96 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %97 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = add nsw i64 %98, %99
  %101 = load %struct.cfi_softc*, %struct.cfi_softc** %7, align 8
  %102 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %8, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load %struct.uio*, %struct.uio** %5, align 8
  %109 = getelementptr inbounds %struct.uio, %struct.uio* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @MIN(i64 %107, i64 %110)
  %112 = load %struct.uio*, %struct.uio** %5, align 8
  %113 = call i32 @uiomove(i64 %104, i32 %111, %struct.uio* %112)
  store i32 %113, i32* %10, align 4
  br label %26

114:                                              ; preds = %86, %42
  %115 = load i32, i32* %10, align 4
  ret i32 %115
}

declare dso_local i32 @cfi_block_finish(%struct.cfi_softc*) #1

declare dso_local i32 @cfi_block_start(%struct.cfi_softc*, i64) #1

declare dso_local i32 @uiomove(i64, i32, %struct.uio*) #1

declare dso_local i32 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
