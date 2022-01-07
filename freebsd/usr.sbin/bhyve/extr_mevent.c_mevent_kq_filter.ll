; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mevent.c_mevent_kq_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mevent.c_mevent_kq_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mevent = type { i64 }

@EVF_READ = common dso_local global i64 0, align 8
@EVFILT_READ = common dso_local global i32 0, align 4
@EVF_WRITE = common dso_local global i64 0, align 8
@EVFILT_WRITE = common dso_local global i32 0, align 4
@EVF_TIMER = common dso_local global i64 0, align 8
@EVFILT_TIMER = common dso_local global i32 0, align 4
@EVF_SIGNAL = common dso_local global i64 0, align 8
@EVFILT_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mevent*)* @mevent_kq_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mevent_kq_filter(%struct.mevent* %0) #0 {
  %2 = alloca %struct.mevent*, align 8
  %3 = alloca i32, align 4
  store %struct.mevent* %0, %struct.mevent** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mevent*, %struct.mevent** %2, align 8
  %5 = getelementptr inbounds %struct.mevent, %struct.mevent* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EVF_READ, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EVFILT_READ, align 4
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.mevent*, %struct.mevent** %2, align 8
  %13 = getelementptr inbounds %struct.mevent, %struct.mevent* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EVF_WRITE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @EVFILT_WRITE, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = load %struct.mevent*, %struct.mevent** %2, align 8
  %21 = getelementptr inbounds %struct.mevent, %struct.mevent* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EVF_TIMER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EVFILT_TIMER, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load %struct.mevent*, %struct.mevent** %2, align 8
  %29 = getelementptr inbounds %struct.mevent, %struct.mevent* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EVF_SIGNAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EVFILT_SIGNAL, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
