; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_flash.c_opalflash_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_flash.c_opalflash_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opalflash_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.opal_msg = type { i32* }

@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@OPAL_FLASH_READ = common dso_local global i32 0, align 4
@OPAL_ASYNC_COMPLETION = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opalflash_softc*, i32, i64, i32)* @opalflash_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opalflash_read(%struct.opalflash_softc* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.opalflash_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.opal_msg, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.opalflash_softc* %0, %struct.opalflash_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.opalflash_softc*, %struct.opalflash_softc** %6, align 8
  %16 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.opalflash_softc*, %struct.opalflash_softc** %6, align 8
  %25 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22, %4
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %5, align 4
  br label %103

33:                                               ; preds = %22
  %34 = call i32 (...) @opal_alloc_async_token()
  store i32 %34, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %81, %33
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = call i32 @MIN(i32 %39, i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @PAGE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %43, %48
  %50 = call i32 @MIN(i32 %42, i64 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @OPAL_FLASH_READ, align 4
  %52 = load %struct.opalflash_softc*, %struct.opalflash_softc** %6, align 8
  %53 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @vtophys(i64 %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @opal_call(i32 %51, i32 %54, i32 %55, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @OPAL_ASYNC_COMPLETION, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %38
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @opal_wait_completion(%struct.opal_msg* %10, i32 8, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @OPAL_SUCCESS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %10, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %70, %64
  br label %76

76:                                               ; preds = %75, %38
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @OPAL_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %92

81:                                               ; preds = %76
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %8, align 8
  br label %35

92:                                               ; preds = %80, %35
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @opal_free_async_token(i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @OPAL_SUCCESS, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 0, i32* %11, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @EIO, align 4
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %31
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @opal_alloc_async_token(...) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @opal_call(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vtophys(i64) #1

declare dso_local i32 @opal_wait_completion(%struct.opal_msg*, i32, i32) #1

declare dso_local i32 @opal_free_async_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
