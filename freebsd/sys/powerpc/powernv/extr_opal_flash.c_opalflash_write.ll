; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_flash.c_opalflash_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_flash.c_opalflash_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opalflash_softc = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.opal_msg = type { i32* }

@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@OPAL_FLASH_WRITE = common dso_local global i32 0, align 4
@OPAL_ASYNC_COMPLETION = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opalflash_softc*, i32, i64, i32)* @opalflash_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opalflash_write(%struct.opalflash_softc* %0, i32 %1, i64 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.opalflash_softc*, %struct.opalflash_softc** %6, align 8
  %25 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22, %4
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %5, align 4
  br label %118

33:                                               ; preds = %22
  %34 = load %struct.opalflash_softc*, %struct.opalflash_softc** %6, align 8
  %35 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.opalflash_softc*, %struct.opalflash_softc** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @opalflash_erase(%struct.opalflash_softc* %39, i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %118

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %33
  %49 = call i32 (...) @opal_alloc_async_token()
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %96, %48
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %107

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = call i32 @MIN(i32 %54, i64 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @PAGE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %58, %63
  %65 = call i32 @MIN(i32 %57, i64 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* @OPAL_FLASH_WRITE, align 4
  %67 = load %struct.opalflash_softc*, %struct.opalflash_softc** %6, align 8
  %68 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @vtophys(i64 %71)
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @opal_call(i32 %66, i32 %69, i32 %70, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @OPAL_ASYNC_COMPLETION, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %53
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @opal_wait_completion(%struct.opal_msg* %10, i32 8, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @OPAL_SUCCESS, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %10, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %85, %79
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @OPAL_SUCCESS, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %107

96:                                               ; preds = %91
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %8, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %8, align 8
  br label %50

107:                                              ; preds = %95, %50
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @opal_free_async_token(i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @OPAL_SUCCESS, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  br label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @EIO, align 4
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %45, %31
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @opalflash_erase(%struct.opalflash_softc*, i32, i32) #1

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
