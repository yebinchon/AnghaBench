; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mv.c_add_slash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mv.c_add_slash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @add_slash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_slash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = sub i64 %9, 1
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 47
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @st_add(i64 %16, i32 2)
  %18 = call i8* @xmalloc(i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @memcpy(i8* %19, i8* %20, i64 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  %26 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 47, i8* %26, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %5, align 8
  store i8* %30, i8** %2, align 8
  br label %33

31:                                               ; preds = %1
  %32 = load i8*, i8** %3, align 8
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %31, %15
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @st_add(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
