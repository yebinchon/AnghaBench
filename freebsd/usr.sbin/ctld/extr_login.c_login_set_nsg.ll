; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_set_nsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_set_nsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i64 }
%struct.iscsi_bhs_login_response = type { i32 }

@BHSLR_STAGE_SECURITY_NEGOTIATION = common dso_local global i32 0, align 4
@BHSLR_STAGE_OPERATIONAL_NEGOTIATION = common dso_local global i32 0, align 4
@BHSLR_STAGE_FULL_FEATURE_PHASE = common dso_local global i32 0, align 4
@BHSLR_FLAGS_TRANSIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdu*, i32)* @login_set_nsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_set_nsg(%struct.pdu* %0, i32 %1) #0 {
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_bhs_login_response*, align 8
  store %struct.pdu* %0, %struct.pdu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @BHSLR_STAGE_SECURITY_NEGOTIATION, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BHSLR_STAGE_OPERATIONAL_NEGOTIATION, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BHSLR_STAGE_FULL_FEATURE_PHASE, align 4
  %16 = icmp eq i32 %14, %15
  br label %17

17:                                               ; preds = %13, %9, %2
  %18 = phi i1 [ true, %9 ], [ true, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.pdu*, %struct.pdu** %3, align 8
  %22 = getelementptr inbounds %struct.pdu, %struct.pdu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.iscsi_bhs_login_response*
  store %struct.iscsi_bhs_login_response* %24, %struct.iscsi_bhs_login_response** %5, align 8
  %25 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 252
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %5, align 8
  %31 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @BHSLR_FLAGS_TRANSIT, align 4
  %35 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
