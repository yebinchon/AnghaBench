; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_Close.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }

@ST_CLOSED = common dso_local global i64 0, align 8
@ST_STARTING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncp_Close(%struct.ncp* %0) #0 {
  %2 = alloca %struct.ncp*, align 8
  store %struct.ncp* %0, %struct.ncp** %2, align 8
  %3 = load %struct.ncp*, %struct.ncp** %2, align 8
  %4 = getelementptr inbounds %struct.ncp, %struct.ncp* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ST_CLOSED, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.ncp*, %struct.ncp** %2, align 8
  %12 = getelementptr inbounds %struct.ncp, %struct.ncp* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ST_STARTING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %10, %1
  %19 = load %struct.ncp*, %struct.ncp** %2, align 8
  %20 = getelementptr inbounds %struct.ncp, %struct.ncp* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @fsm_Close(%struct.TYPE_6__* %21)
  br label %23

23:                                               ; preds = %18, %10
  %24 = load %struct.ncp*, %struct.ncp** %2, align 8
  %25 = getelementptr inbounds %struct.ncp, %struct.ncp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ST_CLOSED, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.ncp*, %struct.ncp** %2, align 8
  %33 = getelementptr inbounds %struct.ncp, %struct.ncp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ST_STARTING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31, %23
  %40 = load %struct.ncp*, %struct.ncp** %2, align 8
  %41 = getelementptr inbounds %struct.ncp, %struct.ncp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @fsm_Close(%struct.TYPE_6__* %42)
  br label %44

44:                                               ; preds = %39, %31
  ret void
}

declare dso_local i32 @fsm_Close(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
