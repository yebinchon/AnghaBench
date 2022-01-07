; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_init_static_kenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_init_static_kenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dynamic_kenv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"kenv: dynamic_kenv already initialized\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"kenv: static env must be initialized or suitably sized\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"kenv: sized buffer must be initially empty\00", align 1
@md_envp = common dso_local global i8* null, align 8
@md_env_len = common dso_local global i64 0, align 8
@md_env_pos = common dso_local global i64 0, align 8
@static_env = common dso_local global i8* null, align 8
@kern_envp = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"loader_env.disabled\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"static_env.disabled\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"static_hints.disabled\00", align 1
@static_hints = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_static_kenv(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @dynamic_kenv, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp uge i64 %14, 2
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i1 [ true, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %27, %22
  %34 = phi i1 [ false, %22 ], [ %32, %27 ]
  br label %35

35:                                               ; preds = %33, %16
  %36 = phi i1 [ true, %16 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** @md_envp, align 8
  store i64 0, i64* @md_env_len, align 8
  store i64 0, i64* @md_env_pos, align 8
  %39 = load i8*, i8** @static_env, align 8
  store i8* %39, i8** @kern_envp, align 8
  %40 = call i8* @kern_getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %43, %35
  %48 = load i8*, i8** %3, align 8
  store i8* %48, i8** @md_envp, align 8
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* @md_env_len, align 8
  store i64 0, i64* @md_env_pos, align 8
  %50 = call i8* @kern_getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i8*, i8** @kern_envp, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** @kern_envp, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %57, %53, %47
  br label %63

63:                                               ; preds = %62, %43
  %64 = call i8* @kern_getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i8*, i8** @static_hints, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** @static_hints, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %71, %67, %63
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
