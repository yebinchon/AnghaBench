; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_unlock_args = type { %struct.vnode* }
%struct.vnode = type { i32 }
%struct.null_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_unlock_args*)* @null_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_unlock(%struct.vop_unlock_args* %0) #0 {
  %2 = alloca %struct.vop_unlock_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.null_node*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_unlock_args* %0, %struct.vop_unlock_args** %2, align 8
  %7 = load %struct.vop_unlock_args*, %struct.vop_unlock_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_unlock_args, %struct.vop_unlock_args* %7, i32 0, i32 0
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %3, align 8
  %10 = load %struct.vnode*, %struct.vnode** %3, align 8
  %11 = call %struct.null_node* @VTONULL(%struct.vnode* %10)
  store %struct.null_node* %11, %struct.null_node** %4, align 8
  %12 = load %struct.null_node*, %struct.null_node** %4, align 8
  %13 = icmp ne %struct.null_node* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.vnode*, %struct.vnode** %3, align 8
  %16 = call %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode* %15)
  store %struct.vnode* %16, %struct.vnode** %5, align 8
  %17 = icmp ne %struct.vnode* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.vnode*, %struct.vnode** %5, align 8
  %20 = call i32 @vholdnz(%struct.vnode* %19)
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = call i32 @VOP_UNLOCK(%struct.vnode* %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.vnode*, %struct.vnode** %5, align 8
  %24 = call i32 @vdrop(%struct.vnode* %23)
  br label %28

25:                                               ; preds = %14, %1
  %26 = load %struct.vop_unlock_args*, %struct.vop_unlock_args** %2, align 8
  %27 = call i32 @vop_stdunlock(%struct.vop_unlock_args* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.null_node* @VTONULL(%struct.vnode*) #1

declare dso_local %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode*) #1

declare dso_local i32 @vholdnz(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @vop_stdunlock(%struct.vop_unlock_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
