; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/libsecret/extr_git-credential-libsecret.c_main.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/libsecret/extr_git-credential-libsecret.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential_operation = type { i32 (%struct.credential*)*, i64 }
%struct.credential = type opaque
%struct.credential.0 = type { i32 }

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@credential_helper_ops = common dso_local global %struct.credential_operation* null, align 8
@CREDENTIAL_INIT = common dso_local global %struct.credential.0 zeroinitializer, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Git Credential Helper\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.credential_operation*, align 8
  %8 = alloca %struct.credential.0, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.credential_operation*, %struct.credential_operation** @credential_helper_ops, align 8
  store %struct.credential_operation* %10, %struct.credential_operation** %7, align 8
  %11 = bitcast %struct.credential.0* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.credential.0* @CREDENTIAL_INIT to i8*), i64 4, i1 false)
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @usage(i8* %19)
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = call i32 @exit(i32 %21) #4
  unreachable

23:                                               ; preds = %2
  %24 = call i32 @g_set_application_name(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %41, %23
  %26 = load %struct.credential_operation*, %struct.credential_operation** %7, align 8
  %27 = getelementptr inbounds %struct.credential_operation, %struct.credential_operation* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.credential_operation*, %struct.credential_operation** %7, align 8
  %35 = getelementptr inbounds %struct.credential_operation, %struct.credential_operation* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @strcmp(i8* %33, i64 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %30, %25
  %40 = phi i1 [ false, %25 ], [ %38, %30 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load %struct.credential_operation*, %struct.credential_operation** %7, align 8
  %43 = getelementptr inbounds %struct.credential_operation, %struct.credential_operation* %42, i32 1
  store %struct.credential_operation* %43, %struct.credential_operation** %7, align 8
  br label %25

44:                                               ; preds = %39
  %45 = load %struct.credential_operation*, %struct.credential_operation** %7, align 8
  %46 = getelementptr inbounds %struct.credential_operation, %struct.credential_operation* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.credential_operation*, %struct.credential_operation** %7, align 8
  %51 = getelementptr inbounds %struct.credential_operation, %struct.credential_operation* %50, i32 0, i32 0
  %52 = load i32 (%struct.credential*)*, i32 (%struct.credential*)** %51, align 8
  %53 = icmp ne i32 (%struct.credential*)* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %44
  br label %67

55:                                               ; preds = %49
  %56 = call i32 @credential_read(%struct.credential.0* %8)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %67

60:                                               ; preds = %55
  %61 = load %struct.credential_operation*, %struct.credential_operation** %7, align 8
  %62 = getelementptr inbounds %struct.credential_operation, %struct.credential_operation* %61, i32 0, i32 0
  %63 = load i32 (%struct.credential*)*, i32 (%struct.credential*)** %62, align 8
  %64 = bitcast %struct.credential.0* %8 to %struct.credential*
  %65 = call i32 %63(%struct.credential* %64)
  store i32 %65, i32* %6, align 4
  %66 = call i32 @credential_write(%struct.credential.0* %8)
  br label %67

67:                                               ; preds = %60, %59, %54
  %68 = call i32 @credential_clear(%struct.credential.0* %8)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usage(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @g_set_application_name(i8*) #2

declare dso_local i64 @strcmp(i8*, i64) #2

declare dso_local i32 @credential_read(%struct.credential.0*) #2

declare dso_local i32 @credential_write(%struct.credential.0*) #2

declare dso_local i32 @credential_clear(%struct.credential.0*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
