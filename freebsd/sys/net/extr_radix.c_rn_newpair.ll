; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_newpair.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_newpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32, i32, i32, %struct.radix_node*, %struct.radix_node*, i64, i64, i32, %struct.radix_node*, i64, i32*, i32*, i32*, %struct.radix_node* }

@RNF_ACTIVE = common dso_local global i32 0, align 4
@rn_clist = common dso_local global %struct.radix_node* null, align 8
@rn_nodenum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_node* (i8*, i32, %struct.radix_node*)* @rn_newpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_node* @rn_newpair(i8* %0, i32 %1, %struct.radix_node* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radix_node*, align 8
  %7 = alloca %struct.radix_node*, align 8
  %8 = alloca %struct.radix_node*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.radix_node* %2, %struct.radix_node** %6, align 8
  %9 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  store %struct.radix_node* %9, %struct.radix_node** %7, align 8
  %10 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %11 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %10, i64 1
  store %struct.radix_node* %11, %struct.radix_node** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %14 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 7
  %17 = ashr i32 128, %16
  %18 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %19 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %21 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %22 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %21, i32 0, i32 13
  store %struct.radix_node* %20, %struct.radix_node** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 3
  %25 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %26 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %28 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %32 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %31, i32 0, i32 9
  store i64 %30, i64* %32, align 8
  %33 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %34 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %35 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %34, i32 0, i32 8
  store %struct.radix_node* %33, %struct.radix_node** %35, align 8
  %36 = load i32, i32* @RNF_ACTIVE, align 4
  %37 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %38 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 8
  %39 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %40 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %39, i32 0, i32 7
  store i32 %36, i32* %40, align 8
  %41 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %42 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %44 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  ret %struct.radix_node* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
