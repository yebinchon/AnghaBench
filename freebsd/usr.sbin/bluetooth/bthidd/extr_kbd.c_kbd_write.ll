; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_kbd.c_kbd_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_kbd.c_kbd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xsize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i64)* @kbd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kbd_write(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [64 x i64], align 16
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = getelementptr inbounds [64 x i64], [64 x i64]* %13, i64 0, i64 0
  store i64* %14, i64** %10, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 64
  store i64* %16, i64** %11, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %52, %35, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @xsize, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @bit_test(i32* %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = call i64 @kbd_xlate(i64 %28, i64 %29, i64* %30, i64* %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds [64 x i64], [64 x i64]* %13, i64 0, i64 0
  %38 = load i64*, i64** %10, align 8
  %39 = getelementptr inbounds [64 x i64], [64 x i64]* %13, i64 0, i64 0
  %40 = ptrtoint i64* %38 to i64
  %41 = ptrtoint i64* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 8
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @write(i64 %36, i64* %37, i32 %45)
  %47 = getelementptr inbounds [64 x i64], [64 x i64]* %13, i64 0, i64 0
  store i64* %47, i64** %10, align 8
  br label %18

48:                                               ; preds = %27
  %49 = load i64, i64* %12, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 %49
  store i64* %51, i64** %10, align 8
  br label %52

52:                                               ; preds = %48, %22
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %18

55:                                               ; preds = %18
  %56 = load i64*, i64** %10, align 8
  %57 = getelementptr inbounds [64 x i64], [64 x i64]* %13, i64 0, i64 0
  %58 = icmp ne i64* %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds [64 x i64], [64 x i64]* %13, i64 0, i64 0
  %62 = load i64*, i64** %10, align 8
  %63 = getelementptr inbounds [64 x i64], [64 x i64]* %13, i64 0, i64 0
  %64 = ptrtoint i64* %62 to i64
  %65 = ptrtoint i64* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 8
  %68 = mul i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @write(i64 %60, i64* %61, i32 %69)
  br label %71

71:                                               ; preds = %59, %55
  ret void
}

declare dso_local i64 @bit_test(i32*, i64) #1

declare dso_local i64 @kbd_xlate(i64, i64, i64*, i64*) #1

declare dso_local i32 @write(i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
