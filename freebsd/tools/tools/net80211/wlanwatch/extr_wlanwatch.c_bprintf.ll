; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwatch/extr_wlanwatch.c_bprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwatch/extr_wlanwatch.c_bprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @bprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bprintf(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %67

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %60, %12
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %6, align 8
  %16 = load i8, i8* %14, align 1
  %17 = sext i8 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 1
  %23 = shl i32 1, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 60, i32* %7, align 4
  br label %31

30:                                               ; preds = %26
  store i32 44, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %7, align 4
  %33 = trunc i32 %32 to i8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @putc(i8 signext %33, i32* %34)
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %46, %31
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = icmp sgt i32 %39, 32
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @putc(i8 signext %43, i32* %44)
  br label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  br label %36

49:                                               ; preds = %36
  br label %60

50:                                               ; preds = %19
  br label %51

51:                                               ; preds = %56, %50
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sgt i32 %54, 32
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  br label %51

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %49
  br label %13

61:                                               ; preds = %13
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @putc(i8 signext 62, i32* %65)
  br label %67

67:                                               ; preds = %11, %64, %61
  ret void
}

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
