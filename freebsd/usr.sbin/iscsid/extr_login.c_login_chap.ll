; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_chap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.pdu = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"beginning CHAP authentication; sending CHAP_A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"waiting for CHAP_A/CHAP_C/CHAP_I\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"sending CHAP_N/CHAP_R\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"waiting for CHAP result\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"CHAP authentication done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*)* @login_chap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_chap(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.pdu*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = call i32 @log_debugx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.connection*, %struct.connection** %2, align 8
  %6 = call i32 @login_send_chap_a(%struct.connection* %5)
  %7 = call i32 @log_debugx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.connection*, %struct.connection** %2, align 8
  %9 = call %struct.pdu* @login_receive(%struct.connection* %8)
  store %struct.pdu* %9, %struct.pdu** %3, align 8
  %10 = call i32 @log_debugx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %11 = load %struct.pdu*, %struct.pdu** %3, align 8
  %12 = call i32 @login_send_chap_r(%struct.pdu* %11)
  %13 = load %struct.pdu*, %struct.pdu** %3, align 8
  %14 = call i32 @pdu_delete(%struct.pdu* %13)
  %15 = call i32 @log_debugx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %16 = load %struct.connection*, %struct.connection** %2, align 8
  %17 = call %struct.pdu* @login_receive(%struct.connection* %16)
  store %struct.pdu* %17, %struct.pdu** %3, align 8
  %18 = load %struct.connection*, %struct.connection** %2, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.pdu*, %struct.pdu** %3, align 8
  %28 = call i32 @login_verify_mutual(%struct.pdu* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.pdu*, %struct.pdu** %3, align 8
  %31 = call i32 @pdu_delete(%struct.pdu* %30)
  %32 = call i32 @log_debugx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @log_debugx(i8*) #1

declare dso_local i32 @login_send_chap_a(%struct.connection*) #1

declare dso_local %struct.pdu* @login_receive(%struct.connection*) #1

declare dso_local i32 @login_send_chap_r(%struct.pdu*) #1

declare dso_local i32 @pdu_delete(%struct.pdu*) #1

declare dso_local i32 @login_verify_mutual(%struct.pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
