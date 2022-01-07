; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_reinsert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_reinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.vnode = type { i32 }

@ATTR_DIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reinsert(%struct.denode* %0) #0 {
  %2 = alloca %struct.denode*, align 8
  %3 = alloca %struct.vnode*, align 8
  store %struct.denode* %0, %struct.denode** %2, align 8
  %4 = load %struct.denode*, %struct.denode** %2, align 8
  %5 = call %struct.vnode* @DETOV(%struct.denode* %4)
  store %struct.vnode* %5, %struct.vnode** %3, align 8
  %6 = load %struct.denode*, %struct.denode** %2, align 8
  %7 = getelementptr inbounds %struct.denode, %struct.denode* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = load %struct.denode*, %struct.denode** %2, align 8
  %13 = getelementptr inbounds %struct.denode, %struct.denode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = sext i32 %15 to i64
  %17 = load %struct.denode*, %struct.denode** %2, align 8
  %18 = getelementptr inbounds %struct.denode, %struct.denode* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.denode*, %struct.denode** %2, align 8
  %22 = getelementptr inbounds %struct.denode, %struct.denode* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load %struct.vnode*, %struct.vnode** %3, align 8
  %24 = load %struct.denode*, %struct.denode** %2, align 8
  %25 = getelementptr inbounds %struct.denode, %struct.denode* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @vfs_hash_rehash(%struct.vnode* %23, i64 %26)
  ret void
}

declare dso_local %struct.vnode* @DETOV(%struct.denode*) #1

declare dso_local i32 @vfs_hash_rehash(%struct.vnode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
