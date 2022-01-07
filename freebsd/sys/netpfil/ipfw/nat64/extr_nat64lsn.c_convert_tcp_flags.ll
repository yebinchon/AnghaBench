; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_convert_tcp_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_convert_tcp_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TH_FIN = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@TH_RST = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @convert_tcp_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_tcp_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @TH_FIN, align 4
  %6 = load i32, i32* @TH_SYN, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @TH_RST, align 4
  %11 = and i32 %9, %10
  %12 = ashr i32 %11, 2
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @TH_ACK, align 4
  %17 = and i32 %15, %16
  %18 = ashr i32 %17, 2
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
