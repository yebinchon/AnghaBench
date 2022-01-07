; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_bpfdesc_check_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_bpfdesc_check_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i32 }
%struct.ifnet = type { i32 }
%struct.label = type { i32 }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_d*, %struct.label*, %struct.ifnet*, %struct.label*)* @biba_bpfdesc_check_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_bpfdesc_check_receive(%struct.bpf_d* %0, %struct.label* %1, %struct.ifnet* %2, %struct.label* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_d*, align 8
  %7 = alloca %struct.label*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca %struct.mac_biba*, align 8
  %11 = alloca %struct.mac_biba*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %6, align 8
  store %struct.label* %1, %struct.label** %7, align 8
  store %struct.ifnet* %2, %struct.ifnet** %8, align 8
  store %struct.label* %3, %struct.label** %9, align 8
  %12 = load i32, i32* @biba_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %27

15:                                               ; preds = %4
  %16 = load %struct.label*, %struct.label** %7, align 8
  %17 = call %struct.mac_biba* @SLOT(%struct.label* %16)
  store %struct.mac_biba* %17, %struct.mac_biba** %10, align 8
  %18 = load %struct.label*, %struct.label** %9, align 8
  %19 = call %struct.mac_biba* @SLOT(%struct.label* %18)
  store %struct.mac_biba* %19, %struct.mac_biba** %11, align 8
  %20 = load %struct.mac_biba*, %struct.mac_biba** %10, align 8
  %21 = load %struct.mac_biba*, %struct.mac_biba** %11, align 8
  %22 = call i64 @biba_equal_effective(%struct.mac_biba* %20, %struct.mac_biba* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @EACCES, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %24, %14
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.mac_biba* @SLOT(%struct.label*) #1

declare dso_local i64 @biba_equal_effective(%struct.mac_biba*, %struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
