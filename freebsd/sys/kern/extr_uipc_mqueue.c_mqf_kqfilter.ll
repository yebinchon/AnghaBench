; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqf_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqf_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.knote = type { i64, i32* }
%struct.mqueue = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EVFILT_READ = common dso_local global i64 0, align 8
@mq_rfiltops = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i64 0, align 8
@mq_wfiltops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.knote*)* @mqf_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqf_kqfilter(%struct.file* %0, %struct.knote* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.mqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.knote* %1, %struct.knote** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.mqueue* @FPTOMQ(%struct.file* %7)
  store %struct.mqueue* %8, %struct.mqueue** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.knote*, %struct.knote** %4, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EVFILT_READ, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.knote*, %struct.knote** %4, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 1
  store i32* @mq_rfiltops, i32** %16, align 8
  %17 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %18 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.knote*, %struct.knote** %4, align 8
  %21 = call i32 @knlist_add(i32* %19, %struct.knote* %20, i32 0)
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.knote*, %struct.knote** %4, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EVFILT_WRITE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.knote*, %struct.knote** %4, align 8
  %30 = getelementptr inbounds %struct.knote, %struct.knote* %29, i32 0, i32 1
  store i32* @mq_wfiltops, i32** %30, align 8
  %31 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %32 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.knote*, %struct.knote** %4, align 8
  %35 = call i32 @knlist_add(i32* %33, %struct.knote* %34, i32 0)
  br label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %28
  br label %39

39:                                               ; preds = %38, %14
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.mqueue* @FPTOMQ(%struct.file*) #1

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
