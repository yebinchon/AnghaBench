; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_CL_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_CL_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.sctp_nat_assoc = type { i8* }
%struct.sctp_nat_msg = type { i32 }

@SN_CL = common dso_local global i8* null, align 8
@sysctl_holddown_timer = common dso_local global i32 0, align 4
@SN_RM = common dso_local global i8* null, align 8
@SN_NAT_PKT = common dso_local global i32 0, align 4
@SN_DROP_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i32, %struct.sctp_nat_assoc*, %struct.sctp_nat_msg*)* @CL_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CL_process(%struct.libalias* %0, i32 %1, %struct.sctp_nat_assoc* %2, %struct.sctp_nat_msg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libalias*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_nat_assoc*, align 8
  %9 = alloca %struct.sctp_nat_msg*, align 8
  store %struct.libalias* %0, %struct.libalias** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sctp_nat_assoc* %2, %struct.sctp_nat_assoc** %8, align 8
  store %struct.sctp_nat_msg* %3, %struct.sctp_nat_msg** %9, align 8
  %10 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %11 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %46 [
    i32 128, label %13
    i32 129, label %31
    i32 130, label %41
  ]

13:                                               ; preds = %4
  %14 = load i8*, i8** @SN_CL, align 8
  %15 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %16 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @sysctl_holddown_timer, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.libalias*, %struct.libalias** %6, align 8
  %21 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %22 = load %struct.libalias*, %struct.libalias** %6, align 8
  %23 = call i32 @SN_X_T(%struct.libalias* %22)
  %24 = call i32 @sctp_ResetTimeOut(%struct.libalias* %20, %struct.sctp_nat_assoc* %21, i32 %23)
  br label %29

25:                                               ; preds = %13
  %26 = load i8*, i8** @SN_RM, align 8
  %27 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %28 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %30, i32* %5, align 4
  br label %48

31:                                               ; preds = %4
  %32 = load i8*, i8** @SN_CL, align 8
  %33 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %34 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.libalias*, %struct.libalias** %6, align 8
  %36 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %37 = load %struct.libalias*, %struct.libalias** %6, align 8
  %38 = call i32 @SN_C_T(%struct.libalias* %37)
  %39 = call i32 @sctp_ResetTimeOut(%struct.libalias* %35, %struct.sctp_nat_assoc* %36, i32 %38)
  %40 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %40, i32* %5, align 4
  br label %48

41:                                               ; preds = %4
  %42 = load i8*, i8** @SN_RM, align 8
  %43 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %44 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %45, i32* %5, align 4
  br label %48

46:                                               ; preds = %4
  %47 = load i32, i32* @SN_DROP_PKT, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %41, %31, %29
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @sctp_ResetTimeOut(%struct.libalias*, %struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @SN_X_T(%struct.libalias*) #1

declare dso_local i32 @SN_C_T(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
