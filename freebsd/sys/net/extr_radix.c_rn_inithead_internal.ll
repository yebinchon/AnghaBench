; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_inithead_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_inithead_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_head = type { %struct.radix_node* }
%struct.radix_node = type { i32, i32, i32, %struct.radix_node*, %struct.radix_node*, %struct.radix_node* }

@rn_zeros = common dso_local global i32 0, align 4
@RNF_ROOT = common dso_local global i32 0, align 4
@RNF_ACTIVE = common dso_local global i32 0, align 4
@rn_ones = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rn_inithead_internal(%struct.radix_head* %0, %struct.radix_node* %1, i32 %2) #0 {
  %4 = alloca %struct.radix_head*, align 8
  %5 = alloca %struct.radix_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radix_node*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca %struct.radix_node*, align 8
  store %struct.radix_head* %0, %struct.radix_head** %4, align 8
  store %struct.radix_node* %1, %struct.radix_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @rn_zeros, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.radix_node*, %struct.radix_node** %5, align 8
  %13 = call %struct.radix_node* @rn_newpair(i32 %10, i32 %11, %struct.radix_node* %12)
  store %struct.radix_node* %13, %struct.radix_node** %7, align 8
  %14 = load %struct.radix_node*, %struct.radix_node** %5, align 8
  %15 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %14, i64 2
  store %struct.radix_node* %15, %struct.radix_node** %9, align 8
  %16 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %17 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %18 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %17, i32 0, i32 5
  store %struct.radix_node* %16, %struct.radix_node** %18, align 8
  %19 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %20 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %21 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %20, i32 0, i32 4
  store %struct.radix_node* %19, %struct.radix_node** %21, align 8
  %22 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %23 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %22, i32 0, i32 3
  %24 = load %struct.radix_node*, %struct.radix_node** %23, align 8
  store %struct.radix_node* %24, %struct.radix_node** %8, align 8
  %25 = load i32, i32* @RNF_ROOT, align 4
  %26 = load i32, i32* @RNF_ACTIVE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %29 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %31 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 -1, %32
  %34 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %35 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %37 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %38 = bitcast %struct.radix_node* %36 to i8*
  %39 = bitcast %struct.radix_node* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 40, i1 false)
  %40 = load i32, i32* @rn_ones, align 4
  %41 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %42 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %44 = load %struct.radix_head*, %struct.radix_head** %4, align 8
  %45 = getelementptr inbounds %struct.radix_head, %struct.radix_head* %44, i32 0, i32 0
  store %struct.radix_node* %43, %struct.radix_node** %45, align 8
  ret void
}

declare dso_local %struct.radix_node* @rn_newpair(i32, i32, %struct.radix_node*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
