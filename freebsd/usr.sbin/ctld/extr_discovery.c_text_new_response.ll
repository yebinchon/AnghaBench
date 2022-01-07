; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_discovery.c_text_new_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_discovery.c_text_new_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i64, %struct.connection* }
%struct.connection = type { i32, i32 }
%struct.iscsi_bhs_text_request = type { i32, i32, i32 }
%struct.iscsi_bhs_text_response = type { i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@ISCSI_BHS_OPCODE_TEXT_RESPONSE = common dso_local global i32 0, align 4
@BHSTR_FLAGS_FINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pdu* (%struct.pdu*)* @text_new_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pdu* @text_new_response(%struct.pdu* %0) #0 {
  %2 = alloca %struct.pdu*, align 8
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.iscsi_bhs_text_request*, align 8
  %6 = alloca %struct.iscsi_bhs_text_response*, align 8
  store %struct.pdu* %0, %struct.pdu** %2, align 8
  %7 = load %struct.pdu*, %struct.pdu** %2, align 8
  %8 = getelementptr inbounds %struct.pdu, %struct.pdu* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iscsi_bhs_text_request*
  store %struct.iscsi_bhs_text_request* %10, %struct.iscsi_bhs_text_request** %5, align 8
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
  %19 = inttoptr i64 %18 to %struct.iscsi_bhs_text_response*
  store %struct.iscsi_bhs_text_response* %19, %struct.iscsi_bhs_text_response** %6, align 8
  %20 = load i32, i32* @ISCSI_BHS_OPCODE_TEXT_RESPONSE, align 4
  %21 = load %struct.iscsi_bhs_text_response*, %struct.iscsi_bhs_text_response** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_bhs_text_response, %struct.iscsi_bhs_text_response* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @BHSTR_FLAGS_FINAL, align 4
  %24 = load %struct.iscsi_bhs_text_response*, %struct.iscsi_bhs_text_response** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_bhs_text_response, %struct.iscsi_bhs_text_response* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.iscsi_bhs_text_request*, %struct.iscsi_bhs_text_request** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_bhs_text_request, %struct.iscsi_bhs_text_request* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iscsi_bhs_text_response*, %struct.iscsi_bhs_text_response** %6, align 8
  %30 = getelementptr inbounds %struct.iscsi_bhs_text_response, %struct.iscsi_bhs_text_response* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.iscsi_bhs_text_request*, %struct.iscsi_bhs_text_request** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_bhs_text_request, %struct.iscsi_bhs_text_request* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iscsi_bhs_text_response*, %struct.iscsi_bhs_text_response** %6, align 8
  %35 = getelementptr inbounds %struct.iscsi_bhs_text_response, %struct.iscsi_bhs_text_response* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.iscsi_bhs_text_request*, %struct.iscsi_bhs_text_request** %5, align 8
  %37 = getelementptr inbounds %struct.iscsi_bhs_text_request, %struct.iscsi_bhs_text_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iscsi_bhs_text_response*, %struct.iscsi_bhs_text_response** %6, align 8
  %40 = getelementptr inbounds %struct.iscsi_bhs_text_response, %struct.iscsi_bhs_text_response* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.connection*, %struct.connection** %4, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = call i8* @htonl(i32 %43)
  %46 = load %struct.iscsi_bhs_text_response*, %struct.iscsi_bhs_text_response** %6, align 8
  %47 = getelementptr inbounds %struct.iscsi_bhs_text_response, %struct.iscsi_bhs_text_response* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.connection*, %struct.connection** %4, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @htonl(i32 %50)
  %52 = load %struct.iscsi_bhs_text_response*, %struct.iscsi_bhs_text_response** %6, align 8
  %53 = getelementptr inbounds %struct.iscsi_bhs_text_response, %struct.iscsi_bhs_text_response* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.connection*, %struct.connection** %4, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @htonl(i32 %56)
  %58 = load %struct.iscsi_bhs_text_response*, %struct.iscsi_bhs_text_response** %6, align 8
  %59 = getelementptr inbounds %struct.iscsi_bhs_text_response, %struct.iscsi_bhs_text_response* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.pdu*, %struct.pdu** %3, align 8
  ret %struct.pdu* %60
}

declare dso_local %struct.pdu* @pdu_new_response(%struct.pdu*) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
