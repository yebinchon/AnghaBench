; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"xbb_shutdown\00", align 1
@M_XENSTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xbb_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbb_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xbb_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.xbb_softc* @device_get_softc(i32 %5)
  store %struct.xbb_softc* %6, %struct.xbb_softc** %3, align 8
  %7 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %8 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  br label %10

10:                                               ; preds = %15, %1
  %11 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %12 = call i64 @xbb_shutdown(%struct.xbb_softc* %11)
  %13 = load i64, i64* @EAGAIN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %17 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %17, i32 0, i32 0
  %19 = call i32 @msleep(%struct.xbb_softc* %16, i32* %18, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %10

20:                                               ; preds = %10
  %21 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %22 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %21, i32 0, i32 0
  %23 = call i32 @mtx_unlock(i32* %22)
  %24 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @taskqueue_free(i32* %32)
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %36 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @devstat_remove_entry(i32* %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %46 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %51 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @devstat_remove_entry(i32* %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %56 = call i32 @xbb_close_backend(%struct.xbb_softc* %55)
  %57 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %58 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %63 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @M_XENSTORE, align 4
  %66 = call i32 @free(i32* %64, i32 %65)
  %67 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %68 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %67, i32 0, i32 3
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %61, %54
  %70 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %71 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %76 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @M_XENSTORE, align 4
  %79 = call i32 @free(i32* %77, i32 %78)
  %80 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %81 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %74, %69
  %83 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %84 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %89 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @M_XENSTORE, align 4
  %92 = call i32 @free(i32* %90, i32 %91)
  %93 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %94 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %87, %82
  %96 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %97 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %96, i32 0, i32 0
  %98 = call i32 @mtx_destroy(i32* %97)
  ret i32 0
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.xbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xbb_shutdown(%struct.xbb_softc*) #1

declare dso_local i32 @msleep(%struct.xbb_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @devstat_remove_entry(i32*) #1

declare dso_local i32 @xbb_close_backend(%struct.xbb_softc*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
