; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_redirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i64 }
%struct.iscsi_bhs_login_response = type { i32, i32 }
%struct.keys = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"TargetAddress\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdu*, i8*)* @login_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_redirect(%struct.pdu* %0, i8* %1) #0 {
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pdu*, align 8
  %6 = alloca %struct.iscsi_bhs_login_response*, align 8
  %7 = alloca %struct.keys*, align 8
  store %struct.pdu* %0, %struct.pdu** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.pdu*, %struct.pdu** %3, align 8
  %9 = call %struct.pdu* @login_new_response(%struct.pdu* %8)
  store %struct.pdu* %9, %struct.pdu** %5, align 8
  %10 = load %struct.pdu*, %struct.pdu** %5, align 8
  %11 = load %struct.pdu*, %struct.pdu** %3, align 8
  %12 = call i32 @login_csg(%struct.pdu* %11)
  %13 = call i32 @login_set_csg(%struct.pdu* %10, i32 %12)
  %14 = load %struct.pdu*, %struct.pdu** %5, align 8
  %15 = getelementptr inbounds %struct.pdu, %struct.pdu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.iscsi_bhs_login_response*
  store %struct.iscsi_bhs_login_response* %17, %struct.iscsi_bhs_login_response** %6, align 8
  %18 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %6, align 8
  %19 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %6, align 8
  %21 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %22, %struct.keys** %7, align 8
  %23 = load %struct.keys*, %struct.keys** %7, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @keys_add(%struct.keys* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.keys*, %struct.keys** %7, align 8
  %27 = load %struct.pdu*, %struct.pdu** %5, align 8
  %28 = call i32 @keys_save(%struct.keys* %26, %struct.pdu* %27)
  %29 = load %struct.pdu*, %struct.pdu** %5, align 8
  %30 = call i32 @pdu_send(%struct.pdu* %29)
  %31 = load %struct.pdu*, %struct.pdu** %5, align 8
  %32 = call i32 @pdu_delete(%struct.pdu* %31)
  %33 = load %struct.keys*, %struct.keys** %7, align 8
  %34 = call i32 @keys_delete(%struct.keys* %33)
  ret void
}

declare dso_local %struct.pdu* @login_new_response(%struct.pdu*) #1

declare dso_local i32 @login_set_csg(%struct.pdu*, i32) #1

declare dso_local i32 @login_csg(%struct.pdu*) #1

declare dso_local %struct.keys* @keys_new(...) #1

declare dso_local i32 @keys_add(%struct.keys*, i8*, i8*) #1

declare dso_local i32 @keys_save(%struct.keys*, %struct.pdu*) #1

declare dso_local i32 @pdu_send(%struct.pdu*) #1

declare dso_local i32 @pdu_delete(%struct.pdu*) #1

declare dso_local i32 @keys_delete(%struct.keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
