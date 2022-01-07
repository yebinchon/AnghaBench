; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash_txt.c_txt_splash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash_txt.c_txt_splash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_13__*, i32, i32)* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@splash_on = common dso_local global i64 0, align 8
@V_INFO_GRAPHICS = common dso_local global i32 0, align 4
@FG_LIGHTGREY = common dso_local global i32 0, align 4
@BG_BLACK = common dso_local global i32 0, align 4
@vidsw = common dso_local global %struct.TYPE_16__** null, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @txt_splash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_splash(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = call %struct.TYPE_15__* @sc_find_softc(%struct.TYPE_13__* %8, i32* null)
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %6, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %11 = icmp eq %struct.TYPE_15__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EAGAIN, align 4
  store i32 %13, i32* %3, align 4
  br label %64

14:                                               ; preds = %2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %14
  %21 = load i64, i64* @splash_on, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @V_INFO_GRAPHICS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @EAGAIN, align 4
  store i32 %32, i32* %3, align 4
  br label %64

33:                                               ; preds = %23
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 32
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FG_LIGHTGREY, align 4
  %42 = load i32, i32* @BG_BLACK, align 4
  %43 = or i32 %41, %42
  %44 = shl i32 %43, 8
  %45 = call i32 @sc_vtb_clear(i32* %35, i32 %40, i32 %44)
  %46 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @vidsw, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %46, i64 %49
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_13__*, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32)** %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = call i32 %53(%struct.TYPE_13__* %54, i32 -1, i32 -1)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = call i32 @sc_set_border(%struct.TYPE_14__* %56, i32 0)
  %58 = load i64, i64* @TRUE, align 8
  store i64 %58, i64* @splash_on, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = call i32 @draw_text_splash(%struct.TYPE_15__* %59)
  br label %61

61:                                               ; preds = %33, %20
  store i32 0, i32* %3, align 4
  br label %64

62:                                               ; preds = %14
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* @splash_on, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %61, %31, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_15__* @sc_find_softc(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @sc_vtb_clear(i32*, i32, i32) #1

declare dso_local i32 @sc_set_border(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @draw_text_splash(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
