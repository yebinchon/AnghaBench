; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_close_backend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_close_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i32, %struct.TYPE_6__, i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"closing dev=%s\0A\00", align 1
@FREAD = common dso_local global i32 0, align 4
@XBBF_READ_ONLY = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unexpected backend type.\00", align 1
@NOCRED = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbb_softc*)* @xbb_close_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_close_backend(%struct.xbb_softc* %0) #0 {
  %2 = alloca %struct.xbb_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.xbb_softc* %0, %struct.xbb_softc** %2, align 8
  %4 = call i32 (...) @DROP_GIANT()
  %5 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %6 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %10 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %98

13:                                               ; preds = %1
  %14 = load i32, i32* @FREAD, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %16 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @XBBF_READ_ONLY, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @FWRITE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %13
  %26 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %27 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %59 [
    i32 130, label %29
    i32 129, label %57
    i32 128, label %58
  ]

29:                                               ; preds = %25
  %30 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %31 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %38 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %43 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_relthread(i32* %41, i32 %46)
  %48 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %49 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %53 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %36, %29
  br label %61

57:                                               ; preds = %25
  br label %61

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %25, %58
  %60 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %57, %56
  %62 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %63 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @NOCRED, align 4
  %67 = load i32, i32* @curthread, align 4
  %68 = call i32 @vn_close(i32* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %70 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %69, i32 0, i32 3
  store i32* null, i32** %70, align 8
  %71 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %72 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %95 [
    i32 130, label %74
    i32 129, label %75
    i32 128, label %94
  ]

74:                                               ; preds = %61
  br label %97

75:                                               ; preds = %61
  %76 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %77 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %84 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @crfree(i32* %87)
  %89 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %90 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %82, %75
  br label %97

94:                                               ; preds = %61
  br label %95

95:                                               ; preds = %61, %94
  %96 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %93, %74
  br label %98

98:                                               ; preds = %97, %1
  %99 = call i32 (...) @PICKUP_GIANT()
  ret void
}

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @dev_relthread(i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vn_close(i32*, i32, i32, i32) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
