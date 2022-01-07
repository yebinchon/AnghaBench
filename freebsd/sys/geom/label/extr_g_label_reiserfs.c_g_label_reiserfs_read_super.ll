; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_reiserfs.c_g_label_reiserfs_read_super.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_reiserfs.c_g_label_reiserfs_read_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.g_consumer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@REISERFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.g_consumer*, i32)* @g_label_reiserfs_read_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @g_label_reiserfs_read_super(%struct.g_consumer* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %9 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = srem i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @g_read_data(%struct.g_consumer* %19, i32 %20, i32 %21, i32* null)
  %23 = inttoptr i64 %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %41

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @REISERFS_SUPER_MAGIC, align 4
  %32 = load i32, i32* @REISERFS_SUPER_MAGIC, align 4
  %33 = call i32 @strlen(i32 %32)
  %34 = call i64 @strncmp(i32 %30, i32 %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = call i32 @g_free(%struct.TYPE_6__* %37)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %41

39:                                               ; preds = %27
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %3, align 8
  br label %41

41:                                               ; preds = %39, %36, %26, %17
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %42
}

declare dso_local i64 @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @g_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
