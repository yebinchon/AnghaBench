; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_vnode_check_setutimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_vnode_check_setutimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.timespec = type { i32 }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, i32, i32)* @biba_vnode_check_setutimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_vnode_check_setutimes(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.label*, align 8
  %12 = alloca %struct.mac_biba*, align 8
  %13 = alloca %struct.mac_biba*, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i32 %4, i32* %15, align 4
  store %struct.ucred* %0, %struct.ucred** %9, align 8
  store %struct.vnode* %1, %struct.vnode** %10, align 8
  store %struct.label* %2, %struct.label** %11, align 8
  %16 = load i32, i32* @biba_enabled, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %33

19:                                               ; preds = %5
  %20 = load %struct.ucred*, %struct.ucred** %9, align 8
  %21 = getelementptr inbounds %struct.ucred, %struct.ucred* %20, i32 0, i32 0
  %22 = load %struct.label*, %struct.label** %21, align 8
  %23 = call %struct.mac_biba* @SLOT(%struct.label* %22)
  store %struct.mac_biba* %23, %struct.mac_biba** %12, align 8
  %24 = load %struct.label*, %struct.label** %11, align 8
  %25 = call %struct.mac_biba* @SLOT(%struct.label* %24)
  store %struct.mac_biba* %25, %struct.mac_biba** %13, align 8
  %26 = load %struct.mac_biba*, %struct.mac_biba** %12, align 8
  %27 = load %struct.mac_biba*, %struct.mac_biba** %13, align 8
  %28 = call i32 @biba_dominate_effective(%struct.mac_biba* %26, %struct.mac_biba* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @EACCES, align 4
  store i32 %31, i32* %6, align 4
  br label %33

32:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %30, %18
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.mac_biba* @SLOT(%struct.label*) #1

declare dso_local i32 @biba_dominate_effective(%struct.mac_biba*, %struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
