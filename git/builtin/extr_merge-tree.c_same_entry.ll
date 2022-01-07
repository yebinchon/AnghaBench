; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_same_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_same_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_entry = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.name_entry*, %struct.name_entry*)* @same_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_entry(%struct.name_entry* %0, %struct.name_entry* %1) #0 {
  %3 = alloca %struct.name_entry*, align 8
  %4 = alloca %struct.name_entry*, align 8
  store %struct.name_entry* %0, %struct.name_entry** %3, align 8
  store %struct.name_entry* %1, %struct.name_entry** %4, align 8
  %5 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %6 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %5, i32 0, i32 1
  %7 = call i32 @is_null_oid(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %11 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %10, i32 0, i32 1
  %12 = call i32 @is_null_oid(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %16 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %15, i32 0, i32 1
  %17 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %18 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 1
  %19 = call i64 @oideq(i32* %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %23 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %26 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br label %29

29:                                               ; preds = %21, %14, %9, %2
  %30 = phi i1 [ false, %14 ], [ false, %9 ], [ false, %2 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i64 @oideq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
