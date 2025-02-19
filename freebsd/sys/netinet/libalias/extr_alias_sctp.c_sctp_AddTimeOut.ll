; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_sctp_AddTimeOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_sctp_AddTimeOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.sctp_nat_assoc = type { i32, i32 }

@SN_TIMER_QUEUE_SIZE = common dso_local global i32 0, align 4
@timer_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*, %struct.sctp_nat_assoc*)* @sctp_AddTimeOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_AddTimeOut(%struct.libalias* %0, %struct.sctp_nat_assoc* %1) #0 {
  %3 = alloca %struct.libalias*, align 8
  %4 = alloca %struct.sctp_nat_assoc*, align 8
  %5 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %3, align 8
  store %struct.sctp_nat_assoc* %1, %struct.sctp_nat_assoc** %4, align 8
  %6 = load %struct.libalias*, %struct.libalias** %3, align 8
  %7 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %6)
  %8 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.libalias*, %struct.libalias** %3, align 8
  %12 = getelementptr inbounds %struct.libalias, %struct.libalias* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %10, %14
  %16 = load %struct.libalias*, %struct.libalias** %3, align 8
  %17 = getelementptr inbounds %struct.libalias, %struct.libalias* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SN_TIMER_QUEUE_SIZE, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @SN_TIMER_QUEUE_SIZE, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.libalias*, %struct.libalias** %3, align 8
  %30 = getelementptr inbounds %struct.libalias, %struct.libalias* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %37 = load i32, i32* @timer_Q, align 4
  %38 = call i32 @LIST_INSERT_HEAD(i32* %35, %struct.sctp_nat_assoc* %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %41 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.sctp_nat_assoc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
