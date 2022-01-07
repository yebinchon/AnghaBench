; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.tmpfs_dirent = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tmpfs_node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.tmpfs_dir_cursor = type { %struct.tmpfs_dirent*, %struct.tmpfs_dirent* }

@uh = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@tmpfs_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tmpfs_dirent* @tmpfs_dir_next(%struct.tmpfs_node* %0, %struct.tmpfs_dir_cursor* %1) #0 {
  %3 = alloca %struct.tmpfs_dirent*, align 8
  %4 = alloca %struct.tmpfs_node*, align 8
  %5 = alloca %struct.tmpfs_dir_cursor*, align 8
  %6 = alloca %struct.tmpfs_dirent*, align 8
  store %struct.tmpfs_node* %0, %struct.tmpfs_node** %4, align 8
  store %struct.tmpfs_dir_cursor* %1, %struct.tmpfs_dir_cursor** %5, align 8
  %7 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %8 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %7, i32 0, i32 1
  %9 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %10 = icmp ne %struct.tmpfs_dirent* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @MPASS(i32 %11)
  %13 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %14 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %13, i32 0, i32 0
  %15 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %14, align 8
  %16 = call i64 @tmpfs_dirent_dup(%struct.tmpfs_dirent* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %20 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %19, i32 0, i32 0
  %21 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %20, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uh, i32 0, i32 0, i32 0), align 4
  %23 = call %struct.tmpfs_dirent* @LIST_NEXT(%struct.tmpfs_dirent* %21, i32 %22)
  %24 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %25 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %24, i32 0, i32 0
  store %struct.tmpfs_dirent* %23, %struct.tmpfs_dirent** %25, align 8
  %26 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %27 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %26, i32 0, i32 0
  %28 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %27, align 8
  %29 = icmp ne %struct.tmpfs_dirent* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %32 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %31, i32 0, i32 0
  %33 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %32, align 8
  store %struct.tmpfs_dirent* %33, %struct.tmpfs_dirent** %3, align 8
  br label %73

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* @tmpfs_dir, align 4
  %37 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %38 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %41 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %40, i32 0, i32 1
  %42 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %41, align 8
  %43 = call %struct.tmpfs_dirent* @RB_NEXT(i32 %36, i32* %39, %struct.tmpfs_dirent* %42)
  %44 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %44, i32 0, i32 0
  store %struct.tmpfs_dirent* %43, %struct.tmpfs_dirent** %45, align 8
  %46 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %47 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %46, i32 0, i32 1
  store %struct.tmpfs_dirent* %43, %struct.tmpfs_dirent** %47, align 8
  %48 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %49 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %48, i32 0, i32 0
  %50 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %49, align 8
  store %struct.tmpfs_dirent* %50, %struct.tmpfs_dirent** %6, align 8
  %51 = icmp ne %struct.tmpfs_dirent* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %35
  %53 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %54 = call i64 @tmpfs_dirent_duphead(%struct.tmpfs_dirent* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %58 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call %struct.tmpfs_dirent* @LIST_FIRST(i32* %59)
  %61 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %62 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %61, i32 0, i32 0
  store %struct.tmpfs_dirent* %60, %struct.tmpfs_dirent** %62, align 8
  %63 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %64 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %63, i32 0, i32 0
  %65 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %64, align 8
  %66 = icmp ne %struct.tmpfs_dirent* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @MPASS(i32 %67)
  br label %69

69:                                               ; preds = %56, %52, %35
  %70 = load %struct.tmpfs_dir_cursor*, %struct.tmpfs_dir_cursor** %5, align 8
  %71 = getelementptr inbounds %struct.tmpfs_dir_cursor, %struct.tmpfs_dir_cursor* %70, i32 0, i32 0
  %72 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %71, align 8
  store %struct.tmpfs_dirent* %72, %struct.tmpfs_dirent** %3, align 8
  br label %73

73:                                               ; preds = %69, %30
  %74 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %3, align 8
  ret %struct.tmpfs_dirent* %74
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @tmpfs_dirent_dup(%struct.tmpfs_dirent*) #1

declare dso_local %struct.tmpfs_dirent* @LIST_NEXT(%struct.tmpfs_dirent*, i32) #1

declare dso_local %struct.tmpfs_dirent* @RB_NEXT(i32, i32*, %struct.tmpfs_dirent*) #1

declare dso_local i64 @tmpfs_dirent_duphead(%struct.tmpfs_dirent*) #1

declare dso_local %struct.tmpfs_dirent* @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
