; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_change_cursor_shape.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_change_cursor_shape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.tty = type { i32 }

@CONS_SHAPEONLY_CURSOR = common dso_local global i32 0, align 4
@CONS_LOCAL_CURSOR = common dso_local global i32 0, align 4
@CONS_RESET_CURSOR = common dso_local global i32 0, align 4
@CONS_DEFAULT_CURSOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_change_cursor_shape(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.tty*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @CONS_SHAPEONLY_CURSOR, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %15, %4
  %18 = call i32 (...) @spltty()
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @CONS_LOCAL_CURSOR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @change_cursor_shape(%struct.TYPE_7__* %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @splx(i32 %29)
  br label %110

31:                                               ; preds = %17
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @CONS_RESET_CURSOR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %70

45:                                               ; preds = %31
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @CONS_DEFAULT_CURSOR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @sc_adjust_ca(i32* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %69

62:                                               ; preds = %45
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @sc_adjust_ca(i32* %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %50
  br label %70

70:                                               ; preds = %69, %39
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %104, %70
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = icmp slt i32 %75, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %74
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call %struct.tty* @SC_DEV(%struct.TYPE_8__* %85, i32 %86)
  store %struct.tty* %87, %struct.tty** %10, align 8
  %88 = icmp eq %struct.tty* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %104

90:                                               ; preds = %84
  %91 = load %struct.tty*, %struct.tty** %10, align 8
  %92 = call %struct.TYPE_7__* @sc_get_stat(%struct.tty* %91)
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %5, align 8
  %93 = icmp eq %struct.TYPE_7__* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %104

95:                                               ; preds = %90
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = load i32, i32* @CONS_RESET_CURSOR, align 4
  %103 = call i32 @change_cursor_shape(%struct.TYPE_7__* %101, i32 %102, i32 -1, i32 -1)
  br label %104

104:                                              ; preds = %95, %94, %89
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %74

107:                                              ; preds = %74
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @splx(i32 %108)
  br label %110

110:                                              ; preds = %107, %23
  ret void
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @change_cursor_shape(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @sc_adjust_ca(i32*, i32, i32, i32) #1

declare dso_local %struct.tty* @SC_DEV(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_7__* @sc_get_stat(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
