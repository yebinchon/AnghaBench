; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_kbd_status_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_kbd_status_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.input_event = type { i32, i32, i32 }

@KDGETLED = common dso_local global i32 0, align 4
@led_codes = common dso_local global i32* null, align 8
@KDSETLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uinput_kbd_status_changed(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_event, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %22, 12
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @memcpy(%struct.input_event* %7, i32* %26, i32 12)
  %28 = getelementptr inbounds %struct.input_event, %struct.input_event* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %85 [
    i32 129, label %30
    i32 128, label %84
  ]

30:                                               ; preds = %3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @KDGETLED, align 4
  %35 = call i32 (i64, i32, ...) @ioctl(i64 %33, i32 %34, i32* %9)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %8, align 4
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %80, %30
  %38 = load i64, i64* %10, align 8
  %39 = load i32*, i32** @led_codes, align 8
  %40 = call i64 @nitems(i32* %39)
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %37
  %43 = load i32*, i32** @led_codes, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.input_event, %struct.input_event* %7, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.input_event, %struct.input_event* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i64, i64* %10, align 8
  %56 = trunc i64 %55 to i32
  %57 = shl i32 1, %56
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %67

60:                                               ; preds = %50
  %61 = load i64, i64* %10, align 8
  %62 = trunc i64 %61 to i32
  %63 = shl i32 1, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %60, %54
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @KDSETLED, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i64, i32, ...) @ioctl(i64 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %67
  br label %83

79:                                               ; preds = %42
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %10, align 8
  br label %37

83:                                               ; preds = %78, %37
  br label %86

84:                                               ; preds = %3
  br label %85

85:                                               ; preds = %3, %84
  br label %86

86:                                               ; preds = %85, %83
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(%struct.input_event*, i32*, i32) #1

declare dso_local i32 @ioctl(i64, i32, ...) #1

declare dso_local i64 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
