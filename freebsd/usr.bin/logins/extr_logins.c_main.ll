; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"adg:l:mopstux\00", align 1
@a_flag = common dso_local global i32 0, align 4
@everything = common dso_local global i32 0, align 4
@d_flag = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@g_args = common dso_local global i8* null, align 8
@l_args = common dso_local global i8* null, align 8
@m_flag = common dso_local global i32 0, align 4
@o_flag = common dso_local global i32 0, align 4
@p_flag = common dso_local global i32 0, align 4
@s_flag = common dso_local global i32 0, align 4
@t_flag = common dso_local global i32 0, align 4
@u_flag = common dso_local global i32 0, align 4
@x_flag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %27 [
    i32 97, label %14
    i32 100, label %15
    i32 103, label %16
    i32 108, label %18
    i32 109, label %20
    i32 111, label %21
    i32 112, label %22
    i32 115, label %23
    i32 116, label %24
    i32 117, label %25
    i32 120, label %26
  ]

14:                                               ; preds = %12
  store i32 1, i32* @a_flag, align 4
  br label %29

15:                                               ; preds = %12
  store i32 0, i32* @everything, align 4
  store i32 1, i32* @d_flag, align 4
  br label %29

16:                                               ; preds = %12
  store i32 0, i32* @everything, align 4
  %17 = load i8*, i8** @optarg, align 8
  store i8* %17, i8** @g_args, align 8
  br label %29

18:                                               ; preds = %12
  store i32 0, i32* @everything, align 4
  %19 = load i8*, i8** @optarg, align 8
  store i8* %19, i8** @l_args, align 8
  br label %29

20:                                               ; preds = %12
  store i32 1, i32* @m_flag, align 4
  br label %29

21:                                               ; preds = %12
  store i32 1, i32* @o_flag, align 4
  br label %29

22:                                               ; preds = %12
  store i32 0, i32* @everything, align 4
  store i32 1, i32* @p_flag, align 4
  br label %29

23:                                               ; preds = %12
  store i32 0, i32* @everything, align 4
  store i32 1, i32* @s_flag, align 4
  br label %29

24:                                               ; preds = %12
  store i32 1, i32* @t_flag, align 4
  br label %29

25:                                               ; preds = %12
  store i32 0, i32* @everything, align 4
  store i32 1, i32* @u_flag, align 4
  br label %29

26:                                               ; preds = %12
  store i32 1, i32* @x_flag, align 4
  br label %29

27:                                               ; preds = %12
  %28 = call i32 (...) @usage()
  br label %29

29:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %18, %16, %15, %14
  br label %7

30:                                               ; preds = %7
  %31 = load i64, i64* @optind, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load i64, i64* @optind, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36
  store i8** %38, i8*** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %30
  %44 = call i32 (...) @get_groups()
  %45 = call i32 (...) @get_users()
  %46 = call i32 (...) @select_users()
  %47 = call i32 (...) @sort_users()
  %48 = call i32 (...) @list_users()
  %49 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @get_groups(...) #1

declare dso_local i32 @get_users(...) #1

declare dso_local i32 @select_users(...) #1

declare dso_local i32 @sort_users(...) #1

declare dso_local i32 @list_users(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
