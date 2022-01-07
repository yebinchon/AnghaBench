; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_pname_to_uid.c_gss_pname_to_uid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_pname_to_uid.c_gss_pname_to_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pname_to_uid_res = type { i64, i64, i32 }
%struct.pname_to_uid_args = type { i32, i32 }

@GSS_C_NO_NAME = common dso_local global %struct.TYPE_4__* null, align 8
@GSS_S_BAD_NAME = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_pname_to_uid(i64* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pname_to_uid_res, align 8
  %11 = alloca %struct.pname_to_uid_args, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i64*, i64** %6, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GSS_C_NO_NAME, align 8
  %17 = icmp eq %struct.TYPE_4__* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %19, i64* %5, align 8
  br label %62

20:                                               ; preds = %4
  %21 = call i32* (...) @kgss_gssd_client()
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %25, i64* %5, align 8
  br label %62

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.pname_to_uid_args, %struct.pname_to_uid_args* %11, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.pname_to_uid_args, %struct.pname_to_uid_args* %11, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = call i32 @bzero(%struct.pname_to_uid_res* %10, i32 24)
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @gssd_pname_to_uid_1(%struct.pname_to_uid_args* %11, %struct.pname_to_uid_res* %10, i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @CLNT_RELEASE(i32* %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @RPC_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load i32, i32* %12, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %45, i64* %5, align 8
  br label %62

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.pname_to_uid_res, %struct.pname_to_uid_res* %10, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @GSS_S_COMPLETE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.pname_to_uid_res, %struct.pname_to_uid_res* %10, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %6, align 8
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.pname_to_uid_res, %struct.pname_to_uid_res* %10, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %5, align 8
  br label %62

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.pname_to_uid_res, %struct.pname_to_uid_res* %10, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %57, %51, %41, %24, %18
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i32* @kgss_gssd_client(...) #1

declare dso_local i32 @bzero(%struct.pname_to_uid_res*, i32) #1

declare dso_local i32 @gssd_pname_to_uid_1(%struct.pname_to_uid_args*, %struct.pname_to_uid_res*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
