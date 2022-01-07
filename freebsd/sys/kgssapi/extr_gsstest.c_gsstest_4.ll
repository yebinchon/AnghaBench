; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gsstest.c_gsstest_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gsstest.c_gsstest_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.thread = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@gsstest_4.cb = internal global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"host@\00", align 1
@GSS_C_INDEFINITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"setting name for %s for %s failed: %d, %d\0A\00", align 1
@server_new_context = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"gsstest\00", align 1
@server_program_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @gsstest_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsstest_4(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [133 x i8], align 16
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %7 = getelementptr inbounds [133 x i8], [133 x i8]* %4, i64 0, i64 0
  %8 = call i32 @memcpy(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %9 = load %struct.thread*, %struct.thread** %2, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [133 x i8], [133 x i8]* %4, i64 0, i64 0
  %13 = getelementptr inbounds i8, i8* %12, i64 5
  %14 = call i32 @getcredhostname(i32 %11, i8* %13, i32 128)
  %15 = call i8** (...) @rpc_gss_get_mechanisms()
  store i8** %15, i8*** %5, align 8
  br label %16

16:                                               ; preds = %37, %1
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = getelementptr inbounds [133 x i8], [133 x i8]* %4, i64 0, i64 0
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %25 = call i32 @rpc_gss_set_svc_name(i8* %21, i8* %23, i32 %24, i32 123456, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %20
  %28 = call i32 @rpc_gss_get_error(%struct.TYPE_6__* %6)
  %29 = getelementptr inbounds [133 x i8], [133 x i8]* %4, i64 0, i64 0
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %31, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %27, %20
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %5, align 8
  br label %16

40:                                               ; preds = %16
  store i32 123456, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gsstest_4.cb, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gsstest_4.cb, i32 0, i32 1), align 4
  %41 = load i32, i32* @server_new_context, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gsstest_4.cb, i32 0, i32 2), align 4
  %42 = call i32 @rpc_gss_set_callback(%struct.TYPE_7__* @gsstest_4.cb)
  %43 = call i32* @svcpool_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %43, i32** %3, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @server_program_1, align 4
  %46 = call i32 @svc_create(i32* %44, i32 %45, i32 123456, i32 1, i32* null)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @svc_run(i32* %47)
  %49 = call i32 @rpc_gss_clear_svc_name(i32 123456, i32 1)
  %50 = call i32 @rpc_gss_clear_callback(%struct.TYPE_7__* @gsstest_4.cb)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @svcpool_destroy(i32* %51)
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @getcredhostname(i32, i8*, i32) #1

declare dso_local i8** @rpc_gss_get_mechanisms(...) #1

declare dso_local i32 @rpc_gss_set_svc_name(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @rpc_gss_get_error(%struct.TYPE_6__*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @rpc_gss_set_callback(%struct.TYPE_7__*) #1

declare dso_local i32* @svcpool_create(i8*, i32*) #1

declare dso_local i32 @svc_create(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @svc_run(i32*) #1

declare dso_local i32 @rpc_gss_clear_svc_name(i32, i32) #1

declare dso_local i32 @rpc_gss_clear_callback(%struct.TYPE_7__*) #1

declare dso_local i32 @svcpool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
