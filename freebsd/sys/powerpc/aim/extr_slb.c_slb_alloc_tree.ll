; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_slb_alloc_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_slb_alloc_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slbtnode = type { i32 }

@slbt_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unhandled NULL case\00", align 1
@UAD_ROOT_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.slbtnode* @slb_alloc_tree() #0 {
  %1 = alloca %struct.slbtnode*, align 8
  %2 = load i32, i32* @slbt_zone, align 4
  %3 = load i32, i32* @M_NOWAIT, align 4
  %4 = load i32, i32* @M_ZERO, align 4
  %5 = or i32 %3, %4
  %6 = call %struct.slbtnode* @uma_zalloc(i32 %2, i32 %5)
  store %struct.slbtnode* %6, %struct.slbtnode** %1, align 8
  %7 = load %struct.slbtnode*, %struct.slbtnode** %1, align 8
  %8 = icmp ne %struct.slbtnode* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @UAD_ROOT_LEVEL, align 4
  %12 = load %struct.slbtnode*, %struct.slbtnode** %1, align 8
  %13 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.slbtnode*, %struct.slbtnode** %1, align 8
  ret %struct.slbtnode* %14
}

declare dso_local %struct.slbtnode* @uma_zalloc(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
