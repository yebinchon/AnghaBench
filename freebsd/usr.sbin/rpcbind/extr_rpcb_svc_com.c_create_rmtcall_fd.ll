; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_create_rmtcall_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_create_rmtcall_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmtcallfd_list = type { i32, %struct.rmtcallfd_list*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.netconfig = type { i8*, i32 }
%struct.t_bind = type { i32 }

@debugging = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"create_rmtcall_fd: couldn't open \22%s\22 (errno %d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"create_rmtcall_fd: svc_tli_create failed\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"create_rmtcall_fd: no memory!\00", align 1
@rmthead = common dso_local global %struct.rmtcallfd_list* null, align 8
@rmttail = common dso_local global %struct.rmtcallfd_list* null, align 8
@svc_maxfd = common dso_local global i32 0, align 4
@svc_fdset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_rmtcall_fd(%struct.netconfig* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netconfig*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmtcallfd_list*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.netconfig* %0, %struct.netconfig** %3, align 8
  %7 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %8 = call i32 @__rpc_nconf2fd(%struct.netconfig* %7)
  store i32 %8, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i64, i64* @debugging, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* @stderr, align 4
  %15 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %16 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  br label %20

20:                                               ; preds = %13, %10
  store i32 -1, i32* %2, align 4
  br label %80

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.TYPE_3__* @svc_tli_create(i32 %22, i32 0, %struct.t_bind* null, i32 0, i32 0)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %6, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = icmp eq %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i64, i64* @debugging, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  store i32 -1, i32* %2, align 4
  br label %80

33:                                               ; preds = %21
  %34 = call %struct.rmtcallfd_list* @malloc(i32 32)
  store %struct.rmtcallfd_list* %34, %struct.rmtcallfd_list** %5, align 8
  %35 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %5, align 8
  %36 = icmp eq %struct.rmtcallfd_list* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = call i32 @syslog(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %80

40:                                               ; preds = %33
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %5, align 8
  %43 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %42, i32 0, i32 3
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %43, align 8
  %44 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %45 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @strdup(i32 %46)
  %48 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %5, align 8
  %49 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %5, align 8
  %51 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %5, align 8
  %57 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %5, align 8
  %59 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %58, i32 0, i32 1
  store %struct.rmtcallfd_list* null, %struct.rmtcallfd_list** %59, align 8
  %60 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** @rmthead, align 8
  %61 = icmp eq %struct.rmtcallfd_list* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %40
  %63 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %5, align 8
  store %struct.rmtcallfd_list* %63, %struct.rmtcallfd_list** @rmthead, align 8
  %64 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %5, align 8
  store %struct.rmtcallfd_list* %64, %struct.rmtcallfd_list** @rmttail, align 8
  br label %70

65:                                               ; preds = %40
  %66 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %5, align 8
  %67 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** @rmttail, align 8
  %68 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %67, i32 0, i32 1
  store %struct.rmtcallfd_list* %66, %struct.rmtcallfd_list** %68, align 8
  %69 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %5, align 8
  store %struct.rmtcallfd_list* %69, %struct.rmtcallfd_list** @rmttail, align 8
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @svc_maxfd, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* @svc_maxfd, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @FD_SET(i32 %77, i32* @svc_fdset)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %37, %32, %20
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @__rpc_nconf2fd(%struct.netconfig*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_3__* @svc_tli_create(i32, i32, %struct.t_bind*, i32, i32) #1

declare dso_local %struct.rmtcallfd_list* @malloc(i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
