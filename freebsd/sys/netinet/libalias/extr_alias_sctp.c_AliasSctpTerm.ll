; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_AliasSctpTerm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_AliasSctpTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { %struct.TYPE_2__, %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc* }
%struct.TYPE_2__ = type { %struct.sctp_nat_assoc* }
%struct.sctp_nat_assoc = type { i32 }

@SN_LOG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Removing SCTP NAT Instance\0A\00", align 1
@SN_TIMER_QUEUE_SIZE = common dso_local global i32 0, align 4
@timer_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AliasSctpTerm(%struct.libalias* %0) #0 {
  %2 = alloca %struct.libalias*, align 8
  %3 = alloca %struct.sctp_nat_assoc*, align 8
  %4 = alloca %struct.sctp_nat_assoc*, align 8
  %5 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %2, align 8
  %6 = load %struct.libalias*, %struct.libalias** %2, align 8
  %7 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %6)
  %8 = load i32, i32* @SN_LOG_EVENT, align 4
  %9 = call i32 @SctpAliasLog(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @SN_LOG(i32 %8, i32 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %37, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SN_TIMER_QUEUE_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load %struct.libalias*, %struct.libalias** %2, align 8
  %17 = getelementptr inbounds %struct.libalias, %struct.libalias* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %19, i64 %21
  %23 = call %struct.sctp_nat_assoc* @LIST_FIRST(%struct.sctp_nat_assoc* %22)
  store %struct.sctp_nat_assoc* %23, %struct.sctp_nat_assoc** %3, align 8
  br label %24

24:                                               ; preds = %27, %15
  %25 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %26 = icmp ne %struct.sctp_nat_assoc* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %29 = call i32 @freeGlobalAddressList(%struct.sctp_nat_assoc* %28)
  %30 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %31 = load i32, i32* @timer_Q, align 4
  %32 = call %struct.sctp_nat_assoc* @LIST_NEXT(%struct.sctp_nat_assoc* %30, i32 %31)
  store %struct.sctp_nat_assoc* %32, %struct.sctp_nat_assoc** %4, align 8
  %33 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %3, align 8
  %34 = call i32 @sn_free(%struct.sctp_nat_assoc* %33)
  %35 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  store %struct.sctp_nat_assoc* %35, %struct.sctp_nat_assoc** %3, align 8
  br label %24

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %11

40:                                               ; preds = %11
  %41 = load %struct.libalias*, %struct.libalias** %2, align 8
  %42 = getelementptr inbounds %struct.libalias, %struct.libalias* %41, i32 0, i32 2
  %43 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %42, align 8
  %44 = call i32 @sn_free(%struct.sctp_nat_assoc* %43)
  %45 = load %struct.libalias*, %struct.libalias** %2, align 8
  %46 = getelementptr inbounds %struct.libalias, %struct.libalias* %45, i32 0, i32 1
  %47 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %46, align 8
  %48 = call i32 @sn_free(%struct.sctp_nat_assoc* %47)
  %49 = load %struct.libalias*, %struct.libalias** %2, align 8
  %50 = getelementptr inbounds %struct.libalias, %struct.libalias* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %51, align 8
  %53 = call i32 @sn_free(%struct.sctp_nat_assoc* %52)
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @SN_LOG(i32, i32) #1

declare dso_local i32 @SctpAliasLog(i8*) #1

declare dso_local %struct.sctp_nat_assoc* @LIST_FIRST(%struct.sctp_nat_assoc*) #1

declare dso_local i32 @freeGlobalAddressList(%struct.sctp_nat_assoc*) #1

declare dso_local %struct.sctp_nat_assoc* @LIST_NEXT(%struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @sn_free(%struct.sctp_nat_assoc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
