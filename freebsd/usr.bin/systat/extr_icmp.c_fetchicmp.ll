; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_icmp.c_fetchicmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_icmp.c_fetchicmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@icmpstat = common dso_local global i32 0, align 4
@oldstat = common dso_local global i32 0, align 4
@CTL_NET = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@ICMPCTL_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetchicmp() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i64, align 8
  %3 = load i32, i32* @icmpstat, align 4
  store i32 %3, i32* @oldstat, align 4
  %4 = load i32, i32* @CTL_NET, align 4
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  store i32 %4, i32* %5, align 16
  %6 = load i32, i32* @PF_INET, align 4
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @IPPROTO_ICMP, align 4
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @ICMPCTL_STATS, align 4
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  store i32 %10, i32* %11, align 4
  store i64 4, i64* %2, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %13 = call i64 @sysctl(i32* %12, i32 4, i32* @icmpstat, i64* %2, i32 0, i32 0)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %16

16:                                               ; preds = %15, %0
  ret void
}

declare dso_local i64 @sysctl(i32*, i32, i32*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
