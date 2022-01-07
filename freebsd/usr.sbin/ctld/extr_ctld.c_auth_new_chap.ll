; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_new_chap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_new_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth = type { i8*, i8* }
%struct.auth_group = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32* }

@AG_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@AG_TYPE_CHAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"cannot mix \22chap\22 authentication with other types for auth-group \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"cannot mix \22chap\22 authentication with other types for target \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth* @auth_new_chap(%struct.auth_group* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.auth*, align 8
  %5 = alloca %struct.auth_group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.auth*, align 8
  store %struct.auth_group* %0, %struct.auth_group** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.auth_group*, %struct.auth_group** %5, align 8
  %10 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AG_TYPE_UNKNOWN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i64, i64* @AG_TYPE_CHAP, align 8
  %16 = load %struct.auth_group*, %struct.auth_group** %5, align 8
  %17 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.auth_group*, %struct.auth_group** %5, align 8
  %20 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AG_TYPE_CHAP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.auth_group*, %struct.auth_group** %5, align 8
  %26 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.auth_group*, %struct.auth_group** %5, align 8
  %31 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @log_warnx(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32* %32)
  br label %41

34:                                               ; preds = %24
  %35 = load %struct.auth_group*, %struct.auth_group** %5, align 8
  %36 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @log_warnx(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  br label %41

41:                                               ; preds = %34, %29
  store %struct.auth* null, %struct.auth** %4, align 8
  br label %56

42:                                               ; preds = %18
  %43 = load %struct.auth_group*, %struct.auth_group** %5, align 8
  %44 = call %struct.auth* @auth_new(%struct.auth_group* %43)
  store %struct.auth* %44, %struct.auth** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @checked_strdup(i8* %45)
  %47 = load %struct.auth*, %struct.auth** %8, align 8
  %48 = getelementptr inbounds %struct.auth, %struct.auth* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @checked_strdup(i8* %49)
  %51 = load %struct.auth*, %struct.auth** %8, align 8
  %52 = getelementptr inbounds %struct.auth, %struct.auth* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.auth*, %struct.auth** %8, align 8
  %54 = call i32 @auth_check_secret_length(%struct.auth* %53)
  %55 = load %struct.auth*, %struct.auth** %8, align 8
  store %struct.auth* %55, %struct.auth** %4, align 8
  br label %56

56:                                               ; preds = %42, %41
  %57 = load %struct.auth*, %struct.auth** %4, align 8
  ret %struct.auth* %57
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
