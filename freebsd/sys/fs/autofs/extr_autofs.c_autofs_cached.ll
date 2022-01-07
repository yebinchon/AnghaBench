; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_cached.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_node = type { i32, i64, i32*, %struct.autofs_mount* }
%struct.autofs_mount = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_cached(%struct.autofs_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.autofs_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.autofs_mount*, align 8
  store %struct.autofs_node* %0, %struct.autofs_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %11 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %10, i32 0, i32 3
  %12 = load %struct.autofs_mount*, %struct.autofs_mount** %11, align 8
  store %struct.autofs_mount* %12, %struct.autofs_mount** %9, align 8
  %13 = load %struct.autofs_mount*, %struct.autofs_mount** %9, align 8
  %14 = call i32 @AUTOFS_ASSERT_UNLOCKED(%struct.autofs_mount* %13)
  %15 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %16 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %24 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.autofs_mount*, %struct.autofs_mount** %9, align 8
  %29 = call i32 @AUTOFS_SLOCK(%struct.autofs_mount* %28)
  %30 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @autofs_node_find(%struct.autofs_node* %30, i8* %31, i32 %32, i32* null)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.autofs_mount*, %struct.autofs_mount** %9, align 8
  %35 = call i32 @AUTOFS_SUNLOCK(%struct.autofs_mount* %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %44

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %22, %19, %3
  %41 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %42 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %38
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @AUTOFS_ASSERT_UNLOCKED(%struct.autofs_mount*) #1

declare dso_local i32 @AUTOFS_SLOCK(%struct.autofs_mount*) #1

declare dso_local i32 @autofs_node_find(%struct.autofs_node*, i8*, i32, i32*) #1

declare dso_local i32 @AUTOFS_SUNLOCK(%struct.autofs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
