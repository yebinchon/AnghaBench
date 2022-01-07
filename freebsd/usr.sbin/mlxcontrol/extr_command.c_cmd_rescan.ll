; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_rescan.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_rescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"'%s' is not a valid controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @cmd_rescan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_rescan(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %18 [
    i32 97, label %17
  ]

17:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @cmd_help(i32 %19, i8** %20)
  store i32 %21, i32* %3, align 4
  br label %64

22:                                               ; preds = %17
  br label %10

23:                                               ; preds = %10
  %24 = load i32, i32* @optind, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @optind, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  store i8** %30, i8*** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = call i32 @mlx_foreach(i32 (i32, i32*)* @rescan_ctrlr, i32* null)
  br label %63

35:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @ctrlrunit(i8* %45)
  store i32 %46, i32* %9, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %58

55:                                               ; preds = %40
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @rescan_ctrlr(i32 %56, i32* null)
  br label %58

58:                                               ; preds = %55, %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %36

62:                                               ; preds = %36
  br label %63

63:                                               ; preds = %62, %33
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @cmd_help(i32, i8**) #1

declare dso_local i32 @mlx_foreach(i32 (i32, i32*)*, i32*) #1

declare dso_local i32 @rescan_ctrlr(i32, i32*) #1

declare dso_local i32 @ctrlrunit(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
