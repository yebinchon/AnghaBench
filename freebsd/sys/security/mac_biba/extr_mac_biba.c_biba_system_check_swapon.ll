; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_system_check_swapon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_system_check_swapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*)* @biba_system_check_swapon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_system_check_swapon(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.label*, align 8
  %8 = alloca %struct.mac_biba*, align 8
  %9 = alloca %struct.mac_biba*, align 8
  %10 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.label* %2, %struct.label** %7, align 8
  %11 = load i32, i32* @biba_enabled, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

14:                                               ; preds = %3
  %15 = load %struct.ucred*, %struct.ucred** %5, align 8
  %16 = getelementptr inbounds %struct.ucred, %struct.ucred* %15, i32 0, i32 0
  %17 = load %struct.label*, %struct.label** %16, align 8
  %18 = call %struct.mac_biba* @SLOT(%struct.label* %17)
  store %struct.mac_biba* %18, %struct.mac_biba** %8, align 8
  %19 = load %struct.label*, %struct.label** %7, align 8
  %20 = call %struct.mac_biba* @SLOT(%struct.label* %19)
  store %struct.mac_biba* %20, %struct.mac_biba** %9, align 8
  %21 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %22 = call i32 @biba_subject_privileged(%struct.mac_biba* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %14
  %28 = load %struct.mac_biba*, %struct.mac_biba** %9, align 8
  %29 = call i32 @biba_high_effective(%struct.mac_biba* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EACCES, align 4
  store i32 %32, i32* %4, align 4
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %31, %25, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.mac_biba* @SLOT(%struct.label*) #1

declare dso_local i32 @biba_subject_privileged(%struct.mac_biba*) #1

declare dso_local i32 @biba_high_effective(%struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
