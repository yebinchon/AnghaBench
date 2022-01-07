; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_validate.c_apply_subsystem_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_validate.c_apply_subsystem_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"Unexpected type '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*)* @apply_subsystem_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_subsystem_defaults(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32* @nvlist_take_nvlist(i32* %14, i8* %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32* @nvlist_get_nvlist(i32* %17, i8* %18)
  store i32* %19, i32** %8, align 8
  store i8* null, i8** %10, align 8
  br label %20

20:                                               ; preds = %72, %29, %3
  %21 = load i32*, i32** %8, align 8
  %22 = call i8* @nvlist_next(i32* %21, i32* %13, i8** %10)
  store i8* %22, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @nvlist_exists(i32* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %20

30:                                               ; preds = %24
  %31 = load i32, i32* %13, align 4
  switch i32 %31, label %69 [
    i32 131, label %32
    i32 130, label %39
    i32 128, label %46
    i32 129, label %53
    i32 132, label %60
  ]

32:                                               ; preds = %30
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @nvlist_get_bool(i32* %35, i8* %36)
  %38 = call i32 @nvlist_add_bool(i32* %33, i8* %34, i32 %37)
  br label %72

39:                                               ; preds = %30
  %40 = load i32*, i32** %7, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @nvlist_get_number(i32* %42, i8* %43)
  %45 = call i32 @nvlist_add_number(i32* %40, i8* %41, i32 %44)
  br label %72

46:                                               ; preds = %30
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @nvlist_get_string(i32* %49, i8* %50)
  %52 = call i32 @nvlist_add_string(i32* %47, i8* %48, i32 %51)
  br label %72

53:                                               ; preds = %30
  %54 = load i32*, i32** %7, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32* @nvlist_get_nvlist(i32* %56, i8* %57)
  %59 = call i32 @nvlist_add_nvlist(i32* %54, i8* %55, i32* %58)
  br label %72

60:                                               ; preds = %30
  %61 = load i32*, i32** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i8* @nvlist_get_binary(i32* %61, i8* %62, i64* %11)
  store i8* %63, i8** %12, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @nvlist_add_binary(i32* %64, i8* %65, i8* %66, i64 %67)
  br label %72

69:                                               ; preds = %30
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %60, %53, %46, %39, %32
  br label %20

73:                                               ; preds = %20
  %74 = load i32*, i32** %4, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @nvlist_move_nvlist(i32* %74, i8* %75, i32* %76)
  ret void
}

declare dso_local i32* @nvlist_take_nvlist(i32*, i8*) #1

declare dso_local i32* @nvlist_get_nvlist(i32*, i8*) #1

declare dso_local i8* @nvlist_next(i32*, i32*, i8**) #1

declare dso_local i64 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @nvlist_add_bool(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_get_bool(i32*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_get_string(i32*, i8*) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i8* @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, i8*, i64) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @nvlist_move_nvlist(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
