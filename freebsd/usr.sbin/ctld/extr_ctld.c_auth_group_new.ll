; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_group_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_group_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_group = type { %struct.conf*, i32, i32, i32, i32 }
%struct.conf = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"duplicated auth-group \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@ag_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth_group* @auth_group_new(%struct.conf* %0, i8* %1) #0 {
  %3 = alloca %struct.auth_group*, align 8
  %4 = alloca %struct.conf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.auth_group*, align 8
  store %struct.conf* %0, %struct.conf** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.conf*, %struct.conf** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.auth_group* @auth_group_find(%struct.conf* %10, i8* %11)
  store %struct.auth_group* %12, %struct.auth_group** %6, align 8
  %13 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %14 = icmp ne %struct.auth_group* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @log_warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %16)
  store %struct.auth_group* null, %struct.auth_group** %3, align 8
  br label %52

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %2
  %20 = call %struct.auth_group* @calloc(i32 1, i32 24)
  store %struct.auth_group* %20, %struct.auth_group** %6, align 8
  %21 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %22 = icmp eq %struct.auth_group* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @checked_strdup(i8* %29)
  %31 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %32 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %35 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %34, i32 0, i32 3
  %36 = call i32 @TAILQ_INIT(i32* %35)
  %37 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %38 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %37, i32 0, i32 2
  %39 = call i32 @TAILQ_INIT(i32* %38)
  %40 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %41 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %40, i32 0, i32 1
  %42 = call i32 @TAILQ_INIT(i32* %41)
  %43 = load %struct.conf*, %struct.conf** %4, align 8
  %44 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %45 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %44, i32 0, i32 0
  store %struct.conf* %43, %struct.conf** %45, align 8
  %46 = load %struct.conf*, %struct.conf** %4, align 8
  %47 = getelementptr inbounds %struct.conf, %struct.conf* %46, i32 0, i32 0
  %48 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %49 = load i32, i32* @ag_next, align 4
  %50 = call i32 @TAILQ_INSERT_TAIL(i32* %47, %struct.auth_group* %48, i32 %49)
  %51 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  store %struct.auth_group* %51, %struct.auth_group** %3, align 8
  br label %52

52:                                               ; preds = %33, %15
  %53 = load %struct.auth_group*, %struct.auth_group** %3, align 8
  ret %struct.auth_group* %53
}

declare dso_local %struct.auth_group* @auth_group_find(%struct.conf*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

declare dso_local %struct.auth_group* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @checked_strdup(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.auth_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
