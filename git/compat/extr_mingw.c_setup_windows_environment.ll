; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_setup_windows_environment.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_setup_windows_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cygwin\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"HOMEDRIVE\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"HOMEPATH\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"USERPROFILE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_windows_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_windows_environment() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.strbuf, align 8
  %3 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %0
  %7 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %7, i8** %1, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %10, i8** %1, align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i8*, i8** %1, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @setenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %15, i32 1)
  %17 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %1, align 8
  br label %18

18:                                               ; preds = %14, %11
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i8*, i8** %1, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @convert_slashes(i8* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %30

30:                                               ; preds = %28, %25
  %31 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp ne i8* %31, null
  br i1 %32, label %67, label %33

33:                                               ; preds = %30
  %34 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i8* %34, i8** %1, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = bitcast %struct.strbuf* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %38 = load i8*, i8** %1, align 8
  %39 = call i32 @strbuf_addstr(%struct.strbuf* %2, i8* %38)
  %40 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i8* %40, i8** %1, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i8*, i8** %1, align 8
  %44 = call i32 @strbuf_addstr(%struct.strbuf* %2, i8* %43)
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @is_directory(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %51, i32 1)
  br label %54

53:                                               ; preds = %42
  store i8* null, i8** %1, align 8
  br label %54

54:                                               ; preds = %53, %49
  br label %55

55:                                               ; preds = %54, %36
  %56 = call i32 @strbuf_release(%struct.strbuf* %2)
  br label %57

57:                                               ; preds = %55, %33
  %58 = load i8*, i8** %1, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i8* %61, i8** %1, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %1, align 8
  %65 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %64, i32 1)
  br label %66

66:                                               ; preds = %63, %60, %57
  br label %67

67:                                               ; preds = %66, %30
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @convert_slashes(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @is_directory(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
