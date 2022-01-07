; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_partition/extr_mac_partition.c_partition_vnode_check_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_partition/extr_mac_partition.c_partition_vnode_check_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.image_params = type { i32 }
%struct.label = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, %struct.image_params*, %struct.label*)* @partition_vnode_check_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_vnode_check_exec(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, %struct.image_params* %3, %struct.label* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca %struct.image_params*, align 8
  %11 = alloca %struct.label*, align 8
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.vnode* %1, %struct.vnode** %8, align 8
  store %struct.label* %2, %struct.label** %9, align 8
  store %struct.image_params* %3, %struct.image_params** %10, align 8
  store %struct.label* %4, %struct.label** %11, align 8
  %12 = load %struct.label*, %struct.label** %11, align 8
  %13 = icmp ne %struct.label* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load %struct.label*, %struct.label** %11, align 8
  %16 = call i64 @SLOT(%struct.label* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %6, align 4
  br label %22

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %5
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local i64 @SLOT(%struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
