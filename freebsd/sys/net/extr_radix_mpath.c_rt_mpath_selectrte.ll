; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rt_mpath_selectrte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rt_mpath_selectrte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i64 }
%struct.radix_node = type { i64, %struct.radix_node* }

@hashjitter = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtentry* (%struct.rtentry*, i64)* @rt_mpath_selectrte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtentry* @rt_mpath_selectrte(%struct.rtentry* %0, i64 %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.radix_node*, align 8
  %6 = alloca %struct.radix_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rtentry*, align 8
  %9 = alloca i64, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %11 = bitcast %struct.rtentry* %10 to %struct.radix_node*
  store %struct.radix_node* %11, %struct.radix_node** %6, align 8
  store %struct.radix_node* %11, %struct.radix_node** %5, align 8
  %12 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  store %struct.rtentry* %12, %struct.rtentry** %8, align 8
  %13 = load %struct.radix_node*, %struct.radix_node** %5, align 8
  %14 = call i64 @rn_mpath_count(%struct.radix_node* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @hashjitter, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = srem i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i64 @abs(i32 %22)
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %65, %2
  %25 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %26 = icmp ne %struct.rtentry* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %30 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br i1 %34, label %35, label %69

35:                                               ; preds = %33
  %36 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %37 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %36, i32 0, i32 1
  %38 = load %struct.radix_node*, %struct.radix_node** %37, align 8
  %39 = icmp ne %struct.radix_node* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %42 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %45 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %44, i32 0, i32 1
  %46 = load %struct.radix_node*, %struct.radix_node** %45, align 8
  %47 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %69

51:                                               ; preds = %40, %35
  %52 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %53 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %52, i32 0, i32 1
  %54 = load %struct.radix_node*, %struct.radix_node** %53, align 8
  store %struct.radix_node* %54, %struct.radix_node** %6, align 8
  %55 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %56 = bitcast %struct.radix_node* %55 to %struct.rtentry*
  store %struct.rtentry* %56, %struct.rtentry** %8, align 8
  br label %57

57:                                               ; preds = %51
  %58 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %59 = icmp eq %struct.rtentry* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %65

61:                                               ; preds = %57
  %62 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %63 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  br label %65

65:                                               ; preds = %61, %60
  %66 = phi i64 [ 0, %60 ], [ %64, %61 ]
  %67 = load i64, i64* %9, align 8
  %68 = sub nsw i64 %67, %66
  store i64 %68, i64* %9, align 8
  br label %24

69:                                               ; preds = %50, %33
  %70 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  ret %struct.rtentry* %70
}

declare dso_local i64 @rn_mpath_count(%struct.radix_node*) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
