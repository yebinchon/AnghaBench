; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_doifelse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_doifelse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @doifelse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doifelse(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %36, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = load i8**, i8*** %3, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 2
  %11 = load i8*, i8** %10, align 8
  %12 = load i8**, i8*** %3, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 3
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @STREQ(i8* %11, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = load i8**, i8*** %3, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 4
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @pbstr(i8* %20)
  br label %37

22:                                               ; preds = %8
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8**, i8*** %3, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 5
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @pbstr(i8* %28)
  br label %37

30:                                               ; preds = %22
  %31 = load i8**, i8*** %3, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  store i8** %32, i8*** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 3
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  br label %5

37:                                               ; preds = %25, %17, %5
  ret void
}

declare dso_local i64 @STREQ(i8*, i8*) #1

declare dso_local i32 @pbstr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
