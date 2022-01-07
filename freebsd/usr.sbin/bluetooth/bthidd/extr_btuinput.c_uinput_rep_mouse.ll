; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_rep_mouse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_rep_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVDEV_RCPT_HW_MOUSE = common dso_local global i64 0, align 8
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@mbuttons = common dso_local global i32* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@SYN_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uinput_rep_mouse(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i64 (...) @uinput_get_rcpt_mask()
  store i64 %23, i64* %17, align 8
  %24 = load i64, i64* %17, align 8
  %25 = load i64, i64* @EVDEV_RCPT_HW_MOUSE, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %7
  store i64 0, i64* %8, align 8
  br label %121

29:                                               ; preds = %7
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @EV_REL, align 4
  %35 = load i32, i32* @REL_X, align 4
  %36 = load i64, i64* %10, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @uinput_write_event(i64 %33, i32 %34, i32 %35, i32 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %74, label %40

40:                                               ; preds = %32, %29
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* @EV_REL, align 4
  %46 = load i32, i32* @REL_Y, align 4
  %47 = load i64, i64* %11, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i64 @uinput_write_event(i64 %44, i32 %45, i32 %46, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %43, %40
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* @EV_REL, align 4
  %57 = load i32, i32* @REL_WHEEL, align 4
  %58 = load i64, i64* %12, align 8
  %59 = sub nsw i64 0, %58
  %60 = trunc i64 %59 to i32
  %61 = call i64 @uinput_write_event(i64 %55, i32 %56, i32 %57, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %54, %51
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i64, i64* %9, align 8
  %68 = load i32, i32* @EV_REL, align 4
  %69 = load i32, i32* @REL_HWHEEL, align 4
  %70 = load i64, i64* %13, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i64 @uinput_write_event(i64 %67, i32 %68, i32 %69, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66, %54, %43, %32
  store i64 -1, i64* %8, align 8
  br label %121

75:                                               ; preds = %66, %63
  store i64 0, i64* %16, align 8
  br label %76

76:                                               ; preds = %110, %75
  %77 = load i64, i64* %16, align 8
  %78 = load i32*, i32** @mbuttons, align 8
  %79 = call i64 @nitems(i32* %78)
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %81, label %113

81:                                               ; preds = %76
  %82 = load i64, i64* %16, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 1, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %18, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %18, align 8
  %88 = and i64 %86, %87
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %18, align 8
  %91 = and i64 %89, %90
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %110

94:                                               ; preds = %81
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* @EV_KEY, align 4
  %97 = load i32*, i32** @mbuttons, align 8
  %98 = load i64, i64* %16, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %18, align 8
  %103 = and i64 %101, %102
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i64 @uinput_write_event(i64 %95, i32 %96, i32 %100, i32 %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  store i64 -1, i64* %8, align 8
  br label %121

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109, %93
  %111 = load i64, i64* %16, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %16, align 8
  br label %76

113:                                              ; preds = %76
  %114 = load i64, i64* %9, align 8
  %115 = load i32, i32* @EV_SYN, align 4
  %116 = load i32, i32* @SYN_REPORT, align 4
  %117 = call i64 @uinput_write_event(i64 %114, i32 %115, i32 %116, i32 0)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i64 -1, i64* %8, align 8
  br label %121

120:                                              ; preds = %113
  store i64 0, i64* %8, align 8
  br label %121

121:                                              ; preds = %120, %119, %108, %74, %28
  %122 = load i64, i64* %8, align 8
  ret i64 %122
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uinput_get_rcpt_mask(...) #1

declare dso_local i64 @uinput_write_event(i64, i32, i32, i32) #1

declare dso_local i64 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
