; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_add_uint_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_add_uint_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i8*, i64)* @add_uint_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_uint_config(i8* %0, i32* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @ucl_object_toint_safe(i32* %13, i64* %11)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @report_config_error(i8* %17, i32* %18, i8* %19)
  br label %21

21:                                               ; preds = %16, %5
  %22 = load i64, i64* %11, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @report_config_error(i8* %25, i32* %26, i8* %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @report_config_error(i8* %35, i32* %36, i8* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @nvlist_add_number(i32* %40, i8* %41, i64 %42)
  ret void
}

declare dso_local i32 @ucl_object_toint_safe(i32*, i64*) #1

declare dso_local i32 @report_config_error(i8*, i32*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
