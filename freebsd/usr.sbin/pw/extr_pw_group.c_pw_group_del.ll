; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_pw_group_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_pw_group_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userconf = type { i32 }
%struct.group = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@GID_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"C:qn:g:Y\00", align 1
@optarg = common dso_local global i8* null, align 8
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@EX_IOERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"group '%s' not available (NIS?)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"group update\00", align 1
@M_DELETE = common dso_local global i32 0, align 4
@W_GROUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"%s(%ju) removed\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"NIS maps updated\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pw_group_del(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.userconf*, align 8
  %8 = alloca %struct.group*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.userconf* null, %struct.userconf** %7, align 8
  store %struct.group* null, %struct.group** %8, align 8
  store i8* null, i8** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strspn(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @GID_MAX, align 4
  %29 = call i32 @pw_checkid(i8* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  br label %32

30:                                               ; preds = %18
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %30, %26
  br label %33

33:                                               ; preds = %32, %3
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = call i32 @getopt(i32 %35, i8** %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %12, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i32, i32* %12, align 4
  switch i32 %40, label %51 [
    i32 67, label %41
    i32 113, label %43
    i32 110, label %44
    i32 103, label %46
    i32 89, label %50
  ]

41:                                               ; preds = %39
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** %10, align 8
  br label %51

43:                                               ; preds = %39
  store i32 1, i32* %14, align 4
  br label %51

44:                                               ; preds = %39
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** %9, align 8
  br label %51

46:                                               ; preds = %39
  %47 = load i8*, i8** @optarg, align 8
  %48 = load i32, i32* @GID_MAX, align 4
  %49 = call i32 @pw_checkid(i8* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  br label %51

50:                                               ; preds = %39
  store i32 1, i32* %15, align 4
  br label %51

51:                                               ; preds = %39, %50, %46, %44, %43, %41
  br label %34

52:                                               ; preds = %34
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @_PATH_DEVNULL, align 4
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @freopen(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.group* @getgroup(i8* %60, i32 %61, i32 1)
  store %struct.group* %62, %struct.group** %8, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call %struct.userconf* @get_userconfig(i8* %63)
  store %struct.userconf* %64, %struct.userconf** %7, align 8
  %65 = load %struct.group*, %struct.group** %8, align 8
  %66 = call i32 @delgrent(%struct.group* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* @EX_IOERR, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 (i32, i8*, ...) @err(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %80

73:                                               ; preds = %59
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @EX_IOERR, align 4
  %78 = call i32 (i32, i8*, ...) @err(i32 %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %69
  %81 = load %struct.userconf*, %struct.userconf** %7, align 8
  %82 = load i32, i32* @M_DELETE, align 4
  %83 = load i32, i32* @W_GROUP, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (%struct.userconf*, i32, i32, i8*, ...) @pw_log(%struct.userconf* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %84, i32 %85)
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = call i64 (...) @nis_update()
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.userconf*, %struct.userconf** %7, align 8
  %94 = load i32, i32* @M_DELETE, align 4
  %95 = load i32, i32* @W_GROUP, align 4
  %96 = call i32 (%struct.userconf*, i32, i32, i8*, ...) @pw_log(%struct.userconf* %93, i32 %94, i32 %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %89, %80
  %98 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %98
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @pw_checkid(i8*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @freopen(i32, i8*, i32) #1

declare dso_local %struct.group* @getgroup(i8*, i32, i32) #1

declare dso_local %struct.userconf* @get_userconfig(i8*) #1

declare dso_local i32 @delgrent(%struct.group*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @pw_log(%struct.userconf*, i32, i32, i8*, ...) #1

declare dso_local i64 @nis_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
