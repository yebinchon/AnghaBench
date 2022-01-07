; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket_ifnet_remove/extr_msocket_ifnet_remove.c_test_sock_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket_ifnet_remove/extr_msocket_ifnet_remove.c_test_sock_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISC_IFNAME = common dso_local global i32 0, align 4
@DISC_IFUNIT = common dso_local global i32 0, align 4
@DISC_IP = common dso_local global i32 0, align 4
@DISC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"test_sock_type(%s) passed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @test_sock_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_sock_type(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = call i64 (...) @disc_setup()
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load i32, i32* @DISC_IFNAME, align 4
  %12 = load i32, i32* @DISC_IFUNIT, align 4
  %13 = load i32, i32* @DISC_IP, align 4
  %14 = load i32, i32* @DISC_MASK, align 4
  %15 = call i64 @ifconfig_inet(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 (...) @disc_done()
  store i32 -1, i32* %3, align 4
  br label %32

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @multicast_open(i32* %6, i32 %20, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (...) @disc_done()
  store i32 -1, i32* %3, align 4
  br label %32

26:                                               ; preds = %19
  %27 = call i32 (...) @disc_done()
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @multicast_close(i32 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %24, %17, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @disc_setup(...) #1

declare dso_local i64 @ifconfig_inet(i32, i32, i32, i32) #1

declare dso_local i32 @disc_done(...) #1

declare dso_local i64 @multicast_open(i32*, i32, i8*) #1

declare dso_local i32 @multicast_close(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
