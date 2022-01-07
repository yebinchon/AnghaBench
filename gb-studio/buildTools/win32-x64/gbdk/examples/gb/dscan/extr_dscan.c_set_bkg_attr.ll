; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/dscan/extr_dscan.c_set_bkg_attr.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/dscan/extr_dscan.c_set_bkg_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VBK_REG = common dso_local global i32 0, align 4
@bkgCGB = common dso_local global i32* null, align 8
@msg_tile = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_bkg_attr(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 1, i32* @VBK_REG, align 4
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %46, %5
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32*, i32** @bkgCGB, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @msg_tile, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  br label %35

35:                                               ; preds = %22
  %36 = load i64, i64* %11, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %11, align 8
  br label %18

38:                                               ; preds = %18
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %12, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* %8, align 8
  %44 = load i32*, i32** @msg_tile, align 8
  %45 = call i32 @set_bkg_tiles(i64 %39, i64 %42, i64 %43, i32 1, i32* %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %12, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %12, align 8
  br label %13

49:                                               ; preds = %13
  store i32 0, i32* @VBK_REG, align 4
  ret void
}

declare dso_local i32 @set_bkg_tiles(i64, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
