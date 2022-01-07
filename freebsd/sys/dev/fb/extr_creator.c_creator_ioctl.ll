; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creator_softc = type { i32, i32, i32 }
%struct.fbcursor = type { i32, i32 }
%struct.fbtype = type { i32, i32, i32, i32, i32, i32 }

@FBTYPE_CREATOR = common dso_local global i32 0, align 4
@FB_CUR_SETCUR = common dso_local global i32 0, align 4
@CREATOR_CUREN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @creator_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creator_ioctl(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.creator_softc*, align 8
  %9 = alloca %struct.fbcursor*, align 8
  %10 = alloca %struct.fbtype*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.creator_softc*
  store %struct.creator_softc* %12, %struct.creator_softc** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %62 [
    i32 129, label %14
    i32 128, label %36
  ]

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.fbtype*
  store %struct.fbtype* %16, %struct.fbtype** %10, align 8
  %17 = load i32, i32* @FBTYPE_CREATOR, align 4
  %18 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %19 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %21 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %24 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %26 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %29 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %31 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %33 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.fbtype*, %struct.fbtype** %10, align 8
  %35 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %34, i32 0, i32 2
  store i32 0, i32* %35, align 4
  br label %67

36:                                               ; preds = %3
  %37 = load i64, i64* %7, align 8
  %38 = inttoptr i64 %37 to %struct.fbcursor*
  store %struct.fbcursor* %38, %struct.fbcursor** %9, align 8
  %39 = load %struct.fbcursor*, %struct.fbcursor** %9, align 8
  %40 = getelementptr inbounds %struct.fbcursor, %struct.fbcursor* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FB_CUR_SETCUR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %36
  %46 = load %struct.fbcursor*, %struct.fbcursor** %9, align 8
  %47 = getelementptr inbounds %struct.fbcursor, %struct.fbcursor* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %52 = call i32 @creator_cursor_enable(%struct.creator_softc* %51, i32 0)
  %53 = load i32, i32* @CREATOR_CUREN, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %56 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %61

59:                                               ; preds = %45, %36
  %60 = load i32, i32* @ENODEV, align 4
  store i32 %60, i32* %4, align 4
  br label %68

61:                                               ; preds = %50
  br label %67

62:                                               ; preds = %3
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @fb_commonioctl(i32* %63, i32 %64, i64 %65)
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %61, %14
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %62, %59
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @creator_cursor_enable(%struct.creator_softc*, i32) #1

declare dso_local i32 @fb_commonioctl(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
