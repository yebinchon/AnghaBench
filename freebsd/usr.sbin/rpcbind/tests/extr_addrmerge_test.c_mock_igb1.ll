; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/tests/extr_addrmerge_test.c_mock_igb1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/tests/extr_addrmerge_test.c_mock_igb1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"igb1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"192.0.2.3\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"255.255.255.128\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"192.0.2.127\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"2001:db8::3\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ffff:ffff:ffff:ffff::\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"2001:db8::ffff:ffff:ffff:ffff\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"fe80::3\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"fe80::ffff:ffff:ffff:ffff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mock_igb1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mock_igb1(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @IFF_UP, align 4
  %4 = load i32, i32* @IFF_BROADCAST, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @IFF_RUNNING, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @IFF_SIMPLEX, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @IFF_MULTICAST, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @mock_ifaddr4(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* @IFF_UP, align 4
  %15 = load i32, i32* @IFF_BROADCAST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IFF_RUNNING, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IFF_SIMPLEX, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IFF_MULTICAST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @mock_ifaddr6(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %22, i32 0, i32 %23)
  %25 = load i32, i32* @IFF_UP, align 4
  %26 = load i32, i32* @IFF_BROADCAST, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IFF_RUNNING, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IFF_SIMPLEX, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IFF_MULTICAST, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @mock_ifaddr6(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %33, i32 3, i32 %34)
  ret void
}

declare dso_local i32 @mock_ifaddr4(i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @mock_ifaddr6(i8*, i8*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
