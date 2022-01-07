; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_vnode_check_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_vnode_check_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.image_params = type { i32 }
%struct.label = type { i32 }
%struct.mac_mls = type { i32 }

@mls_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, %struct.image_params*, %struct.label*)* @mls_vnode_check_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_vnode_check_exec(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, %struct.image_params* %3, %struct.label* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca %struct.image_params*, align 8
  %11 = alloca %struct.label*, align 8
  %12 = alloca %struct.mac_mls*, align 8
  %13 = alloca %struct.mac_mls*, align 8
  %14 = alloca %struct.mac_mls*, align 8
  %15 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.vnode* %1, %struct.vnode** %8, align 8
  store %struct.label* %2, %struct.label** %9, align 8
  store %struct.image_params* %3, %struct.image_params** %10, align 8
  store %struct.label* %4, %struct.label** %11, align 8
  %16 = load %struct.label*, %struct.label** %11, align 8
  %17 = icmp ne %struct.label* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load %struct.label*, %struct.label** %11, align 8
  %20 = call %struct.mac_mls* @SLOT(%struct.label* %19)
  store %struct.mac_mls* %20, %struct.mac_mls** %14, align 8
  %21 = load %struct.mac_mls*, %struct.mac_mls** %14, align 8
  %22 = call i32 @mls_atmostflags(%struct.mac_mls* %21, i32 0)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %6, align 4
  br label %46

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %5
  %29 = load i32, i32* @mls_enabled, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %46

32:                                               ; preds = %28
  %33 = load %struct.ucred*, %struct.ucred** %7, align 8
  %34 = getelementptr inbounds %struct.ucred, %struct.ucred* %33, i32 0, i32 0
  %35 = load %struct.label*, %struct.label** %34, align 8
  %36 = call %struct.mac_mls* @SLOT(%struct.label* %35)
  store %struct.mac_mls* %36, %struct.mac_mls** %12, align 8
  %37 = load %struct.label*, %struct.label** %9, align 8
  %38 = call %struct.mac_mls* @SLOT(%struct.label* %37)
  store %struct.mac_mls* %38, %struct.mac_mls** %13, align 8
  %39 = load %struct.mac_mls*, %struct.mac_mls** %12, align 8
  %40 = load %struct.mac_mls*, %struct.mac_mls** %13, align 8
  %41 = call i32 @mls_dominate_effective(%struct.mac_mls* %39, %struct.mac_mls* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @EACCES, align 4
  store i32 %44, i32* %6, align 4
  br label %46

45:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %43, %31, %25
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.mac_mls* @SLOT(%struct.label*) #1

declare dso_local i32 @mls_atmostflags(%struct.mac_mls*, i32) #1

declare dso_local i32 @mls_dominate_effective(%struct.mac_mls*, %struct.mac_mls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
