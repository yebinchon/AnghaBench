; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_node_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_node_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_node = type { i32, i32, i32 }

@M_AUTOFS = common dso_local global i32 0, align 4
@autofs_node_tree = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_node_find(%struct.autofs_node* %0, i8* %1, i32 %2, %struct.autofs_node** %3) #0 {
  %5 = alloca %struct.autofs_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.autofs_node**, align 8
  %9 = alloca %struct.autofs_node*, align 8
  %10 = alloca %struct.autofs_node, align 4
  %11 = alloca i32, align 4
  store %struct.autofs_node* %0, %struct.autofs_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.autofs_node** %3, %struct.autofs_node*** %8, align 8
  %12 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %13 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @AUTOFS_ASSERT_LOCKED(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @M_AUTOFS, align 4
  %22 = call i32 @strndup(i8* %19, i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %10, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  br label %29

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @M_AUTOFS, align 4
  %27 = call i32 @strdup(i8* %25, i32 %26)
  %28 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %18
  %30 = load i32, i32* @autofs_node_tree, align 4
  %31 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %32 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %31, i32 0, i32 1
  %33 = call %struct.autofs_node* @RB_FIND(i32 %30, i32* %32, %struct.autofs_node* %10)
  store %struct.autofs_node* %33, %struct.autofs_node** %9, align 8
  %34 = load %struct.autofs_node*, %struct.autofs_node** %9, align 8
  %35 = icmp ne %struct.autofs_node* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  %37 = load %struct.autofs_node**, %struct.autofs_node*** %8, align 8
  %38 = icmp ne %struct.autofs_node** %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.autofs_node*, %struct.autofs_node** %9, align 8
  %41 = load %struct.autofs_node**, %struct.autofs_node*** %8, align 8
  store %struct.autofs_node* %40, %struct.autofs_node** %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  br label %45

43:                                               ; preds = %29
  %44 = load i32, i32* @ENOENT, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @M_AUTOFS, align 4
  %49 = call i32 @free(i32 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local i32 @AUTOFS_ASSERT_LOCKED(i32) #1

declare dso_local i32 @strndup(i8*, i32, i32) #1

declare dso_local i32 @strdup(i8*, i32) #1

declare dso_local %struct.autofs_node* @RB_FIND(i32, i32*, %struct.autofs_node*) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
