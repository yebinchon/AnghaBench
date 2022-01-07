; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_send_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i64 }
%struct.iscsi_bhs_login_response = type { i8, i8 }

@.str = private unnamed_addr constant [82 x i8] c"sending Login Response PDU with failure class 0x%x/0x%x; see next line for reason\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdu*, i8, i8)* @login_send_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_send_error(%struct.pdu* %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca %struct.pdu*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.pdu*, align 8
  %8 = alloca %struct.iscsi_bhs_login_response*, align 8
  store %struct.pdu* %0, %struct.pdu** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load i8, i8* %5, align 1
  %10 = load i8, i8* %6, align 1
  %11 = call i32 @log_debugx(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i8 signext %9, i8 signext %10)
  %12 = load %struct.pdu*, %struct.pdu** %4, align 8
  %13 = call %struct.pdu* @login_new_response(%struct.pdu* %12)
  store %struct.pdu* %13, %struct.pdu** %7, align 8
  %14 = load %struct.pdu*, %struct.pdu** %7, align 8
  %15 = getelementptr inbounds %struct.pdu, %struct.pdu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.iscsi_bhs_login_response*
  store %struct.iscsi_bhs_login_response* %17, %struct.iscsi_bhs_login_response** %8, align 8
  %18 = load i8, i8* %5, align 1
  %19 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %8, align 8
  %20 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %19, i32 0, i32 0
  store i8 %18, i8* %20, align 1
  %21 = load i8, i8* %6, align 1
  %22 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %8, align 8
  %23 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %22, i32 0, i32 1
  store i8 %21, i8* %23, align 1
  %24 = load %struct.pdu*, %struct.pdu** %7, align 8
  %25 = call i32 @pdu_send(%struct.pdu* %24)
  %26 = load %struct.pdu*, %struct.pdu** %7, align 8
  %27 = call i32 @pdu_delete(%struct.pdu* %26)
  ret void
}

declare dso_local i32 @log_debugx(i8*, i8 signext, i8 signext) #1

declare dso_local %struct.pdu* @login_new_response(%struct.pdu*) #1

declare dso_local i32 @pdu_send(%struct.pdu*) #1

declare dso_local i32 @pdu_delete(%struct.pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
