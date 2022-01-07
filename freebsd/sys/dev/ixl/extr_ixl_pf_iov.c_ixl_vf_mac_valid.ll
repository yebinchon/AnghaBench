; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_mac_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_mac_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vf = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VF_FLAG_SET_MAC_CAP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_vf*, i32*)* @ixl_vf_mac_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_vf_mac_valid(%struct.ixl_vf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixl_vf*, align 8
  %5 = alloca i32*, align 8
  store %struct.ixl_vf* %0, %struct.ixl_vf** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i64 @ixl_zero_mac(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @ixl_bcast_mac(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %9
  %16 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %17 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VF_FLAG_SET_MAC_CAP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %15
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @ETHER_IS_MULTICAST(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %29 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @cmp_etheraddr(i32* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @EPERM, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %26, %22, %15
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @ixl_zero_mac(i32*) #1

declare dso_local i64 @ixl_bcast_mac(i32*) #1

declare dso_local i64 @ETHER_IS_MULTICAST(i32*) #1

declare dso_local i64 @cmp_etheraddr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
