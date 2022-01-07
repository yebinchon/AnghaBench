; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/newgrp/extr_newgrp.c_loginshell.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/newgrp/extr_newgrp.c_loginshell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32 }

@pwd = common dso_local global %struct.TYPE_4__* null, align 8
@_PATH_BSHELL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"KRBTKFILE\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@environ = common dso_local global i8** null, align 8
@LOGIN_SETPATH = common dso_local global i32 0, align 4
@LOGIN_SETUMASK = common dso_local global i32 0, align 4
@LOGIN_SETENV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @loginshell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loginshell() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwd, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %14, %0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwd, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @chdir(i8* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwd, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %22, %16
  %29 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %29, i8** %3, align 8
  %30 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %30, i8** %4, align 8
  %31 = call i8** @calloc(i32 20, i32 8)
  store i8** %31, i8*** %2, align 8
  %32 = icmp eq i8** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i8**, i8*** %2, align 8
  store i8* null, i8** %36, align 8
  %37 = load i8**, i8*** %2, align 8
  store i8** %37, i8*** @environ, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwd, align 8
  %39 = call i32* @login_getpwclass(%struct.TYPE_4__* %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwd, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwd, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @LOGIN_SETPATH, align 4
  %46 = load i32, i32* @LOGIN_SETUMASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @LOGIN_SETENV, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @setusercontext(i32* %40, %struct.TYPE_4__* %41, i32 %44, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @login_close(i32* %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwd, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %55, i32 1)
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %57, i32 1)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwd, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %61, i32 1)
  %63 = load i8*, i8** %3, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %35
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32 1)
  br label %68

68:                                               ; preds = %65, %35
  %69 = load i8*, i8** %4, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %72, i32 1)
  br label %74

74:                                               ; preds = %71, %68
  %75 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %76 = load i8*, i8** %5, align 8
  %77 = call i64 @asprintf(i8** %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 1
  store i8* null, i8** %82, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %85 = call i32 @execv(i8* %83, i8** %84)
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %86)
  ret void
}

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32* @login_getpwclass(%struct.TYPE_4__*) #1

declare dso_local i32 @setusercontext(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @login_close(i32*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @execv(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
