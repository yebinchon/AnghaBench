; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_invite.c_invite_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_invite.c_invite_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.tsockaddr }
%struct.tsockaddr = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.itimerval = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@RING_WAIT = common dso_local global i32 0, align 4
@sockt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error on attempt to listen for caller\00", align 1
@msg = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@my_addr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@invitation_waiting = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Waiting for your party to respond\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@re_invite = common dso_local global i32 0, align 4
@invitebuf = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to connect with your party\00", align 1
@current_state = common dso_local global i8* null, align 8
@local_id = common dso_local global i32 0, align 4
@my_machine_addr = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@remote_id = common dso_local global i32 0, align 4
@his_machine_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invite_remote() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.itimerval, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @RING_WAIT, align 4
  %5 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  %7 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i32 0, i32 0
  %11 = bitcast %struct.TYPE_5__* %9 to i8*
  %12 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = load i32, i32* @sockt, align 4
  %14 = call i64 @listen(i32 %13, i32 5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @p_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.tsockaddr* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @msg, i32 0, i32 1) to i8*), i8* align 4 bitcast (%struct.TYPE_6__* @my_addr to i8*), i64 4, i1 false)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @my_addr, i32 0, i32 0), align 4
  %20 = call i32 @htons(i32 %19)
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @msg, i32 0, i32 1, i32 0), align 8
  %21 = call i8* @htonl(i32 -1)
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @msg, i32 0, i32 0), align 8
  store i32 1, i32* @invitation_waiting, align 4
  %22 = call i32 (...) @announce_invite()
  %23 = call i32 (...) @end_msgs()
  %24 = load i32, i32* @ITIMER_REAL, align 4
  %25 = call i32 @setitimer(i32 %24, %struct.itimerval* %2, %struct.itimerval* null)
  %26 = call i32 @message(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @SIGALRM, align 4
  %28 = load i32, i32* @re_invite, align 4
  %29 = call i32 @signal(i32 %27, i32 %28)
  %30 = load i32, i32* @invitebuf, align 4
  %31 = call i32 @setjmp(i32 %30) #4
  br label %32

32:                                               ; preds = %41, %40, %18
  %33 = load i32, i32* @sockt, align 4
  %34 = call i32 @accept(i32 %33, i32 0, i32 0)
  store i32 %34, i32* %1, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EINTR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %32

41:                                               ; preds = %36
  %42 = call i32 @p_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %32

43:                                               ; preds = %32
  %44 = load i32, i32* @sockt, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i32, i32* %1, align 4
  store i32 %46, i32* @sockt, align 4
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** @current_state, align 8
  %47 = call i32 (...) @start_msgs()
  %48 = load i32, i32* @local_id, align 4
  %49 = call i8* @htonl(i32 %48)
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @msg, i32 0, i32 0), align 8
  %50 = load i32, i32* @my_machine_addr, align 4
  %51 = load i32, i32* @DELETE, align 4
  %52 = load i8*, i8** getelementptr inbounds ({ i8*, i32 }, { i8*, i32 }* bitcast (%struct.TYPE_7__* @msg to { i8*, i32 }*), i32 0, i32 0), align 8
  %53 = load i32, i32* getelementptr inbounds ({ i8*, i32 }, { i8*, i32 }* bitcast (%struct.TYPE_7__* @msg to { i8*, i32 }*), i32 0, i32 1), align 8
  %54 = call i32 @ctl_transact(i32 %50, i8* %52, i32 %53, i32 %51, i32* %3)
  %55 = load i32, i32* @remote_id, align 4
  %56 = call i8* @htonl(i32 %55)
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @msg, i32 0, i32 0), align 8
  %57 = load i32, i32* @his_machine_addr, align 4
  %58 = load i32, i32* @DELETE, align 4
  %59 = load i8*, i8** getelementptr inbounds ({ i8*, i32 }, { i8*, i32 }* bitcast (%struct.TYPE_7__* @msg to { i8*, i32 }*), i32 0, i32 0), align 8
  %60 = load i32, i32* getelementptr inbounds ({ i8*, i32 }, { i8*, i32 }* bitcast (%struct.TYPE_7__* @msg to { i8*, i32 }*), i32 0, i32 1), align 8
  %61 = call i32 @ctl_transact(i32 %57, i8* %59, i32 %60, i32 %58, i32* %3)
  store i32 0, i32* @invitation_waiting, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i32 @p_error(i8*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i8* @htonl(i32) #2

declare dso_local i32 @announce_invite(...) #2

declare dso_local i32 @end_msgs(...) #2

declare dso_local i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #2

declare dso_local i32 @message(i8*) #2

declare dso_local i32 @signal(i32, i32) #2

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #3

declare dso_local i32 @accept(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @start_msgs(...) #2

declare dso_local i32 @ctl_transact(i32, i8*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
