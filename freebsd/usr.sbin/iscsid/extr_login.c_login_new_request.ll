; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_new_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_new_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i64 }
%struct.connection = type { i64, i32, i32 }
%struct.iscsi_bhs_login_request = type { i32, i32, i64, i64, i32, i32, i32 }

@ISCSI_BHS_OPCODE_LOGIN_REQUEST = common dso_local global i32 0, align 4
@ISCSI_BHS_OPCODE_IMMEDIATE = common dso_local global i32 0, align 4
@BHSLR_FLAGS_TRANSIT = common dso_local global i32 0, align 4
@BHSLR_STAGE_FULL_FEATURE_PHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"invalid csg\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid csg %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pdu* (%struct.connection*, i32)* @login_new_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pdu* @login_new_request(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pdu*, align 8
  %6 = alloca %struct.iscsi_bhs_login_request*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = call %struct.pdu* @pdu_new(%struct.connection* %8)
  store %struct.pdu* %9, %struct.pdu** %5, align 8
  %10 = load %struct.pdu*, %struct.pdu** %5, align 8
  %11 = getelementptr inbounds %struct.pdu, %struct.pdu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.iscsi_bhs_login_request*
  store %struct.iscsi_bhs_login_request* %13, %struct.iscsi_bhs_login_request** %6, align 8
  %14 = load i32, i32* @ISCSI_BHS_OPCODE_LOGIN_REQUEST, align 4
  %15 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @BHSLR_FLAGS_TRANSIT, align 4
  %20 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %6, align 8
  %21 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %26 [
    i32 128, label %23
    i32 129, label %24
  ]

23:                                               ; preds = %2
  store i32 129, i32* %7, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @BHSLR_STAGE_FULL_FEATURE_PHASE, align 4
  store i32 %25, i32* %7, align 4
  br label %30

26:                                               ; preds = %2
  %27 = call i32 @assert(i32 0)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %24, %23
  %31 = load %struct.pdu*, %struct.pdu** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @login_set_csg(%struct.pdu* %31, i32 %32)
  %34 = load %struct.pdu*, %struct.pdu** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @login_set_nsg(%struct.pdu* %34, i32 %35)
  %37 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %6, align 8
  %38 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.connection*, %struct.connection** %3, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 2
  %42 = call i32 @memcpy(i32 %39, i32* %41, i32 4)
  %43 = load %struct.connection*, %struct.connection** %3, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @htons(i32 %45)
  %47 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %6, align 8
  %48 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %6, align 8
  %50 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.connection*, %struct.connection** %3, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i32 @htonl(i64 %56)
  %58 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %6, align 8
  %59 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.pdu*, %struct.pdu** %5, align 8
  ret %struct.pdu* %60
}

declare dso_local %struct.pdu* @pdu_new(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @log_errx(i32, i8*, i32) #1

declare dso_local i32 @login_set_csg(%struct.pdu*, i32) #1

declare dso_local i32 @login_set_nsg(%struct.pdu*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
