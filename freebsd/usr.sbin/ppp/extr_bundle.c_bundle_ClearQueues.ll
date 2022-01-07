; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_ClearQueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_ClearQueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.datalink*, i32, %struct.TYPE_2__ }
%struct.datalink = type { i32, %struct.datalink* }
%struct.TYPE_2__ = type { i32 }

@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Clearing choked output queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bundle_ClearQueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bundle_ClearQueues(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca %struct.datalink*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bundle*
  store %struct.bundle* %6, %struct.bundle** %3, align 8
  %7 = load i32, i32* @LogPHASE, align 4
  %8 = call i32 @log_Printf(i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.bundle*, %struct.bundle** %3, align 8
  %10 = getelementptr inbounds %struct.bundle, %struct.bundle* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @timer_Stop(i32* %11)
  %13 = load %struct.bundle*, %struct.bundle** %3, align 8
  %14 = getelementptr inbounds %struct.bundle, %struct.bundle* %13, i32 0, i32 1
  %15 = call i32 @ncp_DeleteQueues(i32* %14)
  %16 = load %struct.bundle*, %struct.bundle** %3, align 8
  %17 = getelementptr inbounds %struct.bundle, %struct.bundle* %16, i32 0, i32 0
  %18 = load %struct.datalink*, %struct.datalink** %17, align 8
  store %struct.datalink* %18, %struct.datalink** %4, align 8
  br label %19

19:                                               ; preds = %27, %1
  %20 = load %struct.datalink*, %struct.datalink** %4, align 8
  %21 = icmp ne %struct.datalink* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.datalink*, %struct.datalink** %4, align 8
  %24 = getelementptr inbounds %struct.datalink, %struct.datalink* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @physical_DeleteQueue(i32 %25)
  br label %27

27:                                               ; preds = %22
  %28 = load %struct.datalink*, %struct.datalink** %4, align 8
  %29 = getelementptr inbounds %struct.datalink, %struct.datalink* %28, i32 0, i32 1
  %30 = load %struct.datalink*, %struct.datalink** %29, align 8
  store %struct.datalink* %30, %struct.datalink** %4, align 8
  br label %19

31:                                               ; preds = %19
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @ncp_DeleteQueues(i32*) #1

declare dso_local i32 @physical_DeleteQueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
