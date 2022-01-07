; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_find_ofs_delta.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_find_ofs_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofs_delta_entry = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@nr_ofs_deltas = common dso_local global i32 0, align 4
@ofs_deltas = common dso_local global %struct.ofs_delta_entry* null, align 8
@objects = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @find_ofs_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ofs_delta(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ofs_delta_entry*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @nr_ofs_deltas, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %49, %47, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %17, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ofs_delta_entry*, %struct.ofs_delta_entry** @ofs_deltas, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ofs_delta_entry, %struct.ofs_delta_entry* %23, i64 %25
  store %struct.ofs_delta_entry* %26, %struct.ofs_delta_entry** %9, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.ofs_delta_entry*, %struct.ofs_delta_entry** %9, align 8
  %29 = getelementptr inbounds %struct.ofs_delta_entry, %struct.ofs_delta_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @objects, align 8
  %33 = load %struct.ofs_delta_entry*, %struct.ofs_delta_entry** %9, align 8
  %34 = getelementptr inbounds %struct.ofs_delta_entry, %struct.ofs_delta_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @compare_ofs_delta_bases(i32 %27, i32 %30, i32 %31, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %16
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %56

44:                                               ; preds = %16
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %7, align 4
  br label %12

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %12

52:                                               ; preds = %12
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 0, %53
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %42
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @compare_ofs_delta_bases(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
