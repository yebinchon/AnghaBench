; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.bktr_softc = type { i64, i32 }

@bktr_devclass = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64*, i32, i32*)* @bktr_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bktr_mmap(%struct.cdev* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bktr_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.cdev*, %struct.cdev** %7, align 8
  %15 = call i32 @dev2unit(%struct.cdev* %14)
  %16 = call i32 @UNIT(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.cdev*, %struct.cdev** %7, align 8
  %18 = call i32 @dev2unit(%struct.cdev* %17)
  %19 = call i64 @FUNCTION(i32 %18)
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %58

22:                                               ; preds = %5
  %23 = load i32, i32* @bktr_devclass, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @devclass_get_softc(i32 %23, i32 %24)
  %26 = inttoptr i64 %25 to %struct.bktr_softc*
  store %struct.bktr_softc* %26, %struct.bktr_softc** %13, align 8
  %27 = load %struct.bktr_softc*, %struct.bktr_softc** %13, align 8
  %28 = icmp eq %struct.bktr_softc* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %6, align 4
  br label %58

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @PROT_EXEC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %58

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %58

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.bktr_softc*, %struct.bktr_softc** %13, align 8
  %44 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = mul nsw i64 %45, %46
  %48 = icmp sge i64 %42, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  br label %58

50:                                               ; preds = %41
  %51 = load %struct.bktr_softc*, %struct.bktr_softc** %13, align 8
  %52 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @vtophys(i32 %53)
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %50, %49, %40, %36, %29, %21
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @UNIT(i32) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i64 @FUNCTION(i32) #1

declare dso_local i64 @devclass_get_softc(i32, i32) #1

declare dso_local i64 @vtophys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
