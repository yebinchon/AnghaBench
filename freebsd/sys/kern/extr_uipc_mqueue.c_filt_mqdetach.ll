; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_filt_mqdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_filt_mqdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i32 }
%struct.mqueue = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EVFILT_READ = common dso_local global i64 0, align 8
@EVFILT_WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"filt_mqdetach\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @filt_mqdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_mqdetach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.mqueue*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %4 = load %struct.knote*, %struct.knote** %2, align 8
  %5 = getelementptr inbounds %struct.knote, %struct.knote* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.mqueue* @FPTOMQ(i32 %6)
  store %struct.mqueue* %7, %struct.mqueue** %3, align 8
  %8 = load %struct.knote*, %struct.knote** %2, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EVFILT_READ, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %15 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.knote*, %struct.knote** %2, align 8
  %18 = call i32 @knlist_remove(i32* %16, %struct.knote* %17, i32 0)
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.knote*, %struct.knote** %2, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EVFILT_WRITE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %27 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.knote*, %struct.knote** %2, align 8
  %30 = call i32 @knlist_remove(i32* %28, %struct.knote* %29, i32 0)
  br label %33

31:                                               ; preds = %19
  %32 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  br label %34

34:                                               ; preds = %33, %13
  ret void
}

declare dso_local %struct.mqueue* @FPTOMQ(i32) #1

declare dso_local i32 @knlist_remove(i32*, %struct.knote*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
