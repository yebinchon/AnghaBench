; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_INa_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_INa_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.sctp_nat_assoc = type { i32, i8* }
%struct.sctp_nat_msg = type { i32 }

@SN_NAT_PKT = common dso_local global i32 0, align 4
@SN_WAIT_TOLOCAL = common dso_local global i32 0, align 4
@SN_DROP_PKT = common dso_local global i32 0, align 4
@SN_WAIT_TOGLOBAL = common dso_local global i32 0, align 4
@SN_BOTH_TBL = common dso_local global i32 0, align 4
@SN_UP = common dso_local global i8* null, align 8
@SN_RM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i32, %struct.sctp_nat_assoc*, %struct.sctp_nat_msg*)* @INa_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @INa_process(%struct.libalias* %0, i32 %1, %struct.sctp_nat_assoc* %2, %struct.sctp_nat_msg* %3) #0 {
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
  switch i32 %12, label %73 [
    i32 131, label %13
    i32 130, label %20
    i32 132, label %68
  ]

13:                                               ; preds = %4
  %14 = load %struct.libalias*, %struct.libalias** %6, align 8
  %15 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %16 = load %struct.libalias*, %struct.libalias** %6, align 8
  %17 = call i32 @SN_I_T(%struct.libalias* %16)
  %18 = call i32 @sctp_ResetTimeOut(%struct.libalias* %14, %struct.sctp_nat_assoc* %15, i32 %17)
  %19 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %19, i32* %5, align 4
  br label %75

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %42 [
    i32 128, label %22
    i32 129, label %32
  ]

22:                                               ; preds = %20
  %23 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %24 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SN_WAIT_TOLOCAL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @SN_DROP_PKT, align 4
  store i32 %30, i32* %5, align 4
  br label %75

31:                                               ; preds = %22
  br label %42

32:                                               ; preds = %20
  %33 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %34 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SN_WAIT_TOGLOBAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @SN_DROP_PKT, align 4
  store i32 %40, i32* %5, align 4
  br label %75

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %20, %31
  %43 = load %struct.libalias*, %struct.libalias** %6, align 8
  %44 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @IsASCONFack(%struct.libalias* %43, %struct.sctp_nat_msg* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load i32, i32* @SN_BOTH_TBL, align 4
  %50 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %51 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i8*, i8** @SN_UP, align 8
  %55 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %56 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.libalias*, %struct.libalias** %6, align 8
  %58 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %59 = load %struct.libalias*, %struct.libalias** %6, align 8
  %60 = call i32 @SN_U_T(%struct.libalias* %59)
  %61 = call i32 @sctp_ResetTimeOut(%struct.libalias* %57, %struct.sctp_nat_assoc* %58, i32 %60)
  %62 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %62, i32* %5, align 4
  br label %75

63:                                               ; preds = %42
  %64 = load i8*, i8** @SN_RM, align 8
  %65 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %66 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %67, i32* %5, align 4
  br label %75

68:                                               ; preds = %4
  %69 = load i8*, i8** @SN_RM, align 8
  %70 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %71 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %72, i32* %5, align 4
  br label %75

73:                                               ; preds = %4
  %74 = load i32, i32* @SN_DROP_PKT, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %68, %63, %48, %39, %29, %13
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @sctp_ResetTimeOut(%struct.libalias*, %struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @SN_I_T(%struct.libalias*) #1

declare dso_local i32 @IsASCONFack(%struct.libalias*, %struct.sctp_nat_msg*, i32) #1

declare dso_local i32 @SN_U_T(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
