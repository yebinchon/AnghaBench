; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_util.c_hci_status2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_util.c_hci_status2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hci_status2str.t = internal constant [42 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown HCI command\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"No connection\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Hardware failure\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Page timeout\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Authentication failure\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Key missing\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Memory full\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Connection timeout\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Max number of connections\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Max number of SCO connections to a unit\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"ACL connection already exists\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Command disallowed\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Host rejected due to limited resources\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Host rejected due to security reasons\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"Host rejected due to remote unit is a personal unit\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Host timeout\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"Unsupported feature or parameter value\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Invalid HCI command parameter\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"Other end terminated connection: User ended connection\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Other end terminated connection: Low resources\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"Other end terminated connection: About to power off\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Connection terminated by local host\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Repeated attempts\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Pairing not allowed\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Unknown LMP PDU\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Unsupported remote feature\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"SCO offset rejected\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"SCO interval rejected\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"SCO air mode rejected\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"Invalid LMP parameters\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Unspecified error\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Unsupported LMP parameter value\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Role change not allowed\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"LMP response timeout\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"LMP error transaction collision\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"LMP PSU not allowed\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Encryption mode not acceptable\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"Unit key used\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"QoS is not supported\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"Instant passed\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Pairing with unit key not supported\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hci_status2str(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @SIZE(i8** getelementptr inbounds ([42 x i8*], [42 x i8*]* @hci_status2str.t, i64 0, i64 0))
  %5 = icmp sge i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [42 x i8*], [42 x i8*]* @hci_status2str.t, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  br label %12

12:                                               ; preds = %7, %6
  %13 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), %6 ], [ %11, %7 ]
  ret i8* %13
}

declare dso_local i32 @SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
