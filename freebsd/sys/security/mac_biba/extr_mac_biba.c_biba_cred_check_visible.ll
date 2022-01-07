; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_cred_check_visible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_cred_check_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.ucred*)* @biba_cred_check_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_cred_check_visible(%struct.ucred* %0, %struct.ucred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.mac_biba*, align 8
  %7 = alloca %struct.mac_biba*, align 8
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.ucred* %1, %struct.ucred** %5, align 8
  %8 = load i32, i32* @biba_enabled, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

11:                                               ; preds = %2
  %12 = load %struct.ucred*, %struct.ucred** %4, align 8
  %13 = getelementptr inbounds %struct.ucred, %struct.ucred* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mac_biba* @SLOT(i32 %14)
  store %struct.mac_biba* %15, %struct.mac_biba** %6, align 8
  %16 = load %struct.ucred*, %struct.ucred** %5, align 8
  %17 = getelementptr inbounds %struct.ucred, %struct.ucred* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mac_biba* @SLOT(i32 %18)
  store %struct.mac_biba* %19, %struct.mac_biba** %7, align 8
  %20 = load %struct.mac_biba*, %struct.mac_biba** %7, align 8
  %21 = load %struct.mac_biba*, %struct.mac_biba** %6, align 8
  %22 = call i32 @biba_dominate_effective(%struct.mac_biba* %20, %struct.mac_biba* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %11
  %25 = load i32, i32* @ESRCH, align 4
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %24, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.mac_biba* @SLOT(i32) #1

declare dso_local i32 @biba_dominate_effective(%struct.mac_biba*, %struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
