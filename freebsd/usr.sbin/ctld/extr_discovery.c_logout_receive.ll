; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_discovery.c_logout_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_discovery.c_logout_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.connection = type { i32, i32 }
%struct.iscsi_bhs_logout_request = type { i32, i32, i32, i32 }

@ISCSI_BHS_OPCODE_IMMEDIATE = common dso_local global i32 0, align 4
@ISCSI_BHS_OPCODE_LOGOUT_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"protocol error: received invalid opcode 0x%x\00", align 1
@BHSLR_REASON_CLOSE_SESSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"received Logout PDU with invalid reason 0x%x; continuing anyway\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"received Logout PDU with decreasing CmdSN: was %u, is %u\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"received Logout PDU with wrong ExpStatSN: is %u, should be %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pdu* (%struct.connection*)* @logout_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pdu* @logout_receive(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.iscsi_bhs_logout_request*, align 8
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
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, i32* @ISCSI_BHS_OPCODE_LOGOUT_REQUEST, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.pdu*, %struct.pdu** %3, align 8
  %21 = getelementptr inbounds %struct.pdu, %struct.pdu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, i32, ...) @log_errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.pdu*, %struct.pdu** %3, align 8
  %28 = getelementptr inbounds %struct.pdu, %struct.pdu* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = bitcast %struct.TYPE_2__* %29 to %struct.iscsi_bhs_logout_request*
  store %struct.iscsi_bhs_logout_request* %30, %struct.iscsi_bhs_logout_request** %4, align 8
  %31 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  %35 = load i32, i32* @BHSLR_REASON_CLOSE_SESSION, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 127
  %42 = call i32 @log_debugx(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %26
  %44 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %45 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohl(i32 %46)
  %48 = load %struct.connection*, %struct.connection** %2, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ISCSI_SNLT(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load %struct.connection*, %struct.connection** %2, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %58 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohl(i32 %59)
  %61 = call i32 (i32, i8*, i32, ...) @log_errx(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %53, %43
  %63 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %64 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ntohl(i32 %65)
  %67 = load %struct.connection*, %struct.connection** %2, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %73 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohl(i32 %74)
  %76 = load %struct.connection*, %struct.connection** %2, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, i32, ...) @log_errx(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %71, %62
  %81 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %82 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ntohl(i32 %83)
  %85 = load %struct.connection*, %struct.connection** %2, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %4, align 8
  %88 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %80
  %94 = load %struct.connection*, %struct.connection** %2, align 8
  %95 = getelementptr inbounds %struct.connection, %struct.connection* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %93, %80
  %99 = load %struct.pdu*, %struct.pdu** %3, align 8
  ret %struct.pdu* %99
}

declare dso_local %struct.pdu* @pdu_new(%struct.connection*) #1

declare dso_local i32 @pdu_receive(%struct.pdu*) #1

declare dso_local i32 @log_errx(i32, i8*, i32, ...) #1

declare dso_local i32 @log_debugx(i8*, i32) #1

declare dso_local i64 @ISCSI_SNLT(i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
