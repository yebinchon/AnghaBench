; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_calc_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_calc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@dn_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_compat_calc_size() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 0), align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 4
  %5 = udiv i64 %4, 2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = add i64 %7, %5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 1), align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 2), align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 3), align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
