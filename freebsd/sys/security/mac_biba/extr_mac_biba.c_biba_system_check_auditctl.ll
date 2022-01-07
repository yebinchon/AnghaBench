; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_system_check_auditctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_system_check_auditctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*)* @biba_system_check_auditctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_system_check_auditctl(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2) #0 {
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
  br label %38

14:                                               ; preds = %3
  %15 = load %struct.ucred*, %struct.ucred** %5, align 8
  %16 = getelementptr inbounds %struct.ucred, %struct.ucred* %15, i32 0, i32 0
  %17 = load %struct.label*, %struct.label** %16, align 8
  %18 = call %struct.mac_biba* @SLOT(%struct.label* %17)
  store %struct.mac_biba* %18, %struct.mac_biba** %8, align 8
  %19 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %20 = call i32 @biba_subject_privileged(%struct.mac_biba* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %14
  %26 = load %struct.label*, %struct.label** %7, align 8
  %27 = icmp eq %struct.label* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %38

29:                                               ; preds = %25
  %30 = load %struct.label*, %struct.label** %7, align 8
  %31 = call %struct.mac_biba* @SLOT(%struct.label* %30)
  store %struct.mac_biba* %31, %struct.mac_biba** %9, align 8
  %32 = load %struct.mac_biba*, %struct.mac_biba** %9, align 8
  %33 = call i32 @biba_high_effective(%struct.mac_biba* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EACCES, align 4
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %35, %28, %23, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
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
