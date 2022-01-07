; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_invite.c_announce_invite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_invite.c_announce_invite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Trying to connect to your party's talk daemon\00", align 1
@current_state = common dso_local global i8* null, align 8
@his_machine_addr = common dso_local global i32 0, align 4
@msg = common dso_local global i32 0, align 4
@ANNOUNCE = common dso_local global i32 0, align 4
@remote_id = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@NANSWERS = common dso_local global i64 0, align 8
@answers = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Trying to connect to local talk daemon\00", align 1
@my_machine_addr = common dso_local global i32 0, align 4
@LEAVE_INVITE = common dso_local global i32 0, align 4
@local_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @announce_invite() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8** @current_state, align 8
  %2 = load i32, i32* @his_machine_addr, align 4
  %3 = load i32, i32* @msg, align 4
  %4 = load i32, i32* @ANNOUNCE, align 4
  %5 = call i32 @ctl_transact(i32 %2, i32 %3, i32 %4, %struct.TYPE_3__* %1)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* @remote_id, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NANSWERS, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32*, i32** @answers, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @message(i32 %22)
  br label %24

24:                                               ; preds = %17, %12
  %25 = call i32 (...) @quit()
  br label %26

26:                                               ; preds = %24, %0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** @current_state, align 8
  %27 = load i32, i32* @my_machine_addr, align 4
  %28 = load i32, i32* @msg, align 4
  %29 = load i32, i32* @LEAVE_INVITE, align 4
  %30 = call i32 @ctl_transact(i32 %27, i32 %28, i32 %29, %struct.TYPE_3__* %1)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* @local_id, align 4
  ret void
}

declare dso_local i32 @ctl_transact(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @message(i32) #1

declare dso_local i32 @quit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
