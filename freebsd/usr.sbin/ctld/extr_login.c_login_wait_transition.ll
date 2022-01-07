; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_wait_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_wait_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.pdu = type { i64 }
%struct.iscsi_bhs_login_request = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"waiting for state transition request\00", align 1
@BHSLR_FLAGS_TRANSIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"got no \22T\22 flag after answering AuthMethod\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"got state transition request\00", align 1
@BHSLR_STAGE_OPERATIONAL_NEGOTIATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*)* @login_wait_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_wait_transition(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.pdu*, align 8
  %5 = alloca %struct.iscsi_bhs_login_request*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %6 = call i32 @log_debugx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = call %struct.pdu* @login_receive(%struct.connection* %7, i32 0)
  store %struct.pdu* %8, %struct.pdu** %3, align 8
  %9 = load %struct.pdu*, %struct.pdu** %3, align 8
  %10 = getelementptr inbounds %struct.pdu, %struct.pdu* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.iscsi_bhs_login_request*
  store %struct.iscsi_bhs_login_request* %12, %struct.iscsi_bhs_login_request** %5, align 8
  %13 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BHSLR_FLAGS_TRANSIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.pdu*, %struct.pdu** %3, align 8
  %21 = call i32 @login_send_error(%struct.pdu* %20, i32 2, i32 0)
  %22 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %1
  %24 = call i32 @log_debugx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.pdu*, %struct.pdu** %3, align 8
  %26 = call %struct.pdu* @login_new_response(%struct.pdu* %25)
  store %struct.pdu* %26, %struct.pdu** %4, align 8
  %27 = load %struct.pdu*, %struct.pdu** %3, align 8
  %28 = call i32 @pdu_delete(%struct.pdu* %27)
  %29 = load %struct.pdu*, %struct.pdu** %4, align 8
  %30 = load i32, i32* @BHSLR_STAGE_OPERATIONAL_NEGOTIATION, align 4
  %31 = call i32 @login_set_nsg(%struct.pdu* %29, i32 %30)
  %32 = load %struct.pdu*, %struct.pdu** %4, align 8
  %33 = call i32 @pdu_send(%struct.pdu* %32)
  %34 = load %struct.pdu*, %struct.pdu** %4, align 8
  %35 = call i32 @pdu_delete(%struct.pdu* %34)
  %36 = load %struct.connection*, %struct.connection** %2, align 8
  %37 = call i32 @login_negotiate(%struct.connection* %36, i32* null)
  ret void
}

declare dso_local i32 @log_debugx(i8*) #1

declare dso_local %struct.pdu* @login_receive(%struct.connection*, i32) #1

declare dso_local i32 @login_send_error(%struct.pdu*, i32, i32) #1

declare dso_local i32 @log_errx(i32, i8*) #1

declare dso_local %struct.pdu* @login_new_response(%struct.pdu*) #1

declare dso_local i32 @pdu_delete(%struct.pdu*) #1

declare dso_local i32 @login_set_nsg(%struct.pdu*, i32) #1

declare dso_local i32 @pdu_send(%struct.pdu*) #1

declare dso_local i32 @login_negotiate(%struct.connection*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
