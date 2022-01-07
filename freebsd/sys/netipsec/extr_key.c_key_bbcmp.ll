; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_bbcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_bbcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @key_bbcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_bbcmp(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %3
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %67

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 8
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  %30 = load i8, i8* %28, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %9, align 8
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %67

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 8
  store i32 %40, i32* %7, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 8, %45
  %47 = shl i32 1, %46
  %48 = sub nsw i32 %47, 1
  %49 = xor i32 %48, -1
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %10, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %53, %55
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* %10, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %56, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %67

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65, %41
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %64, %37, %18
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
