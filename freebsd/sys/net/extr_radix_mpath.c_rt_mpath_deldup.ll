; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rt_mpath_deldup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rt_mpath_deldup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32 }
%struct.radix_node = type { i32, i32* }

@RNF_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_mpath_deldup(%struct.rtentry* %0, %struct.rtentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca %struct.rtentry*, align 8
  %6 = alloca %struct.radix_node*, align 8
  %7 = alloca %struct.radix_node*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %4, align 8
  store %struct.rtentry* %1, %struct.rtentry** %5, align 8
  %8 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %9 = icmp ne %struct.rtentry* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %12 = icmp ne %struct.rtentry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %53

14:                                               ; preds = %10
  %15 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %16 = bitcast %struct.rtentry* %15 to %struct.radix_node*
  store %struct.radix_node* %16, %struct.radix_node** %6, align 8
  %17 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %18 = call %struct.radix_node* @rn_mpath_next(%struct.radix_node* %17)
  store %struct.radix_node* %18, %struct.radix_node** %7, align 8
  br label %19

19:                                               ; preds = %48, %14
  %20 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %21 = icmp ne %struct.radix_node* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %24 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %25 = bitcast %struct.rtentry* %24 to %struct.radix_node*
  %26 = icmp eq %struct.radix_node* %23, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %29 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %32 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %34 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* @RNF_ACTIVE, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %38 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* @RNF_ACTIVE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %44 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %43, i64 1
  %45 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %42
  store i32 %47, i32* %45, align 8
  store i32 1, i32* %3, align 4
  br label %53

48:                                               ; preds = %22
  %49 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %49, %struct.radix_node** %6, align 8
  %50 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %51 = call %struct.radix_node* @rn_mpath_next(%struct.radix_node* %50)
  store %struct.radix_node* %51, %struct.radix_node** %7, align 8
  br label %19

52:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %27, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.radix_node* @rn_mpath_next(%struct.radix_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
