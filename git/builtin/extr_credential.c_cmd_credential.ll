; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_credential.c_cmd_credential.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_credential.c_cmd_credential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32 }

@CREDENTIAL_INIT = common dso_local global %struct.credential zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@usage_msg = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to read credential from stdin\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"approve\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"reject\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_credential(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.credential, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = bitcast %struct.credential* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.credential* @CREDENTIAL_INIT to i8*), i64 4, i1 false)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12, %3
  %19 = load i32, i32* @usage_msg, align 4
  %20 = call i32 @usage(i32 %19)
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i32, i32* @stdin, align 4
  %26 = call i64 @credential_read(%struct.credential* %8, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = call i32 @credential_fill(%struct.credential* %8)
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @credential_write(%struct.credential* %8, i32 %36)
  br label %55

38:                                               ; preds = %30
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call i32 @credential_approve(%struct.credential* %8)
  br label %54

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = call i32 @credential_reject(%struct.credential* %8)
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @usage_msg, align 4
  %52 = call i32 @usage(i32 %51)
  br label %53

53:                                               ; preds = %50, %48
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %34
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i64 @credential_read(%struct.credential*, i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @credential_fill(%struct.credential*) #2

declare dso_local i32 @credential_write(%struct.credential*, i32) #2

declare dso_local i32 @credential_approve(%struct.credential*) #2

declare dso_local i32 @credential_reject(%struct.credential*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
