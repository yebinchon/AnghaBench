; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_send_chap_a.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_send_chap_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.pdu = type { i32 }
%struct.keys = type { i32 }

@BHSLR_STAGE_SECURITY_NEGOTIATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CHAP_A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*)* @login_send_chap_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_send_chap_a(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.keys*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %5 = load %struct.connection*, %struct.connection** %2, align 8
  %6 = load i32, i32* @BHSLR_STAGE_SECURITY_NEGOTIATION, align 4
  %7 = call %struct.pdu* @login_new_request(%struct.connection* %5, i32 %6)
  store %struct.pdu* %7, %struct.pdu** %3, align 8
  %8 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %8, %struct.keys** %4, align 8
  %9 = load %struct.keys*, %struct.keys** %4, align 8
  %10 = call i32 @keys_add(%struct.keys* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.keys*, %struct.keys** %4, align 8
  %12 = load %struct.pdu*, %struct.pdu** %3, align 8
  %13 = call i32 @keys_save(%struct.keys* %11, %struct.pdu* %12)
  %14 = load %struct.keys*, %struct.keys** %4, align 8
  %15 = call i32 @keys_delete(%struct.keys* %14)
  %16 = load %struct.pdu*, %struct.pdu** %3, align 8
  %17 = call i32 @pdu_send(%struct.pdu* %16)
  %18 = load %struct.pdu*, %struct.pdu** %3, align 8
  %19 = call i32 @pdu_delete(%struct.pdu* %18)
  ret void
}

declare dso_local %struct.pdu* @login_new_request(%struct.connection*, i32) #1

declare dso_local %struct.keys* @keys_new(...) #1

declare dso_local i32 @keys_add(%struct.keys*, i8*, i8*) #1

declare dso_local i32 @keys_save(%struct.keys*, %struct.pdu*) #1

declare dso_local i32 @keys_delete(%struct.keys*) #1

declare dso_local i32 @pdu_send(%struct.pdu*) #1

declare dso_local i32 @pdu_delete(%struct.pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
