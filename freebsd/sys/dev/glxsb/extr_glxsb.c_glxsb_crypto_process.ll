; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_crypto_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_crypto_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i32, i32, %struct.cryptodesc*, i32* }
%struct.cryptodesc = type { i32, i32, %struct.cryptodesc* }
%struct.glxsb_softc = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.glxsb_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc* }
%struct.glxsb_session = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cryptop*, i32)* @glxsb_crypto_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxsb_crypto_process(i32 %0, %struct.cryptop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.glxsb_softc*, align 8
  %9 = alloca %struct.glxsb_session*, align 8
  %10 = alloca %struct.cryptodesc*, align 8
  %11 = alloca %struct.cryptodesc*, align 8
  %12 = alloca %struct.cryptodesc*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cryptop* %1, %struct.cryptop** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.glxsb_softc* @device_get_softc(i32 %14)
  store %struct.glxsb_softc* %15, %struct.glxsb_softc** %8, align 8
  store i32 0, i32* %13, align 4
  store %struct.cryptodesc* null, %struct.cryptodesc** %12, align 8
  store %struct.cryptodesc* null, %struct.cryptodesc** %11, align 8
  %16 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %17 = icmp eq %struct.cryptop* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %130

20:                                               ; preds = %3
  %21 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %22 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %27 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %26, i32 0, i32 2
  %28 = load %struct.cryptodesc*, %struct.cryptodesc** %27, align 8
  %29 = icmp eq %struct.cryptodesc* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %13, align 4
  br label %123

32:                                               ; preds = %25
  %33 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %34 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %33, i32 0, i32 2
  %35 = load %struct.cryptodesc*, %struct.cryptodesc** %34, align 8
  store %struct.cryptodesc* %35, %struct.cryptodesc** %10, align 8
  br label %36

36:                                               ; preds = %60, %32
  %37 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %38 = icmp ne %struct.cryptodesc* %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %41 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %57 [
    i32 133, label %43
    i32 134, label %43
    i32 131, label %43
    i32 132, label %43
    i32 130, label %43
    i32 129, label %43
    i32 128, label %43
    i32 135, label %50
  ]

43:                                               ; preds = %39, %39, %39, %39, %39, %39, %39
  %44 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %45 = icmp ne %struct.cryptodesc* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %13, align 4
  br label %123

48:                                               ; preds = %43
  %49 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %49, %struct.cryptodesc** %12, align 8
  br label %59

50:                                               ; preds = %39
  %51 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %52 = icmp ne %struct.cryptodesc* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %13, align 4
  br label %123

55:                                               ; preds = %50
  %56 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  store %struct.cryptodesc* %56, %struct.cryptodesc** %11, align 8
  br label %59

57:                                               ; preds = %39
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %13, align 4
  br label %123

59:                                               ; preds = %55, %48
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.cryptodesc*, %struct.cryptodesc** %10, align 8
  %62 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %61, i32 0, i32 2
  %63 = load %struct.cryptodesc*, %struct.cryptodesc** %62, align 8
  store %struct.cryptodesc* %63, %struct.cryptodesc** %10, align 8
  br label %36

64:                                               ; preds = %36
  %65 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %66 = icmp eq %struct.cryptodesc* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %69 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AES_BLOCK_LEN, align 4
  %72 = srem i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67, %64
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %13, align 4
  br label %123

76:                                               ; preds = %67
  %77 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %78 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.glxsb_session* @crypto_get_driver_session(i32 %79)
  store %struct.glxsb_session* %80, %struct.glxsb_session** %9, align 8
  %81 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %82 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %81, i32 0, i32 3
  %83 = call i32 @mtx_lock(i32* %82)
  %84 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %85 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %90 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %89, i32 0, i32 3
  %91 = call i32 @mtx_unlock(i32* %90)
  %92 = load i32, i32* @ERESTART, align 4
  store i32 %92, i32* %4, align 4
  br label %130

93:                                               ; preds = %76
  %94 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %95 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %99 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %100 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  store %struct.cryptodesc* %98, %struct.cryptodesc** %101, align 8
  %102 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %103 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %104 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store %struct.cryptodesc* %102, %struct.cryptodesc** %105, align 8
  %106 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %107 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %108 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store %struct.cryptop* %106, %struct.cryptop** %109, align 8
  %110 = load %struct.glxsb_session*, %struct.glxsb_session** %9, align 8
  %111 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %112 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store %struct.glxsb_session* %110, %struct.glxsb_session** %113, align 8
  %114 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %115 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %114, i32 0, i32 3
  %116 = call i32 @mtx_unlock(i32* %115)
  %117 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %118 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.glxsb_softc*, %struct.glxsb_softc** %8, align 8
  %121 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %120, i32 0, i32 1
  %122 = call i32 @taskqueue_enqueue(i32 %119, i32* %121)
  store i32 0, i32* %4, align 4
  br label %130

123:                                              ; preds = %74, %57, %53, %46, %30
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %126 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %128 = call i32 @crypto_done(%struct.cryptop* %127)
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %123, %93, %88, %18
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.glxsb_softc* @device_get_softc(i32) #1

declare dso_local %struct.glxsb_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
