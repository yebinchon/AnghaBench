; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_str_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_str_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cuse_str_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuse_str_filter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %48, %45, %33, %24, %15, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 97
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 %13, 122
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %2, align 8
  br label %4

18:                                               ; preds = %12, %9
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 65
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = icmp sle i32 %22, 90
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %2, align 8
  br label %4

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %3, align 4
  %29 = icmp sge i32 %28, 48
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp sle i32 %31, 57
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %2, align 8
  br label %4

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 95
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %39, %36
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %2, align 8
  br label %4

48:                                               ; preds = %42
  %49 = load i8*, i8** %2, align 8
  store i8 95, i8* %49, align 1
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %2, align 8
  br label %4

52:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
