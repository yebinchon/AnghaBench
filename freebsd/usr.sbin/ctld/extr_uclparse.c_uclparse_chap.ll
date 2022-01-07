; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_chap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_group = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.auth = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@UCL_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"chap section in auth-group \22%s\22 is missing \22user\22 string key\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"chap section in auth-group \22%s\22 is missing \22secret\22 string key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_group*, %struct.TYPE_6__*)* @uclparse_chap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclparse_chap(%struct.auth_group* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_group*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.auth*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.auth_group* %0, %struct.auth_group** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = call %struct.TYPE_6__* @ucl_object_find_key(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UCL_STRING, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13, %2
  %20 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %21 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @log_warnx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 1, i32* %3, align 4
  br label %51

24:                                               ; preds = %13
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = call %struct.TYPE_6__* @ucl_object_find_key(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %8, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UCL_STRING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29, %24
  %36 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %37 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @log_warnx(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = call i32 @ucl_object_tostring(%struct.TYPE_6__* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = call i32 @ucl_object_tostring(%struct.TYPE_6__* %44)
  %46 = call %struct.auth* @auth_new_chap(%struct.auth_group* %41, i32 %43, i32 %45)
  store %struct.auth* %46, %struct.auth** %6, align 8
  %47 = load %struct.auth*, %struct.auth** %6, align 8
  %48 = icmp eq %struct.auth* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_6__* @ucl_object_find_key(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i32) #1

declare dso_local %struct.auth* @auth_new_chap(%struct.auth_group*, i32, i32) #1

declare dso_local i32 @ucl_object_tostring(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
