; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efidp/extr_efidp.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efidp/extr_efidp.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"efpu\00", align 1
@longopts = common dso_local global i32 0, align 4
@flag_efi = common dso_local global i32 0, align 4
@flag_format = common dso_local global i32 0, align 4
@flag_parse = common dso_local global i32 0, align 4
@flag_unix = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Can only use one of -p (--parse), and -f (--format)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = load i32, i32* @longopts, align 4
  %10 = call i32 @getopt_long(i32 %7, i8** %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9, i32* null)
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %29

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %26 [
    i32 101, label %14
    i32 102, label %17
    i32 112, label %20
    i32 117, label %23
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @flag_efi, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @flag_efi, align 4
  br label %28

17:                                               ; preds = %12
  %18 = load i32, i32* @flag_format, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @flag_format, align 4
  br label %28

20:                                               ; preds = %12
  %21 = load i32, i32* @flag_parse, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @flag_parse, align 4
  br label %28

23:                                               ; preds = %12
  %24 = load i32, i32* @flag_unix, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @flag_unix, align 4
  br label %28

26:                                               ; preds = %12
  %27 = call i32 (...) @usage()
  br label %28

28:                                               ; preds = %26, %23, %20, %17, %14
  br label %6

29:                                               ; preds = %6
  %30 = load i64, i64* @optind, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  %35 = load i64, i64* @optind, align 8
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35
  store i8** %37, i8*** %4, align 8
  %38 = load i32, i32* %3, align 4
  %39 = icmp sge i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %29
  %43 = load i32, i32* @flag_parse, align 4
  %44 = load i32, i32* @flag_format, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @flag_efi, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @flag_unix, align 4
  %49 = add nsw i32 %47, %48
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = call i32 @warnx(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %51, %42
  ret void
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
