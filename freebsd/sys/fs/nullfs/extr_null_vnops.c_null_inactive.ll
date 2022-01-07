; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_inactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_inactive_args = type { %struct.vnode* }
%struct.vnode = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_inactive_args*)* @null_inactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_inactive(%struct.vop_inactive_args* %0) #0 {
  %2 = alloca %struct.vop_inactive_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  store %struct.vop_inactive_args* %0, %struct.vop_inactive_args** %2, align 8
  %4 = load %struct.vop_inactive_args*, %struct.vop_inactive_args** %2, align 8
  %5 = getelementptr inbounds %struct.vop_inactive_args, %struct.vop_inactive_args* %4, i32 0, i32 0
  %6 = load %struct.vnode*, %struct.vnode** %5, align 8
  store %struct.vnode* %6, %struct.vnode** %3, align 8
  %7 = load %struct.vnode*, %struct.vnode** %3, align 8
  %8 = call i64 @null_want_recycle(%struct.vnode* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.vnode*, %struct.vnode** %3, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = call i32 @vrecycle(%struct.vnode* %13)
  br label %15

15:                                               ; preds = %10, %1
  ret i32 0
}

declare dso_local i64 @null_want_recycle(%struct.vnode*) #1

declare dso_local i32 @vrecycle(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
