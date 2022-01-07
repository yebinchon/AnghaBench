; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_schk_reset_credit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_schk_reset_credit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_schk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DN_HAVE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_schk*)* @schk_reset_credit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schk_reset_credit(%struct.dn_schk* %0) #0 {
  %2 = alloca %struct.dn_schk*, align 8
  store %struct.dn_schk* %0, %struct.dn_schk** %2, align 8
  %3 = load %struct.dn_schk*, %struct.dn_schk** %2, align 8
  %4 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @DN_HAVE_MASK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.dn_schk*, %struct.dn_schk** %2, align 8
  %12 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dn_ht_scan(i64 %13, i32 (i64, i32*)* @si_reset_credit, i32* null)
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.dn_schk*, %struct.dn_schk** %2, align 8
  %17 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.dn_schk*, %struct.dn_schk** %2, align 8
  %22 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @si_reset_credit(i64 %23, i32* null)
  br label %25

25:                                               ; preds = %20, %15
  br label %26

26:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @dn_ht_scan(i64, i32 (i64, i32*)*, i32*) #1

declare dso_local i32 @si_reset_credit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
