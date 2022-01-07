; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_disp.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_disp.c"
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
  %12 = load i32, i32* @MAX_DTMF, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = call i32 (...) @clr_disp()
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %23, %1
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %17

26:                                               ; preds = %17
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @LCD_WIDTH, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @LCD_WIDTH, align 8
  %33 = sub i64 %31, %32
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* @LCD_WIDTH, align 8
  store i64 %34, i64* %7, align 8
  br label %37

35:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  %36 = load i64, i64* %3, align 8
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %35, %30
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i8*, i8** %2, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %44, %45
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i8, i8* %15, i64 %49
  store i8 %48, i8* %50, align 1
  br label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %38

54:                                               ; preds = %38
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i8, i8* %15, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @disp_lcd(i64 %57, i8* %15)
  %59 = load i64, i64* %7, align 8
  %60 = sub i64 19, %59
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* @LCD_HIGHT, align 4
  %64 = load i32, i32* @disp_tile, align 4
  %65 = call i32 @set_bkg_tiles(i64 %61, i32 2, i64 %62, i32 %63, i32 %64)
  %66 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %66)
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
