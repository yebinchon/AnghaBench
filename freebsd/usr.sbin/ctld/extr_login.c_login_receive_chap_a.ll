; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_receive_chap_a.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_receive_chap_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i32 }
%struct.connection = type { i32 }
%struct.keys = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"CHAP_A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"received CHAP Login PDU without CHAP_A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"received CHAP Login PDU with unsupported CHAP_A \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pdu* (%struct.connection*)* @login_receive_chap_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pdu* @login_receive_chap_a(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.keys*, align 8
  %5 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = call %struct.pdu* @login_receive(%struct.connection* %6, i32 0)
  store %struct.pdu* %7, %struct.pdu** %3, align 8
  %8 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %8, %struct.keys** %4, align 8
  %9 = load %struct.keys*, %struct.keys** %4, align 8
  %10 = load %struct.pdu*, %struct.pdu** %3, align 8
  %11 = call i32 @keys_load(%struct.keys* %9, %struct.pdu* %10)
  %12 = load %struct.keys*, %struct.keys** %4, align 8
  %13 = call i8* @keys_find(%struct.keys* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.pdu*, %struct.pdu** %3, align 8
  %18 = call i32 @login_send_error(%struct.pdu* %17, i32 2, i32 7)
  %19 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @login_list_contains(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.pdu*, %struct.pdu** %3, align 8
  %26 = call i32 @login_send_error(%struct.pdu* %25, i32 2, i32 1)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.keys*, %struct.keys** %4, align 8
  %31 = call i32 @keys_delete(%struct.keys* %30)
  %32 = load %struct.pdu*, %struct.pdu** %3, align 8
  ret %struct.pdu* %32
}

declare dso_local %struct.pdu* @login_receive(%struct.connection*, i32) #1

declare dso_local %struct.keys* @keys_new(...) #1

declare dso_local i32 @keys_load(%struct.keys*, %struct.pdu*) #1

declare dso_local i8* @keys_find(%struct.keys*, i8*) #1

declare dso_local i32 @login_send_error(%struct.pdu*, i32, i32) #1

declare dso_local i32 @log_errx(i32, i8*, ...) #1

declare dso_local i64 @login_list_contains(i8*, i8*) #1

declare dso_local i32 @keys_delete(%struct.keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
