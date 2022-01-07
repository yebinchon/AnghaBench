; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rn_mpath_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rn_mpath_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i64, %struct.radix_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radix_node* @rn_mpath_next(%struct.radix_node* %0) #0 {
  %2 = alloca %struct.radix_node*, align 8
  %3 = alloca %struct.radix_node*, align 8
  %4 = alloca %struct.radix_node*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %3, align 8
  %5 = load %struct.radix_node*, %struct.radix_node** %3, align 8
  %6 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %5, i32 0, i32 1
  %7 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %8 = icmp ne %struct.radix_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.radix_node* null, %struct.radix_node** %2, align 8
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.radix_node*, %struct.radix_node** %3, align 8
  %12 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %11, i32 0, i32 1
  %13 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  store %struct.radix_node* %13, %struct.radix_node** %4, align 8
  %14 = load %struct.radix_node*, %struct.radix_node** %3, align 8
  %15 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %18 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  store %struct.radix_node* %22, %struct.radix_node** %2, align 8
  br label %24

23:                                               ; preds = %10
  store %struct.radix_node* null, %struct.radix_node** %2, align 8
  br label %24

24:                                               ; preds = %23, %21, %9
  %25 = load %struct.radix_node*, %struct.radix_node** %2, align 8
  ret %struct.radix_node* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
