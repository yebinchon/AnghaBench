; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_kbd_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_kbd_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32, i32)*, i32 }

@keyboards = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@keyboard = common dso_local global %struct.TYPE_9__** null, align 8
@KBDIO_UNLOADING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@kbdsw = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kbd_unregister(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @keyboards, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @ENOENT, align 4
  store i32 %17, i32* %2, align 4
  br label %76

18:                                               ; preds = %10
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @keyboard, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = icmp ne %struct.TYPE_9__* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %2, align 4
  br label %76

29:                                               ; preds = %18
  %30 = call i32 (...) @spltty()
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = call i64 @KBD_IS_BUSY(%struct.TYPE_9__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load i32, i32* @KBDIO_UNLOADING, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %38(%struct.TYPE_9__* %39, i32 %40, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @splx(i32 %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %76

52:                                               ; preds = %34
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = call i64 @KBD_IS_BUSY(%struct.TYPE_9__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @splx(i32 %57)
  %59 = load i32, i32* @EBUSY, align 4
  store i32 %59, i32* %2, align 4
  br label %76

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %29
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = call i32 @KBD_INVALID(%struct.TYPE_9__* %62)
  %64 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @keyboard, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %64, i64 %67
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %68, align 8
  %69 = load i32**, i32*** @kbdsw, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @splx(i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %61, %56, %48, %27, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @spltty(...) #1

declare dso_local i64 @KBD_IS_BUSY(%struct.TYPE_9__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @KBD_INVALID(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
