; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_discovery.c_logout_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_discovery.c_logout_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.connection = type { i64 }
%struct.iscsi_bhs_logout_response = type { i32, i32 }

@ISCSI_BHS_OPCODE_LOGOUT_RESPONSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"protocol error: received invalid opcode 0x%x\00", align 1
@BHSLR_RESPONSE_CLOSED_SUCCESSFULLY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"received Logout Response with reason %d\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"received Logout PDU with wrong StatSN: is %u, should be %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pdu* (%struct.connection*)* @logout_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pdu* @logout_receive(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.iscsi_bhs_logout_response*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %5 = load %struct.connection*, %struct.connection** %2, align 8
  %6 = call %struct.pdu* @pdu_new(%struct.connection* %5)
  store %struct.pdu* %6, %struct.pdu** %3, align 8
  %7 = load %struct.pdu*, %struct.pdu** %3, align 8
  %8 = call i32 @pdu_receive(%struct.pdu* %7)
  %9 = load %struct.pdu*, %struct.pdu** %3, align 8
  %10 = getelementptr inbounds %struct.pdu, %struct.pdu* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ISCSI_BHS_OPCODE_LOGOUT_RESPONSE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.pdu*, %struct.pdu** %3, align 8
  %18 = getelementptr inbounds %struct.pdu, %struct.pdu* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, i64, ...) @log_errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.pdu*, %struct.pdu** %3, align 8
  %25 = getelementptr inbounds %struct.pdu, %struct.pdu* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = bitcast %struct.TYPE_2__* %26 to %struct.iscsi_bhs_logout_response*
  store %struct.iscsi_bhs_logout_response* %27, %struct.iscsi_bhs_logout_response** %4, align 8
  %28 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %29 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ntohs(i32 %30)
  %32 = load i64, i64* @BHSLR_RESPONSE_CLOSED_SUCCESSFULLY, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %36 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ntohs(i32 %37)
  %39 = call i32 @log_warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %34, %23
  %41 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %42 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ntohl(i32 %43)
  %45 = load %struct.connection*, %struct.connection** %2, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ntohl(i32 %53)
  %55 = load %struct.connection*, %struct.connection** %2, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = call i32 (i32, i8*, i64, ...) @log_errx(i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %54, i64 %58)
  br label %60

60:                                               ; preds = %50, %40
  %61 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %62 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ntohl(i32 %63)
  %65 = load %struct.connection*, %struct.connection** %2, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.pdu*, %struct.pdu** %3, align 8
  ret %struct.pdu* %67
}

declare dso_local %struct.pdu* @pdu_new(%struct.connection*) #1

declare dso_local i32 @pdu_receive(%struct.pdu*) #1

declare dso_local i32 @log_errx(i32, i8*, i64, ...) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @log_warnx(i8*, i64) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
