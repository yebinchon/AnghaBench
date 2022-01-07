; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_node_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_node_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_node = type { i32, %struct.autofs_mount*, %struct.autofs_node*, i32, i32, i32, i32, i32 }
%struct.autofs_mount = type { i32 }

@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"node \22%s\22 already exists\00", align 1
@autofs_node_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_AUTOFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"autofsvlk\00", align 1
@SX_NOWITNESS = common dso_local global i32 0, align 4
@autofs_node_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_node_new(%struct.autofs_node* %0, %struct.autofs_mount* %1, i8* %2, i32 %3, %struct.autofs_node** %4) #0 {
  %6 = alloca %struct.autofs_node*, align 8
  %7 = alloca %struct.autofs_mount*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.autofs_node**, align 8
  %11 = alloca %struct.autofs_node*, align 8
  store %struct.autofs_node* %0, %struct.autofs_node** %6, align 8
  store %struct.autofs_mount* %1, %struct.autofs_mount** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.autofs_node** %4, %struct.autofs_node*** %10, align 8
  %12 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %13 = icmp ne %struct.autofs_node* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %5
  %15 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %16 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %15, i32 0, i32 1
  %17 = load %struct.autofs_mount*, %struct.autofs_mount** %16, align 8
  %18 = call i32 @AUTOFS_ASSERT_XLOCKED(%struct.autofs_mount* %17)
  %19 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @autofs_node_find(%struct.autofs_node* %19, i8* %20, i32 %21, i32* null)
  %23 = load i64, i64* @ENOENT, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @KASSERT(i32 %25, i8* %26)
  br label %28

28:                                               ; preds = %14, %5
  %29 = load i32, i32* @autofs_node_zone, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.autofs_node* @uma_zalloc(i32 %29, i32 %32)
  store %struct.autofs_node* %33, %struct.autofs_node** %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @M_AUTOFS, align 4
  %40 = call i32 @strndup(i8* %37, i32 %38, i32 %39)
  %41 = load %struct.autofs_node*, %struct.autofs_node** %11, align 8
  %42 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  br label %49

43:                                               ; preds = %28
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @M_AUTOFS, align 4
  %46 = call i32 @strdup(i8* %44, i32 %45)
  %47 = load %struct.autofs_node*, %struct.autofs_node** %11, align 8
  %48 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.autofs_mount*, %struct.autofs_mount** %7, align 8
  %51 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %50, i32 0, i32 0
  %52 = call i32 @atomic_fetchadd_int(i32* %51, i32 1)
  %53 = load %struct.autofs_node*, %struct.autofs_node** %11, align 8
  %54 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load %struct.autofs_node*, %struct.autofs_node** %11, align 8
  %56 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %55, i32 0, i32 5
  %57 = call i32 @callout_init(i32* %56, i32 1)
  %58 = load %struct.autofs_node*, %struct.autofs_node** %11, align 8
  %59 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %58, i32 0, i32 4
  %60 = load i32, i32* @SX_NOWITNESS, align 4
  %61 = call i32 @sx_init_flags(i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.autofs_node*, %struct.autofs_node** %11, align 8
  %63 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %62, i32 0, i32 3
  %64 = call i32 @getnanotime(i32* %63)
  %65 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %66 = load %struct.autofs_node*, %struct.autofs_node** %11, align 8
  %67 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %66, i32 0, i32 2
  store %struct.autofs_node* %65, %struct.autofs_node** %67, align 8
  %68 = load %struct.autofs_mount*, %struct.autofs_mount** %7, align 8
  %69 = load %struct.autofs_node*, %struct.autofs_node** %11, align 8
  %70 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %69, i32 0, i32 1
  store %struct.autofs_mount* %68, %struct.autofs_mount** %70, align 8
  %71 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %72 = icmp ne %struct.autofs_node* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %49
  %74 = load i32, i32* @autofs_node_tree, align 4
  %75 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %76 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %75, i32 0, i32 0
  %77 = load %struct.autofs_node*, %struct.autofs_node** %11, align 8
  %78 = call i32 @RB_INSERT(i32 %74, i32* %76, %struct.autofs_node* %77)
  br label %79

79:                                               ; preds = %73, %49
  %80 = load %struct.autofs_node*, %struct.autofs_node** %11, align 8
  %81 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %80, i32 0, i32 0
  %82 = call i32 @RB_INIT(i32* %81)
  %83 = load %struct.autofs_node*, %struct.autofs_node** %11, align 8
  %84 = load %struct.autofs_node**, %struct.autofs_node*** %10, align 8
  store %struct.autofs_node* %83, %struct.autofs_node** %84, align 8
  ret i32 0
}

declare dso_local i32 @AUTOFS_ASSERT_XLOCKED(%struct.autofs_mount*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @autofs_node_find(%struct.autofs_node*, i8*, i32, i32*) #1

declare dso_local %struct.autofs_node* @uma_zalloc(i32, i32) #1

declare dso_local i32 @strndup(i8*, i32, i32) #1

declare dso_local i32 @strdup(i8*, i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @sx_init_flags(i32*, i8*, i32) #1

declare dso_local i32 @getnanotime(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.autofs_node*) #1

declare dso_local i32 @RB_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
