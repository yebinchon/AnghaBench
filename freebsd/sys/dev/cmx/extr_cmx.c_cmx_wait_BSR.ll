; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_wait_BSR.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_wait_BSR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmx_softc = type { i32, i64 }

@SPIN_COUNT = common dso_local global i32 0, align 4
@WAIT_TICKS = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cmx\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmx_softc*, i32, i32)* @cmx_wait_BSR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmx_wait_BSR(%struct.cmx_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmx_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cmx_softc* %0, %struct.cmx_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %23, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @SPIN_COUNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.cmx_softc*, %struct.cmx_softc** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @cmx_test_BSR(%struct.cmx_softc* %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %67

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %11

26:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %62, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @WAIT_TICKS, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load %struct.cmx_softc*, %struct.cmx_softc** %5, align 8
  %32 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %27
  %36 = load %struct.cmx_softc*, %struct.cmx_softc** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @cmx_test_BSR(%struct.cmx_softc* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %67

42:                                               ; preds = %35
  %43 = load %struct.cmx_softc*, %struct.cmx_softc** %5, align 8
  %44 = load i32, i32* @PWAIT, align 4
  %45 = load i32, i32* @PCATCH, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @WAIT_TICKS, align 4
  %48 = call i32 @tsleep(%struct.cmx_softc* %43, i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.cmx_softc*, %struct.cmx_softc** %5, align 8
  %50 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %4, align 4
  br label %67

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %27

65:                                               ; preds = %27
  %66 = load i32, i32* @EIO, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %59, %53, %41, %21
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @cmx_test_BSR(%struct.cmx_softc*, i32, i32) #1

declare dso_local i32 @tsleep(%struct.cmx_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
