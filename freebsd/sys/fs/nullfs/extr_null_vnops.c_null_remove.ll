; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_remove_args = type { i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NULLV_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_remove_args*)* @null_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_remove(%struct.vop_remove_args* %0) #0 {
  %2 = alloca %struct.vop_remove_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  store %struct.vop_remove_args* %0, %struct.vop_remove_args** %2, align 8
  %7 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %7, i32 0, i32 1
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %6, align 8
  %10 = load %struct.vnode*, %struct.vnode** %6, align 8
  %11 = call i32 @vrefcnt(%struct.vnode* %10)
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = call %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode* %14)
  store %struct.vnode* %15, %struct.vnode** %5, align 8
  %16 = load %struct.vnode*, %struct.vnode** %5, align 8
  %17 = call i32 @VREF(%struct.vnode* %16)
  store i32 1, i32* %4, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, i32* @NULLV_DROP, align 4
  %21 = load %struct.vnode*, %struct.vnode** %6, align 8
  %22 = call %struct.TYPE_2__* @VTONULL(%struct.vnode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %27 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %26, i32 0, i32 0
  %28 = call i32 @null_bypass(i32* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.vnode*, %struct.vnode** %5, align 8
  %33 = call i32 @vrele(%struct.vnode* %32)
  br label %34

34:                                               ; preds = %31, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @vrefcnt(%struct.vnode*) #1

declare dso_local %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode*) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local %struct.TYPE_2__* @VTONULL(%struct.vnode*) #1

declare dso_local i32 @null_bypass(i32*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
