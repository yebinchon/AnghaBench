; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { i32, %struct.datalink*, i32, %struct.datalink*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@DATALINK_CLOSED = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Oops, destroying a datalink in state %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.datalink* @datalink_Destroy(%struct.datalink* %0) #0 {
  %2 = alloca %struct.datalink*, align 8
  %3 = alloca %struct.datalink*, align 8
  store %struct.datalink* %0, %struct.datalink** %2, align 8
  %4 = load %struct.datalink*, %struct.datalink** %2, align 8
  %5 = getelementptr inbounds %struct.datalink, %struct.datalink* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @DATALINK_CLOSED, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @LogERROR, align 4
  %11 = load %struct.datalink*, %struct.datalink** %2, align 8
  %12 = call i32 @datalink_State(%struct.datalink* %11)
  %13 = call i32 @log_Printf(i32 %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.datalink*, %struct.datalink** %2, align 8
  %15 = getelementptr inbounds %struct.datalink, %struct.datalink* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %21 [
    i32 129, label %17
    i32 130, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %9, %9, %9
  %18 = load %struct.datalink*, %struct.datalink** %2, align 8
  %19 = getelementptr inbounds %struct.datalink, %struct.datalink* %18, i32 0, i32 5
  %20 = call i32 @chat_Finish(i32* %19)
  br label %21

21:                                               ; preds = %9, %17
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.datalink*, %struct.datalink** %2, align 8
  %24 = getelementptr inbounds %struct.datalink, %struct.datalink* %23, i32 0, i32 5
  %25 = call i32 @chat_Destroy(i32* %24)
  %26 = load %struct.datalink*, %struct.datalink** %2, align 8
  %27 = getelementptr inbounds %struct.datalink, %struct.datalink* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @timer_Stop(i32* %28)
  %30 = load %struct.datalink*, %struct.datalink** %2, align 8
  %31 = getelementptr inbounds %struct.datalink, %struct.datalink* %30, i32 0, i32 3
  %32 = load %struct.datalink*, %struct.datalink** %31, align 8
  store %struct.datalink* %32, %struct.datalink** %3, align 8
  %33 = load %struct.datalink*, %struct.datalink** %2, align 8
  %34 = getelementptr inbounds %struct.datalink, %struct.datalink* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @physical_Destroy(i32 %35)
  %37 = load %struct.datalink*, %struct.datalink** %2, align 8
  %38 = getelementptr inbounds %struct.datalink, %struct.datalink* %37, i32 0, i32 1
  %39 = load %struct.datalink*, %struct.datalink** %38, align 8
  %40 = call i32 @free(%struct.datalink* %39)
  %41 = load %struct.datalink*, %struct.datalink** %2, align 8
  %42 = call i32 @free(%struct.datalink* %41)
  %43 = load %struct.datalink*, %struct.datalink** %3, align 8
  ret %struct.datalink* %43
}

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @datalink_State(%struct.datalink*) #1

declare dso_local i32 @chat_Finish(i32*) #1

declare dso_local i32 @chat_Destroy(i32*) #1

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @physical_Destroy(i32) #1

declare dso_local i32 @free(%struct.datalink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
