; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/paste/extr_paste.c_tr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/paste/extr_paste.c_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"no delimiters specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %5, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %35, %1
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %5, align 8
  %10 = load i8, i8* %8, align 1
  store i8 %10, i8* %4, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %7
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 92
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  %19 = load i8, i8* %17, align 1
  store i8 %19, i8* %4, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %27 [
    i32 110, label %21
    i32 116, label %23
    i32 48, label %25
  ]

21:                                               ; preds = %16
  %22 = load i8*, i8** %2, align 8
  store i8 10, i8* %22, align 1
  br label %30

23:                                               ; preds = %16
  %24 = load i8*, i8** %2, align 8
  store i8 9, i8* %24, align 1
  br label %30

25:                                               ; preds = %16
  %26 = load i8*, i8** %2, align 8
  store i8 0, i8* %26, align 1
  br label %30

27:                                               ; preds = %16
  %28 = load i8, i8* %4, align 1
  %29 = load i8*, i8** %2, align 8
  store i8 %28, i8* %29, align 1
  br label %30

30:                                               ; preds = %27, %25, %23, %21
  br label %34

31:                                               ; preds = %12
  %32 = load i8, i8* %4, align 1
  %33 = load i8*, i8** %2, align 8
  store i8 %32, i8* %33, align 1
  br label %34

34:                                               ; preds = %31, %30
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
