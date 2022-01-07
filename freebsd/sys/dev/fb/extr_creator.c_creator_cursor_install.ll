; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_cursor_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_cursor_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creator_softc = type { i32 }

@FFB_DAC = common dso_local global i32 0, align 4
@FFB_DAC_TYPE2 = common dso_local global i32 0, align 4
@FFB_DAC_CUR_COLOR1 = common dso_local global i32 0, align 4
@FFB_DAC_VALUE2 = common dso_local global i32 0, align 4
@FFB_DAC_CUR_BITMAP_P0 = common dso_local global i32 0, align 4
@FFB_DAC_CUR_BITMAP_P1 = common dso_local global i32 0, align 4
@creator_mouse_pointer = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.creator_softc*)* @creator_cursor_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @creator_cursor_install(%struct.creator_softc* %0) #0 {
  %2 = alloca %struct.creator_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.creator_softc* %0, %struct.creator_softc** %2, align 8
  %5 = load %struct.creator_softc*, %struct.creator_softc** %2, align 8
  %6 = call i32 @creator_cursor_enable(%struct.creator_softc* %5, i32 0)
  %7 = load %struct.creator_softc*, %struct.creator_softc** %2, align 8
  %8 = load i32, i32* @FFB_DAC, align 4
  %9 = load i32, i32* @FFB_DAC_TYPE2, align 4
  %10 = load i32, i32* @FFB_DAC_CUR_COLOR1, align 4
  %11 = call i32 @FFB_WRITE(%struct.creator_softc* %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.creator_softc*, %struct.creator_softc** %2, align 8
  %13 = load i32, i32* @FFB_DAC, align 4
  %14 = load i32, i32* @FFB_DAC_VALUE2, align 4
  %15 = call i32 @FFB_WRITE(%struct.creator_softc* %12, i32 %13, i32 %14, i32 16777215)
  %16 = load %struct.creator_softc*, %struct.creator_softc** %2, align 8
  %17 = load i32, i32* @FFB_DAC, align 4
  %18 = load i32, i32* @FFB_DAC_VALUE2, align 4
  %19 = call i32 @FFB_WRITE(%struct.creator_softc* %16, i32 %17, i32 %18, i32 0)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %66, %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %69

23:                                               ; preds = %20
  %24 = load %struct.creator_softc*, %struct.creator_softc** %2, align 8
  %25 = load i32, i32* @FFB_DAC, align 4
  %26 = load i32, i32* @FFB_DAC_TYPE2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @FFB_DAC_CUR_BITMAP_P0, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @FFB_DAC_CUR_BITMAP_P1, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i32 @FFB_WRITE(%struct.creator_softc* %24, i32 %25, i32 %26, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %62, %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 64
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load %struct.creator_softc*, %struct.creator_softc** %2, align 8
  %41 = load i32, i32* @FFB_DAC, align 4
  %42 = load i32, i32* @FFB_DAC_VALUE2, align 4
  %43 = load i32**, i32*** @creator_mouse_pointer, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @FFB_WRITE(%struct.creator_softc* %40, i32 %41, i32 %42, i32 %49)
  %51 = load %struct.creator_softc*, %struct.creator_softc** %2, align 8
  %52 = load i32, i32* @FFB_DAC, align 4
  %53 = load i32, i32* @FFB_DAC_VALUE2, align 4
  %54 = load i32**, i32*** @creator_mouse_pointer, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @FFB_WRITE(%struct.creator_softc* %51, i32 %52, i32 %53, i32 %60)
  br label %62

62:                                               ; preds = %39
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %36

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %20

69:                                               ; preds = %20
  ret void
}

declare dso_local i32 @creator_cursor_enable(%struct.creator_softc*, i32) #1

declare dso_local i32 @FFB_WRITE(%struct.creator_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
