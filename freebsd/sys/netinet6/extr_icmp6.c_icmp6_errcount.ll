; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_icmp6.c_icmp6_errcount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_icmp6.c_icmp6_errcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@icp6s_odst_unreach_noroute = common dso_local global i32 0, align 4
@icp6s_odst_unreach_admin = common dso_local global i32 0, align 4
@icp6s_odst_unreach_beyondscope = common dso_local global i32 0, align 4
@icp6s_odst_unreach_addr = common dso_local global i32 0, align 4
@icp6s_odst_unreach_noport = common dso_local global i32 0, align 4
@icp6s_opacket_too_big = common dso_local global i32 0, align 4
@icp6s_otime_exceed_transit = common dso_local global i32 0, align 4
@icp6s_otime_exceed_reassembly = common dso_local global i32 0, align 4
@icp6s_oparamprob_header = common dso_local global i32 0, align 4
@icp6s_oparamprob_nextheader = common dso_local global i32 0, align 4
@icp6s_oparamprob_option = common dso_local global i32 0, align 4
@icp6s_oredirect = common dso_local global i32 0, align 4
@icp6s_ounknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @icmp6_errcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmp6_errcount(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %51 [
    i32 142, label %6
    i32 136, label %24
    i32 131, label %27
    i32 132, label %36
    i32 128, label %48
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %23 [
    i32 137, label %8
    i32 140, label %11
    i32 139, label %14
    i32 141, label %17
    i32 138, label %20
  ]

8:                                                ; preds = %6
  %9 = load i32, i32* @icp6s_odst_unreach_noroute, align 4
  %10 = call i32 @ICMP6STAT_INC(i32 %9)
  br label %54

11:                                               ; preds = %6
  %12 = load i32, i32* @icp6s_odst_unreach_admin, align 4
  %13 = call i32 @ICMP6STAT_INC(i32 %12)
  br label %54

14:                                               ; preds = %6
  %15 = load i32, i32* @icp6s_odst_unreach_beyondscope, align 4
  %16 = call i32 @ICMP6STAT_INC(i32 %15)
  br label %54

17:                                               ; preds = %6
  %18 = load i32, i32* @icp6s_odst_unreach_addr, align 4
  %19 = call i32 @ICMP6STAT_INC(i32 %18)
  br label %54

20:                                               ; preds = %6
  %21 = load i32, i32* @icp6s_odst_unreach_noport, align 4
  %22 = call i32 @ICMP6STAT_INC(i32 %21)
  br label %54

23:                                               ; preds = %6
  br label %51

24:                                               ; preds = %2
  %25 = load i32, i32* @icp6s_opacket_too_big, align 4
  %26 = call i32 @ICMP6STAT_INC(i32 %25)
  br label %54

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %35 [
    i32 129, label %29
    i32 130, label %32
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @icp6s_otime_exceed_transit, align 4
  %31 = call i32 @ICMP6STAT_INC(i32 %30)
  br label %54

32:                                               ; preds = %27
  %33 = load i32, i32* @icp6s_otime_exceed_reassembly, align 4
  %34 = call i32 @ICMP6STAT_INC(i32 %33)
  br label %54

35:                                               ; preds = %27
  br label %51

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %47 [
    i32 135, label %38
    i32 134, label %41
    i32 133, label %44
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @icp6s_oparamprob_header, align 4
  %40 = call i32 @ICMP6STAT_INC(i32 %39)
  br label %54

41:                                               ; preds = %36
  %42 = load i32, i32* @icp6s_oparamprob_nextheader, align 4
  %43 = call i32 @ICMP6STAT_INC(i32 %42)
  br label %54

44:                                               ; preds = %36
  %45 = load i32, i32* @icp6s_oparamprob_option, align 4
  %46 = call i32 @ICMP6STAT_INC(i32 %45)
  br label %54

47:                                               ; preds = %36
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @icp6s_oredirect, align 4
  %50 = call i32 @ICMP6STAT_INC(i32 %49)
  br label %54

51:                                               ; preds = %2, %47, %35, %23
  %52 = load i32, i32* @icp6s_ounknown, align 4
  %53 = call i32 @ICMP6STAT_INC(i32 %52)
  br label %54

54:                                               ; preds = %51, %48, %44, %41, %38, %32, %29, %24, %20, %17, %14, %11, %8
  ret void
}

declare dso_local i32 @ICMP6STAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
