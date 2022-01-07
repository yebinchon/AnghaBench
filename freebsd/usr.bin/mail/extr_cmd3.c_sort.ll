; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@diction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  store i8** %4, i8*** %3, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  %11 = load i8**, i8*** %3, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** %3, align 8
  br label %5

13:                                               ; preds = %5
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8**, i8*** %2, align 8
  %16 = ptrtoint i8** %14 to i64
  %17 = ptrtoint i8** %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp slt i64 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %33

22:                                               ; preds = %13
  %23 = load i8**, i8*** %2, align 8
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8**, i8*** %2, align 8
  %26 = ptrtoint i8** %24 to i64
  %27 = ptrtoint i8** %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @diction, align 4
  %32 = call i32 @qsort(i8** %23, i32 %30, i32 8, i32 %31)
  br label %33

33:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @qsort(i8**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
