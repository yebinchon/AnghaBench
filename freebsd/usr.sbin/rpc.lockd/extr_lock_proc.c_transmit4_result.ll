; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_transmit4_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_transmit4_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.timeval = type { i64, i64 }

@transmit4_result.dummy = internal global i8 0, align 1
@NLM_VERS4 = common dso_local global i32 0, align 4
@xdr_nlm4_res = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8
@debug_level = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"clnt_call returns %d(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transmit4_result(i32 %0, i32* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %11 = load i32, i32* @NLM_VERS4, align 4
  %12 = call i32* @get_client(%struct.sockaddr* %10, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i64, i64* @xdr_nlm4_res, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* @xdr_void, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @clnt_call(i32* %17, i32 %18, i32 %20, i32* %21, i32 %23, i8* @transmit4_result.dummy, %struct.timeval* byval(%struct.timeval) align 8 %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @debug_level, align 4
  %26 = icmp sgt i32 %25, 2
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load i32, i32* @LOG_DEBUG, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @clnt_sperrno(i32 %30)
  %32 = call i32 @syslog(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %14
  br label %34

34:                                               ; preds = %33, %3
  ret void
}

declare dso_local i32* @get_client(%struct.sockaddr*, i32) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, i32*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @syslog(i32, i8*, i32, i32) #1

declare dso_local i32 @clnt_sperrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
