; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"qv\00", align 1
@controller_print = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"'%s' is not a valid drive\00", align 1
@status_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @cmd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_status(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %10

10:                                               ; preds = %23, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %19 [
    i32 113, label %17
    i32 118, label %18
  ]

17:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %23

18:                                               ; preds = %15
  store i32 2, i32* %7, align 4
  br label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @cmd_help(i32 %20, i8** %21)
  store i32 %22, i32* %3, align 4
  br label %68

23:                                               ; preds = %18, %17
  br label %10

24:                                               ; preds = %10
  %25 = load i32, i32* @optind, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @optind, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8** %31, i8*** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* @controller_print, align 4
  %36 = call i32 @mlx_foreach(i32 %35, i32* %7)
  %37 = call i32 @mlxd_foreach(i32 (i32, i32*)* @status_print, i32* %7)
  br label %66

38:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @driveunit(i8* %48)
  store i32 %49, i32* %9, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %61

58:                                               ; preds = %43
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @status_print(i32 %59, i32* %7)
  br label %61

61:                                               ; preds = %58, %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %39

65:                                               ; preds = %39
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i32, i32* @status_result, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %19
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @cmd_help(i32, i8**) #1

declare dso_local i32 @mlx_foreach(i32, i32*) #1

declare dso_local i32 @mlxd_foreach(i32 (i32, i32*)*, i32*) #1

declare dso_local i32 @status_print(i32, i32*) #1

declare dso_local i32 @driveunit(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
