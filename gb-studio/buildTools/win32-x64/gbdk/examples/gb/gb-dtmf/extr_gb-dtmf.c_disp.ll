; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_disp.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DTMF = common dso_local global i32 0, align 4
@LCD_WIDTH = common dso_local global i64 0, align 8
@LCD_HIGHT = common dso_local global i32 0, align 4
@disp_tile = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @MAX_DTMF, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = call i32 (...) @clr_disp()
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %21, %1
  %16 = load i8*, i8** %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %15

24:                                               ; preds = %15
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @LCD_WIDTH, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @LCD_WIDTH, align 8
  %31 = sub i64 %29, %30
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* @LCD_WIDTH, align 8
  store i64 %32, i64* %7, align 8
  br label %35

33:                                               ; preds = %24
  store i64 0, i64* %6, align 8
  %34 = load i64, i64* %3, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %28
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i8*, i8** %2, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %42, %43
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i8, i8* %13, i64 %47
  store i8 %46, i8* %48, align 1
  br label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %36

52:                                               ; preds = %36
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i8, i8* %13, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @disp_lcd(i64 %55, i8* %13)
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 19, %57
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* @LCD_HIGHT, align 4
  %62 = load i32, i32* @disp_tile, align 4
  %63 = call i32 @set_bkg_tiles(i64 %59, i32 2, i64 %60, i32 %61, i32 %62)
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @clr_disp(...) #2

declare dso_local i32 @disp_lcd(i64, i8*) #2

declare dso_local i32 @set_bkg_tiles(i64, i32, i64, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
