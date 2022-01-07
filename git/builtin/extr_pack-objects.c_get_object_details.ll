; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_get_object_details.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_get_object_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.object_entry* }
%struct.object_entry = type { i32, i64 }

@progress = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Counting objects\00", align 1
@to_pack = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@progress_state = common dso_local global i32 0, align 4
@pack_offset_sort = common dso_local global i32 0, align 4
@big_file_threshold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_object_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_object_details() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.object_entry**, align 8
  %3 = alloca %struct.object_entry*, align 8
  %4 = load i64, i64* @progress, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 0), align 8
  %9 = call i32 @start_progress(i32 %7, i64 %8)
  store i32 %9, i32* @progress_state, align 4
  br label %10

10:                                               ; preds = %6, %0
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 0), align 8
  %12 = call %struct.object_entry** @xcalloc(i64 %11, i32 8)
  store %struct.object_entry** %12, %struct.object_entry*** %2, align 8
  store i64 0, i64* %1, align 8
  br label %13

13:                                               ; preds = %24, %10
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 0), align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.object_entry*, %struct.object_entry** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 1), align 8
  %19 = load i64, i64* %1, align 8
  %20 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %18, i64 %19
  %21 = load %struct.object_entry**, %struct.object_entry*** %2, align 8
  %22 = load i64, i64* %1, align 8
  %23 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %21, i64 %22
  store %struct.object_entry* %20, %struct.object_entry** %23, align 8
  br label %24

24:                                               ; preds = %17
  %25 = load i64, i64* %1, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %1, align 8
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.object_entry**, %struct.object_entry*** %2, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 0), align 8
  %30 = load i32, i32* @pack_offset_sort, align 4
  %31 = call i32 @QSORT(%struct.object_entry** %28, i64 %29, i32 %30)
  store i64 0, i64* %1, align 8
  br label %32

32:                                               ; preds = %60, %27
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 0), align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load %struct.object_entry**, %struct.object_entry*** %2, align 8
  %38 = load i64, i64* %1, align 8
  %39 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %37, i64 %38
  %40 = load %struct.object_entry*, %struct.object_entry** %39, align 8
  store %struct.object_entry* %40, %struct.object_entry** %3, align 8
  %41 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %42 = call i32 @check_object(%struct.object_entry* %41)
  %43 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %44 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %49 = load i32, i32* @big_file_threshold, align 4
  %50 = call i64 @oe_size_greater_than(%struct.TYPE_3__* @to_pack, %struct.object_entry* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %54 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %47, %36
  %56 = load i32, i32* @progress_state, align 4
  %57 = load i64, i64* %1, align 8
  %58 = add i64 %57, 1
  %59 = call i32 @display_progress(i32 %56, i64 %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %1, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %1, align 8
  br label %32

63:                                               ; preds = %32
  %64 = call i32 @stop_progress(i32* @progress_state)
  store i64 0, i64* %1, align 8
  br label %65

65:                                               ; preds = %74, %63
  %66 = load i64, i64* %1, align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 0), align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.object_entry*, %struct.object_entry** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 1), align 8
  %71 = load i64, i64* %1, align 8
  %72 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %70, i64 %71
  %73 = call i32 @break_delta_chains(%struct.object_entry* %72)
  br label %74

74:                                               ; preds = %69
  %75 = load i64, i64* %1, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %1, align 8
  br label %65

77:                                               ; preds = %65
  %78 = load %struct.object_entry**, %struct.object_entry*** %2, align 8
  %79 = call i32 @free(%struct.object_entry** %78)
  ret void
}

declare dso_local i32 @start_progress(i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.object_entry** @xcalloc(i64, i32) #1

declare dso_local i32 @QSORT(%struct.object_entry**, i64, i32) #1

declare dso_local i32 @check_object(%struct.object_entry*) #1

declare dso_local i64 @oe_size_greater_than(%struct.TYPE_3__*, %struct.object_entry*, i32) #1

declare dso_local i32 @display_progress(i32, i64) #1

declare dso_local i32 @stop_progress(i32*) #1

declare dso_local i32 @break_delta_chains(%struct.object_entry*) #1

declare dso_local i32 @free(%struct.object_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
