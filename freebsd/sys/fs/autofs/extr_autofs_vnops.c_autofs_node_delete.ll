; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_node_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_node_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_node = type { i32, i32, i32, %struct.autofs_node*, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"have children\00", align 1
@autofs_node_tree = common dso_local global i32 0, align 4
@M_AUTOFS = common dso_local global i32 0, align 4
@autofs_node_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs_node_delete(%struct.autofs_node* %0) #0 {
  %2 = alloca %struct.autofs_node*, align 8
  %3 = alloca %struct.autofs_node*, align 8
  store %struct.autofs_node* %0, %struct.autofs_node** %2, align 8
  %4 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %5 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @AUTOFS_ASSERT_XLOCKED(i32 %6)
  %8 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %9 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %8, i32 0, i32 2
  %10 = call i32 @RB_EMPTY(i32* %9)
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %13 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %12, i32 0, i32 4
  %14 = call i32 @callout_drain(i32* %13)
  %15 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %16 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %15, i32 0, i32 3
  %17 = load %struct.autofs_node*, %struct.autofs_node** %16, align 8
  store %struct.autofs_node* %17, %struct.autofs_node** %3, align 8
  %18 = load %struct.autofs_node*, %struct.autofs_node** %3, align 8
  %19 = icmp ne %struct.autofs_node* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @autofs_node_tree, align 4
  %22 = load %struct.autofs_node*, %struct.autofs_node** %3, align 8
  %23 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %22, i32 0, i32 2
  %24 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %25 = call i32 @RB_REMOVE(i32 %21, i32* %23, %struct.autofs_node* %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %28 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %27, i32 0, i32 1
  %29 = call i32 @sx_destroy(i32* %28)
  %30 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %31 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @M_AUTOFS, align 4
  %34 = call i32 @free(i32 %32, i32 %33)
  %35 = load i32, i32* @autofs_node_zone, align 4
  %36 = load %struct.autofs_node*, %struct.autofs_node** %2, align 8
  %37 = call i32 @uma_zfree(i32 %35, %struct.autofs_node* %36)
  ret void
}

declare dso_local i32 @AUTOFS_ASSERT_XLOCKED(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @RB_EMPTY(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.autofs_node*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.autofs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
