; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_free_slb_tree_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_free_slb_tree_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slbtnode = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.slbtnode** }
%struct.TYPE_3__ = type { i32 }

@UAD_LEAF_LEVEL = common dso_local global i64 0, align 8
@SLBV_VSID_SHIFT = common dso_local global i32 0, align 4
@slbt_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slbtnode*)* @free_slb_tree_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_slb_tree_node(%struct.slbtnode* %0) #0 {
  %2 = alloca %struct.slbtnode*, align 8
  %3 = alloca i32, align 4
  store %struct.slbtnode* %0, %struct.slbtnode** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %59, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 16
  br i1 %6, label %7, label %62

7:                                                ; preds = %4
  %8 = load %struct.slbtnode*, %struct.slbtnode** %2, align 8
  %9 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UAD_LEAF_LEVEL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.slbtnode*, %struct.slbtnode** %2, align 8
  %15 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.slbtnode**, %struct.slbtnode*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.slbtnode*, %struct.slbtnode** %17, i64 %19
  %21 = load %struct.slbtnode*, %struct.slbtnode** %20, align 8
  %22 = icmp ne %struct.slbtnode* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.slbtnode*, %struct.slbtnode** %2, align 8
  %25 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.slbtnode**, %struct.slbtnode*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.slbtnode*, %struct.slbtnode** %27, i64 %29
  %31 = load %struct.slbtnode*, %struct.slbtnode** %30, align 8
  call void @free_slb_tree_node(%struct.slbtnode* %31)
  br label %32

32:                                               ; preds = %23, %13
  br label %58

33:                                               ; preds = %7
  %34 = load %struct.slbtnode*, %struct.slbtnode** %2, align 8
  %35 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %33
  %45 = load %struct.slbtnode*, %struct.slbtnode** %2, align 8
  %46 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SLBV_VSID_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = call i32 @moea64_release_vsid(i32 %55)
  br label %57

57:                                               ; preds = %44, %33
  br label %58

58:                                               ; preds = %57, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %4

62:                                               ; preds = %4
  %63 = load i32, i32* @slbt_zone, align 4
  %64 = load %struct.slbtnode*, %struct.slbtnode** %2, align 8
  %65 = call i32 @uma_zfree(i32 %63, %struct.slbtnode* %64)
  ret void
}

declare dso_local i32 @moea64_release_vsid(i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.slbtnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
