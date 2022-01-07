; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_look_up.c_check_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_look_up.c_check_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.tsockaddr }
%struct.tsockaddr = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.sockaddr = type { i64, i32 }

@msg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ctl_addr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"Waiting to connect with caller\00", align 1
@current_state = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Response uses invalid network address\00", align 1
@errno = common dso_local global i64 0, align 8
@sockt = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i64 0, align 8
@his_machine_addr = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to connect with initiator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_local() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.sockaddr, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %3, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_10__* @msg to i8*), i8* align 4 bitcast (%struct.TYPE_11__* @ctl_addr to i8*), i64 4, i1 false)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctl_addr, i32 0, i32 0), align 4
  %6 = call i32 @htons(i32 %5)
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @msg, i32 0, i32 0, i32 0), align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call i32 @look_for_invite(%struct.TYPE_9__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %56

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** @current_state, align 8
  br label %12

12:                                               ; preds = %37, %11
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_INET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @p_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %12
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = call i32 @memcpy(%struct.sockaddr* %4, i64* %24, i32 16)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 1
  store i32 16, i32* %31, align 8
  store i64 0, i64* @errno, align 8
  %32 = load i32, i32* @sockt, align 4
  %33 = call i32 @connect(i32 %32, %struct.sockaddr* %4, i32 16)
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 1, i32* %1, align 4
  br label %56

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %12, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @ECONNREFUSED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* @his_machine_addr, align 4
  %47 = load i32, i32* @DELETE, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @msg, i32 0, i32 0, i32 0), align 4
  %50 = call i32 @ctl_transact(i32 %46, i32 %49, i32 %47, %struct.TYPE_9__* %48)
  %51 = load i32, i32* @sockt, align 4
  %52 = call i32 @close(i32 %51)
  %53 = call i32 (...) @open_sockt()
  store i32 0, i32* %1, align 4
  br label %56

54:                                               ; preds = %41
  %55 = call i32 @p_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %56

56:                                               ; preds = %54, %45, %35, %10
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @look_for_invite(%struct.TYPE_9__*) #2

declare dso_local i32 @p_error(i8*) #2

declare dso_local i32 @memcpy(%struct.sockaddr*, i64*, i32) #2

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @ctl_transact(i32, i32, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @open_sockt(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
