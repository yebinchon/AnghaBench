; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_receive_chap_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_receive_chap_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i32 }
%struct.connection = type { i32 }
%struct.auth_group = type { i64 }
%struct.chap = type { i32 }
%struct.auth = type { i8*, i32* }
%struct.keys = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"CHAP_N\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"received CHAP Login PDU without CHAP_N\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CHAP_R\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"received CHAP Login PDU without CHAP_R\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"received CHAP Login PDU with malformed CHAP_R\00", align 1
@AG_TYPE_CHAP = common dso_local global i64 0, align 8
@AG_TYPE_CHAP_MUTUAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"received CHAP Login with invalid user \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"CHAP authentication failed for user \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pdu* (%struct.connection*, %struct.auth_group*, %struct.chap*, %struct.auth**)* @login_receive_chap_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pdu* @login_receive_chap_r(%struct.connection* %0, %struct.auth_group* %1, %struct.chap* %2, %struct.auth** %3) #0 {
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.auth_group*, align 8
  %7 = alloca %struct.chap*, align 8
  %8 = alloca %struct.auth**, align 8
  %9 = alloca %struct.pdu*, align 8
  %10 = alloca %struct.keys*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.auth*, align 8
  %14 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.auth_group* %1, %struct.auth_group** %6, align 8
  store %struct.chap* %2, %struct.chap** %7, align 8
  store %struct.auth** %3, %struct.auth*** %8, align 8
  %15 = load %struct.connection*, %struct.connection** %5, align 8
  %16 = call %struct.pdu* @login_receive(%struct.connection* %15, i32 0)
  store %struct.pdu* %16, %struct.pdu** %9, align 8
  %17 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %17, %struct.keys** %10, align 8
  %18 = load %struct.keys*, %struct.keys** %10, align 8
  %19 = load %struct.pdu*, %struct.pdu** %9, align 8
  %20 = call i32 @keys_load(%struct.keys* %18, %struct.pdu* %19)
  %21 = load %struct.keys*, %struct.keys** %10, align 8
  %22 = call i8* @keys_find(%struct.keys* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.pdu*, %struct.pdu** %9, align 8
  %27 = call i32 @login_send_error(%struct.pdu* %26, i32 2, i32 7)
  %28 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %4
  %30 = load %struct.keys*, %struct.keys** %10, align 8
  %31 = call i8* @keys_find(%struct.keys* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.pdu*, %struct.pdu** %9, align 8
  %36 = call i32 @login_send_error(%struct.pdu* %35, i32 2, i32 7)
  %37 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.chap*, %struct.chap** %7, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @chap_receive(%struct.chap* %39, i8* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.pdu*, %struct.pdu** %9, align 8
  %46 = call i32 @login_send_error(%struct.pdu* %45, i32 2, i32 7)
  %47 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %50 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AG_TYPE_CHAP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %56 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AG_TYPE_CHAP_MUTUAL, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %54, %48
  %61 = phi i1 [ true, %48 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.auth_group*, %struct.auth_group** %6, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call %struct.auth* @auth_find(%struct.auth_group* %64, i8* %65)
  store %struct.auth* %66, %struct.auth** %13, align 8
  %67 = load %struct.auth*, %struct.auth** %13, align 8
  %68 = icmp eq %struct.auth* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.pdu*, %struct.pdu** %9, align 8
  %71 = call i32 @login_send_error(%struct.pdu* %70, i32 2, i32 1)
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %69, %60
  %75 = load %struct.auth*, %struct.auth** %13, align 8
  %76 = getelementptr inbounds %struct.auth, %struct.auth* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.auth*, %struct.auth** %13, align 8
  %82 = getelementptr inbounds %struct.auth, %struct.auth* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @strlen(i32* %83)
  %85 = icmp sgt i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.chap*, %struct.chap** %7, align 8
  %89 = load %struct.auth*, %struct.auth** %13, align 8
  %90 = getelementptr inbounds %struct.auth, %struct.auth* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @chap_authenticate(%struct.chap* %88, i32* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %74
  %96 = load %struct.pdu*, %struct.pdu** %9, align 8
  %97 = call i32 @login_send_error(%struct.pdu* %96, i32 2, i32 1)
  %98 = load %struct.auth*, %struct.auth** %13, align 8
  %99 = getelementptr inbounds %struct.auth, %struct.auth* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %95, %74
  %103 = load %struct.keys*, %struct.keys** %10, align 8
  %104 = call i32 @keys_delete(%struct.keys* %103)
  %105 = load %struct.auth*, %struct.auth** %13, align 8
  %106 = load %struct.auth**, %struct.auth*** %8, align 8
  store %struct.auth* %105, %struct.auth** %106, align 8
  %107 = load %struct.pdu*, %struct.pdu** %9, align 8
  ret %struct.pdu* %107
}

declare dso_local %struct.pdu* @login_receive(%struct.connection*, i32) #1

declare dso_local %struct.keys* @keys_new(...) #1

declare dso_local i32 @keys_load(%struct.keys*, %struct.pdu*) #1

declare dso_local i8* @keys_find(%struct.keys*, i8*) #1

declare dso_local i32 @login_send_error(%struct.pdu*, i32, i32) #1

declare dso_local i32 @log_errx(i32, i8*, ...) #1

declare dso_local i32 @chap_receive(%struct.chap*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.auth* @auth_find(%struct.auth_group*, i8*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @chap_authenticate(%struct.chap*, i32*) #1

declare dso_local i32 @keys_delete(%struct.keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
