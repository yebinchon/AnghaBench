; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_discovery.c_logout_new_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_discovery.c_logout_new_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i64 }
%struct.connection = type { i64 }
%struct.iscsi_bhs_logout_request = type { i32, i32, i32, i64, i64 }

@ISCSI_BHS_OPCODE_LOGOUT_REQUEST = common dso_local global i32 0, align 4
@ISCSI_BHS_OPCODE_IMMEDIATE = common dso_local global i32 0, align 4
@BHSLR_REASON_CLOSE_SESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pdu* (%struct.connection*)* @logout_new_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pdu* @logout_new_request(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.iscsi_bhs_logout_request*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %5 = load %struct.connection*, %struct.connection** %2, align 8
  %6 = call %struct.pdu* @pdu_new(%struct.connection* %5)
  store %struct.pdu* %6, %struct.pdu** %3, align 8
  %7 = load %struct.pdu*, %struct.pdu** %3, align 8
  %8 = getelementptr inbounds %struct.pdu, %struct.pdu* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iscsi_bhs_logout_request*
  store %struct.iscsi_bhs_logout_request* %10, %struct.iscsi_bhs_logout_request** %4, align 8
  %11 = load i32, i32* @ISCSI_BHS_OPCODE_LOGOUT_REQUEST, align 4
  %12 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @BHSLR_REASON_CLOSE_SESSION, align 4
  %17 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 128
  store i32 %22, i32* %20, align 4
  %23 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %26 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.connection*, %struct.connection** %2, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @htonl(i64 %30)
  %32 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pdu*, %struct.pdu** %3, align 8
  ret %struct.pdu* %34
}

declare dso_local %struct.pdu* @pdu_new(%struct.connection*) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
