; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { i32, i32 }
%struct.dcons_port = type { i64 }

@tc_set = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\0A[dconschat suspend]\0A\00", align 1
@SIGTSTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcons_state*, %struct.dcons_port*)* @dconschat_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dconschat_suspend(%struct.dcons_state* %0, %struct.dcons_port* %1) #0 {
  %3 = alloca %struct.dcons_state*, align 8
  %4 = alloca %struct.dcons_port*, align 8
  store %struct.dcons_state* %0, %struct.dcons_state** %3, align 8
  store %struct.dcons_port* %1, %struct.dcons_port** %4, align 8
  %5 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %6 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %32

10:                                               ; preds = %2
  %11 = load i64, i64* @tc_set, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* @STDIN_FILENO, align 4
  %15 = load i32, i32* @TCSADRAIN, align 4
  %16 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %17 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %16, i32 0, i32 1
  %18 = call i32 @tcsetattr(i32 %14, i32 %15, i32* %17)
  br label %19

19:                                               ; preds = %13, %10
  %20 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @getpid()
  %22 = load i32, i32* @SIGTSTP, align 4
  %23 = call i32 @kill(i32 %21, i32 %22)
  %24 = load i64, i64* @tc_set, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @STDIN_FILENO, align 4
  %28 = load i32, i32* @TCSADRAIN, align 4
  %29 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %30 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %29, i32 0, i32 0
  %31 = call i32 @tcsetattr(i32 %27, i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %9, %26, %19
  ret void
}

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
