; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_entry_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_entry_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32*, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, i32 }

@KTR_VM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"vm_map_entry_link: map %p, nentries %d, entry %p\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"vm_map_entry_link: link object already mapped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_18__*)* @vm_map_entry_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_map_entry_link(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %8 = load i32, i32* @KTR_VM, align 4
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = call i32 @CTR3(i32 %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %9, i32 %12, %struct.TYPE_18__* %13)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = call i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_17__* %15)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_18__* @vm_map_splay_split(%struct.TYPE_17__* %21, i32 %24, i32 0, %struct.TYPE_18__** %5, %struct.TYPE_18__** %6)
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %7, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = icmp eq %struct.TYPE_18__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %32, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 3
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %35, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %38, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 3
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = call i32 @vm_map_splay_merge(%struct.TYPE_17__* %45, %struct.TYPE_18__* %46, %struct.TYPE_18__* %47, %struct.TYPE_18__* %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = call i32 @VM_MAP_ASSERT_CONSISTENT(%struct.TYPE_17__* %50)
  ret void
}

declare dso_local i32 @CTR3(i32, i8*, %struct.TYPE_17__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @vm_map_splay_split(%struct.TYPE_17__*, i32, i32, %struct.TYPE_18__**, %struct.TYPE_18__**) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_map_splay_merge(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @VM_MAP_ASSERT_CONSISTENT(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
