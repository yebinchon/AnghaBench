; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_ProcessSctpMsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_ProcessSctpMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.sctp_nat_msg = type { i32 }
%struct.sctp_nat_assoc = type { i32 }

@SN_NAT_PKT = common dso_local global i32 0, align 4
@SN_RM = common dso_local global i32 0, align 4
@SN_PROCESSING_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i32, %struct.sctp_nat_msg*, %struct.sctp_nat_assoc*)* @ProcessSctpMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessSctpMsg(%struct.libalias* %0, i32 %1, %struct.sctp_nat_msg* %2, %struct.sctp_nat_assoc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libalias*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_nat_msg*, align 8
  %9 = alloca %struct.sctp_nat_assoc*, align 8
  %10 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sctp_nat_msg* %2, %struct.sctp_nat_msg** %8, align 8
  store %struct.sctp_nat_assoc* %3, %struct.sctp_nat_assoc** %9, align 8
  %11 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %9, align 8
  %12 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %53 [
    i32 131, label %14
    i32 129, label %29
    i32 130, label %35
    i32 128, label %41
    i32 132, label %47
  ]

14:                                               ; preds = %4
  %15 = load %struct.libalias*, %struct.libalias** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %9, align 8
  %18 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %8, align 8
  %19 = call i32 @ID_process(%struct.libalias* %15, i32 %16, %struct.sctp_nat_assoc* %17, %struct.sctp_nat_msg* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @SN_NAT_PKT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @SN_RM, align 4
  %25 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %9, align 8
  %26 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %14
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %55

29:                                               ; preds = %4
  %30 = load %struct.libalias*, %struct.libalias** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %9, align 8
  %33 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %8, align 8
  %34 = call i32 @INi_process(%struct.libalias* %30, i32 %31, %struct.sctp_nat_assoc* %32, %struct.sctp_nat_msg* %33)
  store i32 %34, i32* %5, align 4
  br label %55

35:                                               ; preds = %4
  %36 = load %struct.libalias*, %struct.libalias** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %9, align 8
  %39 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %8, align 8
  %40 = call i32 @INa_process(%struct.libalias* %36, i32 %37, %struct.sctp_nat_assoc* %38, %struct.sctp_nat_msg* %39)
  store i32 %40, i32* %5, align 4
  br label %55

41:                                               ; preds = %4
  %42 = load %struct.libalias*, %struct.libalias** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %9, align 8
  %45 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %8, align 8
  %46 = call i32 @UP_process(%struct.libalias* %42, i32 %43, %struct.sctp_nat_assoc* %44, %struct.sctp_nat_msg* %45)
  store i32 %46, i32* %5, align 4
  br label %55

47:                                               ; preds = %4
  %48 = load %struct.libalias*, %struct.libalias** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %9, align 8
  %51 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %8, align 8
  %52 = call i32 @CL_process(%struct.libalias* %48, i32 %49, %struct.sctp_nat_assoc* %50, %struct.sctp_nat_msg* %51)
  store i32 %52, i32* %5, align 4
  br label %55

53:                                               ; preds = %4
  %54 = load i32, i32* @SN_PROCESSING_ERROR, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %47, %41, %35, %29, %27
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @ID_process(%struct.libalias*, i32, %struct.sctp_nat_assoc*, %struct.sctp_nat_msg*) #1

declare dso_local i32 @INi_process(%struct.libalias*, i32, %struct.sctp_nat_assoc*, %struct.sctp_nat_msg*) #1

declare dso_local i32 @INa_process(%struct.libalias*, i32, %struct.sctp_nat_assoc*, %struct.sctp_nat_msg*) #1

declare dso_local i32 @UP_process(%struct.libalias*, i32, %struct.sctp_nat_assoc*, %struct.sctp_nat_msg*) #1

declare dso_local i32 @CL_process(%struct.libalias*, i32, %struct.sctp_nat_assoc*, %struct.sctp_nat_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
