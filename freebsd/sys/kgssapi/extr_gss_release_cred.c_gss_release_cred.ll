; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_release_cred.c_gss_release_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_release_cred.c_gss_release_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.release_cred_res = type { i32, i32 }
%struct.release_cred_args = type { i32 }

@kgss_gssd_handle = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@M_GSSAPI = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_release_cred(i32* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca %struct.release_cred_res, align 4
  %7 = alloca %struct.release_cred_args, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %5, align 8
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @kgss_gssd_handle, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %14, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.release_cred_args, %struct.release_cred_args* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = call i32* (...) @kgss_gssd_client()
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %29, i32* %3, align 4
  br label %55

30:                                               ; preds = %19
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @gssd_release_cred_1(%struct.release_cred_args* %7, %struct.release_cred_res* %6, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @CLNT_RELEASE(i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @RPC_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %30
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* @M_GSSAPI, align 4
  %46 = call i32 @free(%struct.TYPE_4__* %44, i32 %45)
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %47, align 8
  %48 = getelementptr inbounds %struct.release_cred_res, %struct.release_cred_res* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.release_cred_res, %struct.release_cred_res* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %15
  %54 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %42, %38, %28, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32* @kgss_gssd_client(...) #1

declare dso_local i32 @gssd_release_cred_1(%struct.release_cred_args*, %struct.release_cred_res*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
