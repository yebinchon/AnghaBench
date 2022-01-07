; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxd_foreach_action = type { i32*, i32 }

@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@detach_drive = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"'%s' is not a valid controller\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"'%s' is not a valid drive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @cmd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_detach(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mlxd_foreach_action, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %19 [
    i32 97, label %18
  ]

18:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  br label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @cmd_help(i32 %20, i8** %21)
  store i32 %22, i32* %3, align 4
  br label %94

23:                                               ; preds = %18
  br label %11

24:                                               ; preds = %11
  %25 = load i32, i32* @optind, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @optind, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8** %31, i8*** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %24
  %35 = load i32, i32* @detach_drive, align 4
  %36 = getelementptr inbounds %struct.mlxd_foreach_action, %struct.mlxd_foreach_action* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.mlxd_foreach_action, %struct.mlxd_foreach_action* %6, i32 0, i32 0
  store i32* %10, i32** %37, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %61, %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @ctrlrunit(i8* %47)
  store i32 %48, i32* %10, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %60

57:                                               ; preds = %42
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @mlxd_foreach_ctrlr(i32 %58, %struct.mlxd_foreach_action* %6)
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %38

64:                                               ; preds = %38
  br label %93

65:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %89, %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @driveunit(i8* %75)
  store i32 %76, i32* %10, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %88

85:                                               ; preds = %70
  %86 = load i32, i32* @detach_drive, align 4
  %87 = call i32 @mlx_foreach(i32 %86, i32* %10)
  br label %88

88:                                               ; preds = %85, %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %66

92:                                               ; preds = %66
  br label %93

93:                                               ; preds = %92, %64
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %19
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @cmd_help(i32, i8**) #1

declare dso_local i32 @ctrlrunit(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @mlxd_foreach_ctrlr(i32, %struct.mlxd_foreach_action*) #1

declare dso_local i32 @driveunit(i8*) #1

declare dso_local i32 @mlx_foreach(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
