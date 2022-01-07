; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_getopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_getopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optind = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"aCcd:fjLlnopqtuvx:yZ1\00", align 1
@Z1_opt = common dso_local global i32 0, align 4
@a_opt = common dso_local global i32 0, align 4
@C_opt = common dso_local global i32 0, align 4
@c_opt = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@d_arg = common dso_local global i32 0, align 4
@f_opt = common dso_local global i32 0, align 4
@j_opt = common dso_local global i32 0, align 4
@L_opt = common dso_local global i32 0, align 4
@v_opt = common dso_local global i32 0, align 4
@n_opt = common dso_local global i32 0, align 4
@o_opt = common dso_local global i32 0, align 4
@q_opt = common dso_local global i32 0, align 4
@p_opt = common dso_local global i32 0, align 4
@t_opt = common dso_local global i32 0, align 4
@u_opt = common dso_local global i32 0, align 4
@exclude = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@y_str = common dso_local global i8* null, align 8
@zipinfo_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @getopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getopts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @optreset, align 4
  br label %6

6:                                                ; preds = %41, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %39 [
    i32 49, label %13
    i32 97, label %14
    i32 67, label %15
    i32 99, label %16
    i32 100, label %17
    i32 102, label %19
    i32 106, label %20
    i32 76, label %21
    i32 108, label %22
    i32 110, label %27
    i32 111, label %28
    i32 112, label %29
    i32 113, label %30
    i32 116, label %31
    i32 117, label %32
    i32 118, label %33
    i32 120, label %34
    i32 121, label %37
    i32 90, label %38
  ]

13:                                               ; preds = %11
  store i32 1, i32* @Z1_opt, align 4
  br label %41

14:                                               ; preds = %11
  store i32 1, i32* @a_opt, align 4
  br label %41

15:                                               ; preds = %11
  store i32 1, i32* @C_opt, align 4
  br label %41

16:                                               ; preds = %11
  store i32 1, i32* @c_opt, align 4
  br label %41

17:                                               ; preds = %11
  %18 = load i32, i32* @optarg, align 4
  store i32 %18, i32* @d_arg, align 4
  br label %41

19:                                               ; preds = %11
  store i32 1, i32* @f_opt, align 4
  br label %41

20:                                               ; preds = %11
  store i32 1, i32* @j_opt, align 4
  br label %41

21:                                               ; preds = %11
  store i32 1, i32* @L_opt, align 4
  br label %41

22:                                               ; preds = %11
  %23 = load i32, i32* @v_opt, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* @v_opt, align 4
  br label %26

26:                                               ; preds = %25, %22
  br label %41

27:                                               ; preds = %11
  store i32 1, i32* @n_opt, align 4
  br label %41

28:                                               ; preds = %11
  store i32 1, i32* @o_opt, align 4
  store i32 1, i32* @q_opt, align 4
  br label %41

29:                                               ; preds = %11
  store i32 1, i32* @p_opt, align 4
  br label %41

30:                                               ; preds = %11
  store i32 1, i32* @q_opt, align 4
  br label %41

31:                                               ; preds = %11
  store i32 1, i32* @t_opt, align 4
  br label %41

32:                                               ; preds = %11
  store i32 1, i32* @u_opt, align 4
  br label %41

33:                                               ; preds = %11
  store i32 2, i32* @v_opt, align 4
  br label %41

34:                                               ; preds = %11
  %35 = load i32, i32* @optarg, align 4
  %36 = call i32 @add_pattern(i32* @exclude, i32 %35)
  br label %41

37:                                               ; preds = %11
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** @y_str, align 8
  br label %41

38:                                               ; preds = %11
  store i32 1, i32* @zipinfo_mode, align 4
  br label %41

39:                                               ; preds = %11
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %38, %37, %34, %33, %32, %31, %30, %29, %28, %27, %26, %21, %20, %19, %17, %16, %15, %14, %13
  br label %6

42:                                               ; preds = %6
  %43 = load i32, i32* @optind, align 4
  ret i32 %43
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @add_pattern(i32*, i32) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
