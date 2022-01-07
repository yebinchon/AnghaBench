; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_vnode_check_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_vnode_check_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4
@VSTAT_PERMS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VMODIFY_PERMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, i32)* @biba_vnode_check_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_vnode_check_open(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mac_biba*, align 8
  %11 = alloca %struct.mac_biba*, align 8
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.label* %2, %struct.label** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @biba_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %52

15:                                               ; preds = %4
  %16 = load %struct.ucred*, %struct.ucred** %6, align 8
  %17 = getelementptr inbounds %struct.ucred, %struct.ucred* %16, i32 0, i32 0
  %18 = load %struct.label*, %struct.label** %17, align 8
  %19 = call %struct.mac_biba* @SLOT(%struct.label* %18)
  store %struct.mac_biba* %19, %struct.mac_biba** %10, align 8
  %20 = load %struct.label*, %struct.label** %8, align 8
  %21 = call %struct.mac_biba* @SLOT(%struct.label* %20)
  store %struct.mac_biba* %21, %struct.mac_biba** %11, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @VREAD, align 4
  %24 = load i32, i32* @VEXEC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @VSTAT_PERMS, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %22, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %15
  %31 = load %struct.mac_biba*, %struct.mac_biba** %11, align 8
  %32 = load %struct.mac_biba*, %struct.mac_biba** %10, align 8
  %33 = call i32 @biba_dominate_effective(%struct.mac_biba* %31, %struct.mac_biba* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EACCES, align 4
  store i32 %36, i32* %5, align 4
  br label %52

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @VMODIFY_PERMS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.mac_biba*, %struct.mac_biba** %10, align 8
  %45 = load %struct.mac_biba*, %struct.mac_biba** %11, align 8
  %46 = call i32 @biba_dominate_effective(%struct.mac_biba* %44, %struct.mac_biba* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EACCES, align 4
  store i32 %49, i32* %5, align 4
  br label %52

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %38
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %48, %35, %14
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.mac_biba* @SLOT(%struct.label*) #1

declare dso_local i32 @biba_dominate_effective(%struct.mac_biba*, %struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
