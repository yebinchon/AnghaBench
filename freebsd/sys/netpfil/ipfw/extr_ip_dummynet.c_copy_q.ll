; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_q.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_args = type { i32 }
%struct.dn_fsk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DN_QHT_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.copy_args*, %struct.dn_fsk*, i32)* @copy_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_q(%struct.copy_args* %0, %struct.dn_fsk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.copy_args*, align 8
  %6 = alloca %struct.dn_fsk*, align 8
  %7 = alloca i32, align 4
  store %struct.copy_args* %0, %struct.copy_args** %5, align 8
  store %struct.dn_fsk* %1, %struct.dn_fsk** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %9 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

13:                                               ; preds = %3
  %14 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %15 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DN_QHT_HASH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %23 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %26 = call i32 @dn_ht_scan(i32 %24, i32 (i32, %struct.copy_args*)* @copy_q_cb, %struct.copy_args* %25)
  br label %33

27:                                               ; preds = %13
  %28 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %29 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %32 = call i32 @copy_q_cb(i32 %30, %struct.copy_args* %31)
  br label %33

33:                                               ; preds = %27, %21
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %12
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @dn_ht_scan(i32, i32 (i32, %struct.copy_args*)*, %struct.copy_args*) #1

declare dso_local i32 @copy_q_cb(i32, %struct.copy_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
