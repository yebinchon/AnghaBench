; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_INi_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_INi_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.sctp_nat_assoc = type { i8*, i32, i32, i32, i32 }
%struct.sctp_nat_msg = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SN_NAT_PKT = common dso_local global i32 0, align 4
@SN_RM = common dso_local global i8* null, align 8
@SN_SEND_ABORT = common dso_local global i32 0, align 4
@SN_UP = common dso_local global i8* null, align 8
@SN_DROP_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i32, %struct.sctp_nat_assoc*, %struct.sctp_nat_msg*)* @INi_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @INi_process(%struct.libalias* %0, i32 %1, %struct.sctp_nat_assoc* %2, %struct.sctp_nat_msg* %3) #0 {
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
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %97 [
    i32 131, label %13
    i32 130, label %20
    i32 132, label %92
  ]

13:                                               ; preds = %4
  %14 = load %struct.libalias*, %struct.libalias** %6, align 8
  %15 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %16 = load %struct.libalias*, %struct.libalias** %6, align 8
  %17 = call i32 @SN_I_T(%struct.libalias* %16)
  %18 = call i32 @sctp_ResetTimeOut(%struct.libalias* %14, %struct.sctp_nat_assoc* %15, i32 %17)
  %19 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %19, i32* %5, align 4
  br label %99

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %82 [
    i32 128, label %22
    i32 129, label %56
  ]

22:                                               ; preds = %20
  %23 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %24 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %29 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @AddGlobalIPAddresses(%struct.sctp_nat_msg* %28, %struct.sctp_nat_assoc* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %34 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %40 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.libalias*, %struct.libalias** %6, align 8
  %42 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %43 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %44 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @AddSctpAssocLocal(%struct.libalias* %41, %struct.sctp_nat_assoc* %42, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = load i8*, i8** @SN_RM, align 8
  %52 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %53 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @SN_SEND_ABORT, align 4
  store i32 %54, i32* %5, align 4
  br label %99

55:                                               ; preds = %32
  br label %82

56:                                               ; preds = %20
  %57 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %58 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %63 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %9, align 8
  %65 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %71 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.libalias*, %struct.libalias** %6, align 8
  %73 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %74 = call i32 @AddSctpAssocGlobal(%struct.libalias* %72, %struct.sctp_nat_assoc* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %56
  %77 = load i8*, i8** @SN_RM, align 8
  %78 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %79 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @SN_SEND_ABORT, align 4
  store i32 %80, i32* %5, align 4
  br label %99

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %20, %81, %55
  %83 = load i8*, i8** @SN_UP, align 8
  %84 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %85 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.libalias*, %struct.libalias** %6, align 8
  %87 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %88 = load %struct.libalias*, %struct.libalias** %6, align 8
  %89 = call i32 @SN_U_T(%struct.libalias* %88)
  %90 = call i32 @sctp_ResetTimeOut(%struct.libalias* %86, %struct.sctp_nat_assoc* %87, i32 %89)
  %91 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %91, i32* %5, align 4
  br label %99

92:                                               ; preds = %4
  %93 = load i8*, i8** @SN_RM, align 8
  %94 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %95 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @SN_NAT_PKT, align 4
  store i32 %96, i32* %5, align 4
  br label %99

97:                                               ; preds = %4
  %98 = load i32, i32* @SN_DROP_PKT, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %92, %82, %76, %50, %13
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @sctp_ResetTimeOut(%struct.libalias*, %struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @SN_I_T(%struct.libalias*) #1

declare dso_local i32 @AddGlobalIPAddresses(%struct.sctp_nat_msg*, %struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @AddSctpAssocLocal(%struct.libalias*, %struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @AddSctpAssocGlobal(%struct.libalias*, %struct.sctp_nat_assoc*) #1

declare dso_local i32 @SN_U_T(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
