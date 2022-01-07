; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_add_links.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_add_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.gcov_node = type { i8* }
%struct.dentry = type { i32 }

@gcov_link = common dso_local global %struct.TYPE_3__* null, align 8
@M_GCOV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcov_node*, %struct.dentry*)* @add_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_links(%struct.gcov_node* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.gcov_node*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gcov_node* %0, %struct.gcov_node** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %18, %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gcov_link, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %9

21:                                               ; preds = %9
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @M_GCOV, align 4
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call i8* @malloc(i32 %25, i32 %26, i32 %29)
  %31 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %32 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %34 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %116

38:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %87, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %90

43:                                               ; preds = %39
  %44 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %45 = call i32 @get_node_info(%struct.gcov_node* %44)
  %46 = call i32 @gcov_info_filename(i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gcov_link, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = call i8* @get_link_target(i32 %46, %struct.TYPE_3__* %50)
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %91

55:                                               ; preds = %43
  %56 = load i8*, i8** %6, align 8
  %57 = call i8* @basename(i8* %56)
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %91

62:                                               ; preds = %55
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @deskew(i8* %63)
  %65 = load %struct.dentry*, %struct.dentry** %4, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call signext i8 @debugfs_create_symlink(i32 %64, %struct.dentry* %65, i8* %66)
  %68 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %69 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 %67, i8* %73, align 1
  %74 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %75 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %62
  br label %91

83:                                               ; preds = %62
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* @M_GCOV, align 4
  %86 = call i32 @free(i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %39

90:                                               ; preds = %39
  br label %116

91:                                               ; preds = %82, %61, %54
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* @M_GCOV, align 4
  %94 = call i32 @free(i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %99, %91
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %8, align 4
  %98 = icmp sgt i32 %96, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %101 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @debugfs_remove(i8 signext %106)
  br label %95

108:                                              ; preds = %95
  %109 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %110 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* @M_GCOV, align 4
  %113 = call i32 @free(i8* %111, i32 %112)
  %114 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %115 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %114, i32 0, i32 0
  store i8* null, i8** %115, align 8
  br label %116

116:                                              ; preds = %108, %90, %37
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i8* @get_link_target(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @gcov_info_filename(i32) #1

declare dso_local i32 @get_node_info(%struct.gcov_node*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local signext i8 @debugfs_create_symlink(i32, %struct.dentry*, i8*) #1

declare dso_local i32 @deskew(i8*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @debugfs_remove(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
