; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_fill_blob_sha1_and_mode.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_fill_blob_sha1_and_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.blame_origin = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OBJ_BLOB = common dso_local global i64 0, align 8
@S_IFINVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.blame_origin*)* @fill_blob_sha1_and_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_blob_sha1_and_mode(%struct.repository* %0, %struct.blame_origin* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.blame_origin*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.blame_origin* %1, %struct.blame_origin** %5, align 8
  %6 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %7 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %6, i32 0, i32 1
  %8 = call i32 @is_null_oid(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

11:                                               ; preds = %2
  %12 = load %struct.repository*, %struct.repository** %4, align 8
  %13 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %14 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %19 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %22 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %21, i32 0, i32 1
  %23 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %24 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %23, i32 0, i32 0
  %25 = call i64 @get_tree_entry(%struct.repository* %12, i32* %17, i32 %20, i32* %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %11
  br label %37

28:                                               ; preds = %11
  %29 = load %struct.repository*, %struct.repository** %4, align 8
  %30 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %31 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %30, i32 0, i32 1
  %32 = call i64 @oid_object_info(%struct.repository* %29, i32* %31, i32* null)
  %33 = load i64, i64* @OBJ_BLOB, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %44

37:                                               ; preds = %35, %27
  %38 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %39 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %38, i32 0, i32 1
  %40 = call i32 @oidclr(i32* %39)
  %41 = load i32, i32* @S_IFINVALID, align 4
  %42 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %43 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %36, %10
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i64 @get_tree_entry(%struct.repository*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @oid_object_info(%struct.repository*, i32*, i32*) #1

declare dso_local i32 @oidclr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
