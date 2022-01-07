; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_new_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_new_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i64, %struct.connection* }
%struct.connection = type { i32, i32 }
%struct.iscsi_bhs_login_request = type { i32, i32 }
%struct.iscsi_bhs_login_response = type { i8*, i8*, i8*, i32, i32, i32 }

@ISCSI_BHS_OPCODE_LOGIN_RESPONSE = common dso_local global i32 0, align 4
@BHSLR_STAGE_SECURITY_NEGOTIATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pdu* (%struct.pdu*)* @login_new_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pdu* @login_new_response(%struct.pdu* %0) #0 {
  %2 = alloca %struct.pdu*, align 8
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.iscsi_bhs_login_request*, align 8
  %6 = alloca %struct.iscsi_bhs_login_response*, align 8
  store %struct.pdu* %0, %struct.pdu** %2, align 8
  %7 = load %struct.pdu*, %struct.pdu** %2, align 8
  %8 = getelementptr inbounds %struct.pdu, %struct.pdu* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iscsi_bhs_login_request*
  store %struct.iscsi_bhs_login_request* %10, %struct.iscsi_bhs_login_request** %5, align 8
  %11 = load %struct.pdu*, %struct.pdu** %2, align 8
  %12 = getelementptr inbounds %struct.pdu, %struct.pdu* %11, i32 0, i32 1
  %13 = load %struct.connection*, %struct.connection** %12, align 8
  store %struct.connection* %13, %struct.connection** %4, align 8
  %14 = load %struct.pdu*, %struct.pdu** %2, align 8
  %15 = call %struct.pdu* @pdu_new_response(%struct.pdu* %14)
  store %struct.pdu* %15, %struct.pdu** %3, align 8
  %16 = load %struct.pdu*, %struct.pdu** %3, align 8
  %17 = getelementptr inbounds %struct.pdu, %struct.pdu* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.iscsi_bhs_login_response*
  store %struct.iscsi_bhs_login_response* %19, %struct.iscsi_bhs_login_response** %6, align 8
  %20 = load i32, i32* @ISCSI_BHS_OPCODE_LOGIN_RESPONSE, align 4
  %21 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pdu*, %struct.pdu** %3, align 8
  %24 = load i32, i32* @BHSLR_STAGE_SECURITY_NEGOTIATION, align 4
  %25 = call i32 @login_set_csg(%struct.pdu* %23, i32 %24)
  %26 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %5, align 8
  %30 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %28, i32 %31, i32 4)
  %33 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %6, align 8
  %37 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.connection*, %struct.connection** %4, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = call i8* @htonl(i32 %40)
  %43 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %6, align 8
  %44 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.connection*, %struct.connection** %4, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @htonl(i32 %47)
  %49 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %6, align 8
  %50 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.connection*, %struct.connection** %4, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @htonl(i32 %53)
  %55 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %6, align 8
  %56 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.pdu*, %struct.pdu** %3, align 8
  ret %struct.pdu* %57
}

declare dso_local %struct.pdu* @pdu_new_response(%struct.pdu*) #1

declare dso_local i32 @login_set_csg(%struct.pdu*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
