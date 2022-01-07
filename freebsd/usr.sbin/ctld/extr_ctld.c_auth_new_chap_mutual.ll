; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_new_chap_mutual.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_new_chap_mutual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth = type { i8*, i8*, i8*, i8* }
%struct.auth_group = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32* }

@AG_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@AG_TYPE_CHAP_MUTUAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"cannot mix \22chap-mutual\22 authentication with other types for auth-group \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"cannot mix \22chap-mutual\22 authentication with other types for target \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth* @auth_new_chap_mutual(%struct.auth_group* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.auth*, align 8
  %7 = alloca %struct.auth_group*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.auth*, align 8
  store %struct.auth_group* %0, %struct.auth_group** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.auth_group*, %struct.auth_group** %7, align 8
  %14 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AG_TYPE_UNKNOWN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i64, i64* @AG_TYPE_CHAP_MUTUAL, align 8
  %20 = load %struct.auth_group*, %struct.auth_group** %7, align 8
  %21 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %5
  %23 = load %struct.auth_group*, %struct.auth_group** %7, align 8
  %24 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AG_TYPE_CHAP_MUTUAL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.auth_group*, %struct.auth_group** %7, align 8
  %30 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.auth_group*, %struct.auth_group** %7, align 8
  %35 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @log_warnx(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32* %36)
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.auth_group*, %struct.auth_group** %7, align 8
  %40 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @log_warnx(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  br label %45

45:                                               ; preds = %38, %33
  store %struct.auth* null, %struct.auth** %6, align 8
  br label %68

46:                                               ; preds = %22
  %47 = load %struct.auth_group*, %struct.auth_group** %7, align 8
  %48 = call %struct.auth* @auth_new(%struct.auth_group* %47)
  store %struct.auth* %48, %struct.auth** %12, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i8* @checked_strdup(i8* %49)
  %51 = load %struct.auth*, %struct.auth** %12, align 8
  %52 = getelementptr inbounds %struct.auth, %struct.auth* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i8* @checked_strdup(i8* %53)
  %55 = load %struct.auth*, %struct.auth** %12, align 8
  %56 = getelementptr inbounds %struct.auth, %struct.auth* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i8* @checked_strdup(i8* %57)
  %59 = load %struct.auth*, %struct.auth** %12, align 8
  %60 = getelementptr inbounds %struct.auth, %struct.auth* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i8* @checked_strdup(i8* %61)
  %63 = load %struct.auth*, %struct.auth** %12, align 8
  %64 = getelementptr inbounds %struct.auth, %struct.auth* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.auth*, %struct.auth** %12, align 8
  %66 = call i32 @auth_check_secret_length(%struct.auth* %65)
  %67 = load %struct.auth*, %struct.auth** %12, align 8
  store %struct.auth* %67, %struct.auth** %6, align 8
  br label %68

68:                                               ; preds = %46, %45
  %69 = load %struct.auth*, %struct.auth** %6, align 8
  ret %struct.auth* %69
}

declare dso_local i32 @log_warnx(i8*, i32*) #1

declare dso_local %struct.auth* @auth_new(%struct.auth_group*) #1

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local i32 @auth_check_secret_length(%struct.auth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
