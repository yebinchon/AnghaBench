; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_pw_group_show.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_pw_group_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i8*, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"nogroup\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@__const.pw_group_show.fakegroup = private unnamed_addr constant %struct.group { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32* null }, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@GID_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"C:qn:g:FPa\00", align 1
@optarg = common dso_local global i8* null, align 8
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pw_group_show(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.group*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.group, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.group* null, %struct.group** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %17 = bitcast %struct.group* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.group* @__const.pw_group_show.fakegroup to i8*), i64 32, i1 false)
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strspn(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @GID_MAX, align 4
  %31 = call i32 @pw_checkid(i8* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  br label %34

32:                                               ; preds = %20
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %32, %28
  br label %35

35:                                               ; preds = %34, %3
  br label %36

36:                                               ; preds = %54, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i8**, i8*** %6, align 8
  %39 = call i32 @getopt(i32 %37, i8** %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %39, i32* %11, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  switch i32 %42, label %54 [
    i32 67, label %43
    i32 113, label %44
    i32 110, label %45
    i32 103, label %47
    i32 70, label %51
    i32 80, label %52
    i32 97, label %53
  ]

43:                                               ; preds = %41
  br label %54

44:                                               ; preds = %41
  store i32 1, i32* %14, align 4
  br label %54

45:                                               ; preds = %41
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** %9, align 8
  br label %54

47:                                               ; preds = %41
  %48 = load i8*, i8** @optarg, align 8
  %49 = load i32, i32* @GID_MAX, align 4
  %50 = call i32 @pw_checkid(i8* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  br label %54

51:                                               ; preds = %41
  store i32 1, i32* %13, align 4
  br label %54

52:                                               ; preds = %41
  store i32 1, i32* %15, align 4
  br label %54

53:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %41, %53, %52, %51, %47, %45, %44, %43
  br label %36

55:                                               ; preds = %36
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @_PATH_DEVNULL, align 4
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @freopen(i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = call i32 (...) @SETGRENT()
  br label %67

67:                                               ; preds = %70, %65
  %68 = call %struct.group* (...) @GETGRENT()
  store %struct.group* %68, %struct.group** %8, align 8
  %69 = icmp ne %struct.group* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.group*, %struct.group** %8, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @print_group(%struct.group* %71, i32 %72)
  br label %67

74:                                               ; preds = %67
  %75 = call i32 (...) @ENDGRENT()
  %76 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %76, i32* %4, align 4
  br label %92

77:                                               ; preds = %62
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call %struct.group* @getgroup(i8* %78, i32 %79, i32 %83)
  store %struct.group* %84, %struct.group** %8, align 8
  %85 = load %struct.group*, %struct.group** %8, align 8
  %86 = icmp eq %struct.group* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store %struct.group* %16, %struct.group** %8, align 8
  br label %88

88:                                               ; preds = %87, %77
  %89 = load %struct.group*, %struct.group** %8, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @print_group(%struct.group* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %74
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i32 @pw_checkid(i8*, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @freopen(i32, i8*, i32) #2

declare dso_local i32 @SETGRENT(...) #2

declare dso_local %struct.group* @GETGRENT(...) #2

declare dso_local i32 @print_group(%struct.group*, i32) #2

declare dso_local i32 @ENDGRENT(...) #2

declare dso_local %struct.group* @getgroup(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
