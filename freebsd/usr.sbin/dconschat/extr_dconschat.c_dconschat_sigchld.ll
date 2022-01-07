; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_sigchld.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_sigchld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, %struct.dcons_port* }
%struct.dcons_port = type { i32, i32 }
%struct.kevent = type { i32 }

@sc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DCONS_CON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"\0D\0A[child exit]\0D\0A\00", align 1
@tc_set = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dconschat_sigchld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dconschat_sigchld(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kevent, align 4
  %4 = alloca %struct.dcons_port*, align 8
  %5 = alloca [256 x i8], align 16
  store i32 %0, i32* %2, align 4
  %6 = load %struct.dcons_port*, %struct.dcons_port** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sc, i32 0, i32 3), align 8
  %7 = load i64, i64* @DCONS_CON, align 8
  %8 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %6, i64 %7
  store %struct.dcons_port* %8, %struct.dcons_port** %4, align 8
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %10 = call i32 @snprintf(i8* %9, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %12 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %16 = call i32 @strlen(i8* %15)
  %17 = call i32 @write(i32 %13, i8* %14, i32 %16)
  %18 = load i64, i64* @tc_set, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @STDIN_FILENO, align 4
  %22 = load i32, i32* @TCSADRAIN, align 4
  %23 = call i32 @tcsetattr(i32 %21, i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sc, i32 0, i32 2))
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %26 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EVFILT_READ, align 4
  %29 = load i32, i32* @EV_ADD, align 4
  %30 = load i32, i32* @NOTE_LOWAT, align 4
  %31 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %32 = bitcast %struct.dcons_port* %31 to i8*
  %33 = call i32 @EV_SET(%struct.kevent* %3, i32 %27, i32 %28, i32 %29, i32 %30, i32 1, i8* %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sc, i32 0, i32 1), align 4
  %35 = call i32 @kevent(i32 %34, %struct.kevent* %3, i32 1, i32* null, i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sc, i32 0, i32 0))
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
