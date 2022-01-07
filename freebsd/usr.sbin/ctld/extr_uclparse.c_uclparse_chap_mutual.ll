; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_chap_mutual.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_chap_mutual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_group = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.auth = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@UCL_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"chap-mutual section in auth-group \22%s\22 is missing \22user\22 string key\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"chap-mutual section in auth-group \22%s\22 is missing \22secret\22 string key\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"mutual-user\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"chap-mutual section in auth-group \22%s\22 is missing \22mutual-user\22 string key\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"mutual-secret\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"chap-mutual section in auth-group \22%s\22 is missing \22mutual-secret\22 string key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_group*, %struct.TYPE_6__*)* @uclparse_chap_mutual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclparse_chap_mutual(%struct.auth_group* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_group*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.auth*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.auth_group* %0, %struct.auth_group** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call %struct.TYPE_6__* @ucl_object_find_key(%struct.TYPE_6__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UCL_STRING, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15, %2
  %22 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %23 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @log_warnx(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 1, i32* %3, align 4
  br label %89

26:                                               ; preds = %15
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = call %struct.TYPE_6__* @ucl_object_find_key(%struct.TYPE_6__* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %8, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UCL_STRING, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31, %26
  %38 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %39 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @log_warnx(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  store i32 1, i32* %3, align 4
  br label %89

42:                                               ; preds = %31
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = call %struct.TYPE_6__* @ucl_object_find_key(%struct.TYPE_6__* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %9, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @UCL_STRING, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47, %42
  %54 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %55 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @log_warnx(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  store i32 1, i32* %3, align 4
  br label %89

58:                                               ; preds = %47
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = call %struct.TYPE_6__* @ucl_object_find_key(%struct.TYPE_6__* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %10, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = icmp ne %struct.TYPE_6__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UCL_STRING, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63, %58
  %70 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %71 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @log_warnx(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  store i32 1, i32* %3, align 4
  br label %89

74:                                               ; preds = %63
  %75 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = call i32 @ucl_object_tostring(%struct.TYPE_6__* %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = call i32 @ucl_object_tostring(%struct.TYPE_6__* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = call i32 @ucl_object_tostring(%struct.TYPE_6__* %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = call i32 @ucl_object_tostring(%struct.TYPE_6__* %82)
  %84 = call %struct.auth* @auth_new_chap_mutual(%struct.auth_group* %75, i32 %77, i32 %79, i32 %81, i32 %83)
  store %struct.auth* %84, %struct.auth** %6, align 8
  %85 = load %struct.auth*, %struct.auth** %6, align 8
  %86 = icmp eq %struct.auth* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %89

88:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %87, %69, %53, %37, %21
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_6__* @ucl_object_find_key(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i32) #1

declare dso_local %struct.auth* @auth_new_chap_mutual(%struct.auth_group*, i32, i32, i32, i32) #1

declare dso_local i32 @ucl_object_tostring(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
