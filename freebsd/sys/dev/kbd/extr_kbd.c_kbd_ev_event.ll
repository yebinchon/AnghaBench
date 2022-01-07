; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_kbd_ev_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_kbd_ev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@EV_LED = common dso_local global i64 0, align 8
@CLKED = common dso_local global i32 0, align 4
@NLKED = common dso_local global i32 0, align 4
@SLKED = common dso_local global i32 0, align 4
@KDSETLED = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i64 0, align 8
@REP_DELAY = common dso_local global i64 0, align 8
@KDSETREPEAT = common dso_local global i32 0, align 4
@REP_PERIOD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kbd_ev_event(%struct.TYPE_5__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @EV_LED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = call i32 @KBD_LED_VAL(%struct.TYPE_5__* %17)
  store i32 %18, i32* %12, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i64, i64* %7, align 8
  switch i64 %19, label %26 [
    i64 130, label %20
    i64 129, label %22
    i64 128, label %24
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @CLKED, align 4
  store i32 %21, i32* %10, align 4
  br label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @NLKED, align 4
  store i32 %23, i32* %10, align 4
  br label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @SLKED, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %16, %24, %22, %20
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %38

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = load i32, i32* @KDSETLED, align 4
  %45 = ptrtoint i32* %11 to i32
  %46 = call i32 @kbdd_ioctl(%struct.TYPE_5__* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %38
  br label %90

48:                                               ; preds = %4
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @EV_REP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @REP_DELAY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = load i32, i32* @KDSETREPEAT, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %66 = ptrtoint i32* %65 to i32
  %67 = call i32 @kbdd_ioctl(%struct.TYPE_5__* %63, i32 %64, i32 %66)
  br label %89

68:                                               ; preds = %52, %48
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @EV_REP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @REP_PERIOD, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = load i32, i32* @KDSETREPEAT, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %86 = ptrtoint i32* %85 to i32
  %87 = call i32 @kbdd_ioctl(%struct.TYPE_5__* %83, i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %76, %72, %68
  br label %89

89:                                               ; preds = %88, %56
  br label %90

90:                                               ; preds = %89, %47
  ret void
}

declare dso_local i32 @KBD_LED_VAL(%struct.TYPE_5__*) #1

declare dso_local i32 @kbdd_ioctl(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
