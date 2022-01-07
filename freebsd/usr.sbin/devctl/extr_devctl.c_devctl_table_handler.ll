; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/devctl/extr_devctl.c_devctl_table_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/devctl/extr_devctl.c_devctl_table_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devctl_command = type { i32 (i32, i8**)*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"The %s command requires a sub-command.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s is not a valid sub-command of %s.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devctl_command**, %struct.devctl_command**, i32, i8**)* @devctl_table_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devctl_table_handler(%struct.devctl_command** %0, %struct.devctl_command** %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devctl_command**, align 8
  %7 = alloca %struct.devctl_command**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.devctl_command**, align 8
  store %struct.devctl_command** %0, %struct.devctl_command*** %6, align 8
  store %struct.devctl_command** %1, %struct.devctl_command*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i8**, i8*** %9, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %58

19:                                               ; preds = %4
  %20 = load %struct.devctl_command**, %struct.devctl_command*** %6, align 8
  store %struct.devctl_command** %20, %struct.devctl_command*** %10, align 8
  br label %21

21:                                               ; preds = %46, %19
  %22 = load %struct.devctl_command**, %struct.devctl_command*** %10, align 8
  %23 = load %struct.devctl_command**, %struct.devctl_command*** %7, align 8
  %24 = icmp ult %struct.devctl_command** %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load %struct.devctl_command**, %struct.devctl_command*** %10, align 8
  %27 = load %struct.devctl_command*, %struct.devctl_command** %26, align 8
  %28 = getelementptr inbounds %struct.devctl_command, %struct.devctl_command* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i8**, i8*** %9, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i32 %29, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  %36 = load %struct.devctl_command**, %struct.devctl_command*** %10, align 8
  %37 = load %struct.devctl_command*, %struct.devctl_command** %36, align 8
  %38 = getelementptr inbounds %struct.devctl_command, %struct.devctl_command* %37, i32 0, i32 0
  %39 = load i32 (i32, i8**)*, i32 (i32, i8**)** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i8**, i8*** %9, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = call i32 %39(i32 %41, i8** %43)
  store i32 %44, i32* %5, align 4
  br label %58

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.devctl_command**, %struct.devctl_command*** %10, align 8
  %48 = getelementptr inbounds %struct.devctl_command*, %struct.devctl_command** %47, i32 1
  store %struct.devctl_command** %48, %struct.devctl_command*** %10, align 8
  br label %21

49:                                               ; preds = %21
  %50 = load i8**, i8*** %9, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i8**, i8*** %9, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %55)
  %57 = load i32, i32* @ENOENT, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %49, %35, %13
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
