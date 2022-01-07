; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_util.c_usb_make_str_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_util.c_usb_make_str_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_string_descriptor = type { i32, i32*, i32 }

@UDESC_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_make_str_desc(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_string_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.usb_string_descriptor*
  store %struct.usb_string_descriptor* %12, %struct.usb_string_descriptor** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = sdiv i32 %17, 2
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 126
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 126, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %8, align 8
  %41 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @UDESC_STRING, align 4
  %43 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %8, align 8
  %44 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %49, %35
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %8, align 8
  %51 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @USETW2(i32 %56, i32 0, i8 signext %61)
  br label %45

63:                                               ; preds = %45
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %15
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @USETW2(i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
