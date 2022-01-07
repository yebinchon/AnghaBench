; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_check_address_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_check_address_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }

@SCTP_PCB_FLAGS_BOUNDALL = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_DO_ASCONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_check_address_list(%struct.sctp_tcb* %0, %struct.mbuf* %1, i32 %2, i32 %3, %struct.sockaddr* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.sctp_tcb*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %10, align 8
  store %struct.mbuf* %1, %struct.mbuf** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @sctp_process_initack_addresses(%struct.sctp_tcb* %19, %struct.mbuf* %20, i32 %21, i32 %22)
  %24 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %25 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SCTP_PCB_FLAGS_BOUNDALL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %9
  %33 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @sctp_check_address_list_all(%struct.sctp_tcb* %33, %struct.mbuf* %34, i32 %35, i32 %36, %struct.sockaddr* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  br label %58

43:                                               ; preds = %9
  %44 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %45 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* @SCTP_PCB_FLAGS_DO_ASCONF, align 4
  %48 = call i64 @sctp_is_feature_on(%struct.TYPE_2__* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %56 = call i32 @sctp_check_address_list_ep(%struct.sctp_tcb* %51, %struct.mbuf* %52, i32 %53, i32 %54, %struct.sockaddr* %55)
  br label %57

57:                                               ; preds = %50, %43
  br label %58

58:                                               ; preds = %57, %32
  ret void
}

declare dso_local i32 @sctp_process_initack_addresses(%struct.sctp_tcb*, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @sctp_check_address_list_all(%struct.sctp_tcb*, %struct.mbuf*, i32, i32, %struct.sockaddr*, i32, i32, i32, i32) #1

declare dso_local i64 @sctp_is_feature_on(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @sctp_check_address_list_ep(%struct.sctp_tcb*, %struct.mbuf*, i32, i32, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
