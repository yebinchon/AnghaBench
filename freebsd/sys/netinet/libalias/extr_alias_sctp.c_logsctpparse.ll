; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_logsctpparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_logsctpparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_nat_msg = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"TO_LOCAL -\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"TO_GLOBAL -\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Init\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"InitAck\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Abort\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ShutAck\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ShutComp\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Asconf\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"AsconfAck\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"***ERROR***\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Parsed: %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sctp_nat_msg*)* @logsctpparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logsctpparse(i32 %0, %struct.sctp_nat_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_nat_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sctp_nat_msg* %1, %struct.sctp_nat_msg** %4, align 8
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %10 [
    i32 128, label %8
    i32 129, label %9
  ]

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %11

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %11

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %11

11:                                               ; preds = %10, %9, %8
  %12 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 134, label %15
    i32 133, label %16
    i32 137, label %17
    i32 131, label %18
    i32 130, label %19
    i32 136, label %20
    i32 135, label %21
    i32 132, label %22
  ]

15:                                               ; preds = %11
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %24

16:                                               ; preds = %11
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %24

17:                                               ; preds = %11
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %24

18:                                               ; preds = %11
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %24

19:                                               ; preds = %11
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %24

20:                                               ; preds = %11
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %24

21:                                               ; preds = %11
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %24

22:                                               ; preds = %11
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %24

23:                                               ; preds = %11
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %24

24:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @SctpAliasLog(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %25, i8* %26)
  ret void
}

declare dso_local i32 @SctpAliasLog(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
