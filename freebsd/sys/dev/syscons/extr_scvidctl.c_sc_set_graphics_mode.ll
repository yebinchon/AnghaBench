; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvidctl.c_sc_set_graphics_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvidctl.c_sc_set_graphics_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i64, i32*, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.tty = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.winsize = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GRAPHICS_MODE = common dso_local global i32 0, align 4
@UNKNOWN_MODE = common dso_local global i32 0, align 4
@MOUSE_HIDDEN = common dso_local global i32 0, align 4
@PIXEL_MODE = common dso_local global i32 0, align 4
@MOUSE_VISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sc_set_graphics_mode(%struct.TYPE_14__* %0, %struct.tty* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca %struct.winsize, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.tty* %1, %struct.tty** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @vidd_get_info(%struct.TYPE_15__* %16, i32 %17, %struct.TYPE_13__* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  store i32 %21, i32* %4, align 4
  br label %129

22:                                               ; preds = %3
  %23 = call i32 (...) @spltty()
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = call i32 @sc_clean_up(%struct.TYPE_14__* %24)
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @splx(i32 %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %129

31:                                               ; preds = %22
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GRAPHICS_MODE, align 4
  %41 = call i32* @sc_render_match(%struct.TYPE_14__* %32, i32 %39, i32 %40)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @splx(i32 %44)
  %46 = load i32, i32* @ENODEV, align 4
  store i32 %46, i32* %4, align 4
  br label %129

47:                                               ; preds = %31
  %48 = load i32, i32* @UNKNOWN_MODE, align 4
  %49 = load i32, i32* @GRAPHICS_MODE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MOUSE_HIDDEN, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @PIXEL_MODE, align 4
  %58 = load i32, i32* @MOUSE_VISIBLE, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 10
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 9
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 8
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sdiv i32 %87, 2
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 2
  %93 = call i32 @sc_mouse_move(%struct.TYPE_14__* %84, i32 %88, i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %95 = call i32 @sc_init_emulator(%struct.TYPE_14__* %94, i32* null)
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @splx(i32 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = icmp eq %struct.TYPE_14__* %98, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %47
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %107 = call i32 @set_mode(%struct.TYPE_14__* %106)
  br label %108

108:                                              ; preds = %105, %47
  %109 = load i32, i32* @UNKNOWN_MODE, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.tty*, %struct.tty** %6, align 8
  %116 = icmp eq %struct.tty* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %129

118:                                              ; preds = %108
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.winsize, %struct.winsize* %9, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.winsize, %struct.winsize* %9, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = load %struct.tty*, %struct.tty** %6, align 8
  %128 = call i32 @tty_set_winsize(%struct.tty* %127, %struct.winsize* %9)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %118, %117, %43, %27, %20
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @vidd_get_info(%struct.TYPE_15__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @sc_clean_up(%struct.TYPE_14__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32* @sc_render_match(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @sc_mouse_move(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @sc_init_emulator(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @set_mode(%struct.TYPE_14__*) #1

declare dso_local i32 @tty_set_winsize(%struct.tty*, %struct.winsize*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
