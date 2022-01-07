; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_is_mouse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_is_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_data = type { i32 }
%struct.hid_item = type { i32, i32, i32, i32 }

@HUP_GENERIC_DESKTOP = common dso_local global i32 0, align 4
@HUG_MOUSE = common dso_local global i32 0, align 4
@HUG_X = common dso_local global i32 0, align 4
@HIO_CONST = common dso_local global i32 0, align 4
@HIO_RELATIVE = common dso_local global i32 0, align 4
@HUG_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_is_mouse(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_data*, align 8
  %7 = alloca %struct.hid_item, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.hid_data* @hid_start_parse(i8* %10, i32 %11, i32 undef)
  store %struct.hid_data* %12, %struct.hid_data** %6, align 8
  %13 = load %struct.hid_data*, %struct.hid_data** %6, align 8
  %14 = icmp eq %struct.hid_data* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

16:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %97, %16
  %18 = load %struct.hid_data*, %struct.hid_data** %6, align 8
  %19 = call i64 @hid_get_item(%struct.hid_data* %18, %struct.hid_item* %7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %98

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %96 [
    i32 130, label %24
    i32 129, label %46
    i32 128, label %53
  ]

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %45

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %7, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HUP_GENERIC_DESKTOP, align 4
  %38 = load i32, i32* @HUG_MOUSE, align 4
  %39 = call i32 @HID_USAGE2(i32 %37, i32 %38)
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %34, %30
  br label %45

45:                                               ; preds = %44, %27
  br label %97

46:                                               ; preds = %21
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %97

53:                                               ; preds = %21
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %97

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %7, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HUP_GENERIC_DESKTOP, align 4
  %61 = load i32, i32* @HUG_X, align 4
  %62 = call i32 @HID_USAGE2(i32 %60, i32 %61)
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %7, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @HIO_CONST, align 4
  %68 = load i32, i32* @HIO_RELATIVE, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = load i32, i32* @HIO_RELATIVE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73, %64, %57
  %77 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %7, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @HUP_GENERIC_DESKTOP, align 4
  %80 = load i32, i32* @HUG_Y, align 4
  %81 = call i32 @HID_USAGE2(i32 %79, i32 %80)
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %7, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @HIO_CONST, align 4
  %87 = load i32, i32* @HIO_RELATIVE, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = load i32, i32* @HIO_RELATIVE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %92, %83, %76
  br label %97

96:                                               ; preds = %21
  br label %97

97:                                               ; preds = %96, %95, %56, %52, %45
  br label %17

98:                                               ; preds = %17
  %99 = load %struct.hid_data*, %struct.hid_data** %6, align 8
  %100 = call i32 @hid_end_parse(%struct.hid_data* %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.hid_data* @hid_start_parse(i8*, i32, i32) #1

declare dso_local i64 @hid_get_item(%struct.hid_data*, %struct.hid_item*) #1

declare dso_local i32 @HID_USAGE2(i32, i32) #1

declare dso_local i32 @hid_end_parse(%struct.hid_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
