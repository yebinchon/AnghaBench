; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_fileno.c_pfs_fileno_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_fileno.c_pfs_fileno_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_node = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"pfs_fileno_free() called for pfstype_none node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfs_fileno_free(%struct.pfs_node* %0) #0 {
  %2 = alloca %struct.pfs_node*, align 8
  store %struct.pfs_node* %0, %struct.pfs_node** %2, align 8
  %3 = load %struct.pfs_node*, %struct.pfs_node** %2, align 8
  %4 = call i32 @pfs_assert_not_owned(%struct.pfs_node* %3)
  %5 = load %struct.pfs_node*, %struct.pfs_node** %2, align 8
  %6 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %22 [
    i32 130, label %8
    i32 135, label %9
    i32 134, label %9
    i32 129, label %9
    i32 131, label %9
    i32 128, label %19
    i32 132, label %19
    i32 133, label %20
  ]

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1, %1, %1, %1
  %10 = load %struct.pfs_node*, %struct.pfs_node** %2, align 8
  %11 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pfs_node*, %struct.pfs_node** %2, align 8
  %16 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @free_unr(i32 %14, i32 %17)
  br label %22

19:                                               ; preds = %1, %1
  br label %22

20:                                               ; preds = %1
  %21 = call i32 @KASSERT(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %8, %1, %20, %19, %9
  ret void
}

declare dso_local i32 @pfs_assert_not_owned(%struct.pfs_node*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
