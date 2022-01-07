; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.machfb_softc = type { i32, i32, i32, i32 }
%struct.fbcursor = type { i32, i32 }
%struct.fbtype = type { i32, i32, i32, i32, i32, i32 }

@FBTYPE_PCIMISC = common dso_local global i32 0, align 4
@FB_CUR_SETCUR = common dso_local global i32 0, align 4
@MACHFB_CUREN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i64)* @machfb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_ioctl(%struct.TYPE_4__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.machfb_softc*, align 8
  %9 = alloca %struct.fbcursor*, align 8
  %10 = alloca %struct.fbtype*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = bitcast %struct.TYPE_4__* %11 to %struct.machfb_softc*
  store %struct.machfb_softc* %12, %struct.machfb_softc** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %86 [
    i32 129, label %14
    i32 128, label %60
  ]

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.fbtype*
  store %struct.fbtype* %16, %struct.fbtype** %10, align 8
  %17 = load i32, i32* @FBTYPE_PCIMISC, align 4
  %18 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %19 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %21 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %24 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %26 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %29 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %31 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %34 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %36 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %37, 1
  br i1 %38, label %44, label %39

39:                                               ; preds = %14
  %40 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %41 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 8
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %14
  %45 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %46 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %54

47:                                               ; preds = %39
  %48 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %49 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %53 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %44
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %59 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %91

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8
  %62 = inttoptr i64 %61 to %struct.fbcursor*
  store %struct.fbcursor* %62, %struct.fbcursor** %9, align 8
  %63 = load %struct.fbcursor*, %struct.fbcursor** %9, align 8
  %64 = getelementptr inbounds %struct.fbcursor, %struct.fbcursor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FB_CUR_SETCUR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %60
  %70 = load %struct.fbcursor*, %struct.fbcursor** %9, align 8
  %71 = getelementptr inbounds %struct.fbcursor, %struct.fbcursor* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %76 = call i32 @machfb_cursor_enable(%struct.machfb_softc* %75, i32 0)
  %77 = load i32, i32* @MACHFB_CUREN, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %80 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %85

83:                                               ; preds = %69, %60
  %84 = load i32, i32* @ENODEV, align 4
  store i32 %84, i32* %4, align 4
  br label %92

85:                                               ; preds = %74
  br label %91

86:                                               ; preds = %3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @fb_commonioctl(%struct.TYPE_4__* %87, i32 %88, i64 %89)
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %85, %54
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %86, %83
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @machfb_cursor_enable(%struct.machfb_softc*, i32) #1

declare dso_local i32 @fb_commonioctl(%struct.TYPE_4__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
