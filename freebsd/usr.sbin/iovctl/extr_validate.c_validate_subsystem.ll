; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_validate.c_validate_subsystem.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_validate.c_validate_subsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REQUIRED_SCHEMA_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Required parameter '%s' not found in '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i8*)* @validate_subsystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_subsystem(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32* @nvlist_get_nvlist(i32* %15, i8* %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @nvlist_get_nvlist(i32* %18, i8* %19)
  store i32* %20, i32** %10, align 8
  store i8* null, i8** %13, align 8
  br label %21

21:                                               ; preds = %43, %4
  %22 = load i32*, i32** %10, align 8
  %23 = call i8* @nvlist_next(i32* %22, i32* %14, i8** %13)
  store i8* %23, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load i32*, i32** %10, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32* @nvlist_get_nvlist(i32* %26, i8* %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @REQUIRED_SCHEMA_NAME, align 4
  %31 = call i64 @dnvlist_get_bool(i32* %29, i32 %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load i32*, i32** %9, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @nvlist_exists(i32* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %42, %25
  br label %21

44:                                               ; preds = %21
  ret void
}

declare dso_local i32* @nvlist_get_nvlist(i32*, i8*) #1

declare dso_local i8* @nvlist_next(i32*, i32*, i8**) #1

declare dso_local i64 @dnvlist_get_bool(i32*, i32, i32) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
