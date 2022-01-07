; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_UP_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_UP_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.sctp_nat_assoc = type { i32, i32 }
%struct.sctp_nat_msg = type { i32 }

@SN_CL = common dso_local global i32 0, align 4
@SN_NAT_PKT = common dso_local global i32 0, align 4
@SN_RM = common dso_local global i32 0, align 4
@SN_TO_LOCAL = common dso_local global i32 0, align 4
@SN_DROP_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i32, %struct.sctp_nat_assoc*, %struct.sctp_nat_msg*)* @UP_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UP_process(%struct.libalias* %0, i32 %1, %struct.sctp_nat_assoc* %2, %struct.sctp_nat_msg* %3) #0 {
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
  switch i32 %12, label %54 [
    i32 128, label %13
    i32 130, label %23
    i32 129, label %28
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* @SN_CL, align 4
  %15 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %16 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.libalias*, %struct.libalias** %6, align 8
  %18 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %19 = load %struct.libalias*, %struct.libalias** %6, align 8
  %20 = call i32 @SN_C_T(%struct.libalias* %19)
  %21 = call i32 @sctp_ResetTimeOut(%struct.libalias* %17, %struct.sctp_nat_assoc* %18, i32 %20)
  %22 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %22, i32* %5, align 4
  br label %61

23:                                               ; preds = %4
  %24 = load i32, i32* @SN_RM, align 4
  %25 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %26 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %27, i32* %5, align 4
  br label %61

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SN_TO_LOCAL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %34 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.libalias*, %struct.libalias** %6, align 8
  %39 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @IsADDorDEL(%struct.libalias* %38, %struct.sctp_nat_msg* %39, i32 %40)
  switch i32 %41, label %52 [
    i32 132, label %42
    i32 131, label %47
  ]

42:                                               ; preds = %37
  %43 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %44 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @AddGlobalIPAddresses(%struct.sctp_nat_msg* %43, %struct.sctp_nat_assoc* %44, i32 %45)
  br label %52

47:                                               ; preds = %37
  %48 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %49 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @RmGlobalIPAddresses(%struct.sctp_nat_msg* %48, %struct.sctp_nat_assoc* %49, i32 %50)
  br label %52

52:                                               ; preds = %37, %47, %42
  br label %53

53:                                               ; preds = %52, %32, %28
  br label %54

54:                                               ; preds = %4, %53
  %55 = load %struct.libalias*, %struct.libalias** %6, align 8
  %56 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %57 = load %struct.libalias*, %struct.libalias** %6, align 8
  %58 = call i32 @SN_U_T(%struct.libalias* %57)
  %59 = call i32 @sctp_ResetTimeOut(%struct.libalias* %55, %struct.sctp_nat_assoc* %56, i32 %58)
  %60 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %54, %23, %13
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @sctp_ResetTimeOut(%struct.libalias*, %struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @SN_C_T(%struct.libalias*) #1

declare dso_local i32 @IsADDorDEL(%struct.libalias*, %struct.sctp_nat_msg*, i32) #1

declare dso_local i32 @AddGlobalIPAddresses(%struct.sctp_nat_msg*, %struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @RmGlobalIPAddresses(%struct.sctp_nat_msg*, %struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @SN_U_T(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
