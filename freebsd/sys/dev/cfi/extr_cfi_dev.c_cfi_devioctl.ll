; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_dev.c_cfi_devioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_dev.c_cfi_devioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.cfi_softc* }
%struct.cfi_softc = type { i32, i32, i32 }
%struct.thread = type { i32 }
%struct.cfiocqry = type { i32, i32, i32 }

@ESPIPE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @cfi_devioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_devioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.cfi_softc*, align 8
  %13 = alloca %struct.cfiocqry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = load %struct.cdev*, %struct.cdev** %7, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load %struct.cfi_softc*, %struct.cfi_softc** %17, align 8
  store %struct.cfi_softc* %18, %struct.cfi_softc** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %91 [
    i32 130, label %20
  ]

20:                                               ; preds = %5
  %21 = load %struct.cfi_softc*, %struct.cfi_softc** %12, align 8
  %22 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.cfi_softc*, %struct.cfi_softc** %12, align 8
  %27 = call i32 @cfi_block_finish(%struct.cfi_softc* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %93

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i64, i64* %9, align 8
  %34 = inttoptr i64 %33 to %struct.cfiocqry*
  store %struct.cfiocqry* %34, %struct.cfiocqry** %13, align 8
  %35 = load %struct.cfiocqry*, %struct.cfiocqry** %13, align 8
  %36 = getelementptr inbounds %struct.cfiocqry, %struct.cfiocqry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cfi_softc*, %struct.cfi_softc** %12, align 8
  %39 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cfi_softc*, %struct.cfi_softc** %12, align 8
  %42 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  %45 = icmp sge i32 %37, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @ESPIPE, align 4
  store i32 %47, i32* %6, align 4
  br label %95

48:                                               ; preds = %32
  %49 = load %struct.cfiocqry*, %struct.cfiocqry** %13, align 8
  %50 = getelementptr inbounds %struct.cfiocqry, %struct.cfiocqry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cfiocqry*, %struct.cfiocqry** %13, align 8
  %53 = getelementptr inbounds %struct.cfiocqry, %struct.cfiocqry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = load %struct.cfi_softc*, %struct.cfi_softc** %12, align 8
  %57 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cfi_softc*, %struct.cfi_softc** %12, align 8
  %60 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %58, %61
  %63 = icmp sgt i32 %55, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* @ENOSPC, align 4
  store i32 %65, i32* %6, align 4
  br label %95

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %78, %66
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load %struct.cfiocqry*, %struct.cfiocqry** %13, align 8
  %72 = getelementptr inbounds %struct.cfiocqry, %struct.cfiocqry* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 4
  %75 = icmp ne i32 %73, 0
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi i1 [ false, %67 ], [ %75, %70 ]
  br i1 %77, label %78, label %90

78:                                               ; preds = %76
  %79 = load %struct.cfi_softc*, %struct.cfi_softc** %12, align 8
  %80 = load %struct.cfiocqry*, %struct.cfiocqry** %13, align 8
  %81 = getelementptr inbounds %struct.cfiocqry, %struct.cfiocqry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = call i32 @cfi_read_qry(%struct.cfi_softc* %79, i32 %82)
  store i32 %84, i32* %15, align 4
  %85 = load %struct.cfiocqry*, %struct.cfiocqry** %13, align 8
  %86 = getelementptr inbounds %struct.cfiocqry, %struct.cfiocqry* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = call i32 @copyout(i32* %15, i32 %87, i32 1)
  store i32 %89, i32* %14, align 4
  br label %67

90:                                               ; preds = %76
  br label %93

91:                                               ; preds = %5
  %92 = load i32, i32* @ENOIOCTL, align 4
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %91, %90, %30
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %64, %46
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @cfi_block_finish(%struct.cfi_softc*) #1

declare dso_local i32 @cfi_read_qry(%struct.cfi_softc*, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
