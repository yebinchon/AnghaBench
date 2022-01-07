; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_open_mouse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_open_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"Bluetooth Mouse\00", align 1
@UI_SET_EVBIT = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@UI_SET_RELBIT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@UI_SET_PROPBIT = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@mbuttons = common dso_local global i32* null, align 8
@UI_SET_KEYBIT = common dso_local global i32 0, align 4
@UI_DEV_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uinput_open_mouse(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @uinput_open_common(%struct.TYPE_4__* %12, i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %14, i64* %7, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %104

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @UI_SET_EVBIT, align 4
  %20 = load i32, i32* @EV_SYN, align 4
  %21 = call i64 (i64, i32, ...) @ioctl(i64 %18, i32 %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %75, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @UI_SET_EVBIT, align 4
  %26 = load i32, i32* @EV_KEY, align 4
  %27 = call i64 (i64, i32, ...) @ioctl(i64 %24, i32 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @UI_SET_EVBIT, align 4
  %32 = load i32, i32* @EV_REL, align 4
  %33 = call i64 (i64, i32, ...) @ioctl(i64 %30, i32 %31, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %75, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @UI_SET_RELBIT, align 4
  %38 = load i32, i32* @REL_X, align 4
  %39 = call i64 (i64, i32, ...) @ioctl(i64 %36, i32 %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* @UI_SET_RELBIT, align 4
  %44 = load i32, i32* @REL_Y, align 4
  %45 = call i64 (i64, i32, ...) @ioctl(i64 %42, i32 %43, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* @UI_SET_RELBIT, align 4
  %55 = load i32, i32* @REL_WHEEL, align 4
  %56 = call i64 (i64, i32, ...) @ioctl(i64 %53, i32 %54, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* @UI_SET_RELBIT, align 4
  %66 = load i32, i32* @REL_HWHEEL, align 4
  %67 = call i64 (i64, i32, ...) @ioctl(i64 %64, i32 %65, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63, %58
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* @UI_SET_PROPBIT, align 4
  %72 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %73 = call i64 (i64, i32, ...) @ioctl(i64 %70, i32 %71, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69, %63, %52, %41, %35, %29, %23, %17
  br label %104

76:                                               ; preds = %69
  store i64 0, i64* %6, align 8
  br label %77

77:                                               ; preds = %93, %76
  %78 = load i64, i64* %6, align 8
  %79 = load i32*, i32** @mbuttons, align 8
  %80 = call i64 @nitems(i32* %79)
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* @UI_SET_KEYBIT, align 4
  %85 = load i32*, i32** @mbuttons, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i64 (i64, i32, ...) @ioctl(i64 %83, i32 %84, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %104

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %6, align 8
  br label %77

96:                                               ; preds = %77
  %97 = load i64, i64* %7, align 8
  %98 = load i32, i32* @UI_DEV_CREATE, align 4
  %99 = call i64 (i64, i32, ...) @ioctl(i64 %97, i32 %98)
  %100 = icmp sge i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i64, i64* %7, align 8
  store i64 %102, i64* %3, align 8
  br label %111

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %91, %75, %16
  %105 = load i64, i64* %7, align 8
  %106 = icmp sge i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @close(i64 %108)
  br label %110

110:                                              ; preds = %107, %104
  store i64 -1, i64* %3, align 8
  br label %111

111:                                              ; preds = %110, %101
  %112 = load i64, i64* %3, align 8
  ret i64 %112
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uinput_open_common(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i64 @ioctl(i64, i32, ...) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
