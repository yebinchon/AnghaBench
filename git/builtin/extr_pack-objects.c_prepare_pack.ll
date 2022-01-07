; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_prepare_pack.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_prepare_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.object_entry* }
%struct.object_entry = type { %struct.TYPE_5__, i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@use_delta_islands = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@progress = common dso_local global i64 0, align 8
@to_pack = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@pack_to_stdout = common dso_local global i32 0, align 4
@do_check_packed_object_crc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to get type of object %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Compressing objects\00", align 1
@progress_state = common dso_local global i32 0, align 4
@type_size_sort = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"inconsistency with delta count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @prepare_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_pack(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_entry**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_entry*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i64, i64* @use_delta_islands, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @the_repository, align 4
  %15 = load i64, i64* @progress, align 8
  %16 = call i32 @resolve_tree_islands(i32 %14, i64 %15, %struct.TYPE_6__* @to_pack)
  br label %17

17:                                               ; preds = %13, %2
  %18 = call i32 (...) @get_object_details()
  %19 = load i32, i32* @pack_to_stdout, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 1, i32* @do_check_packed_object_crc, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @to_pack, i32 0, i32 0), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %25, %22
  br label %135

32:                                               ; preds = %28
  %33 = load %struct.object_entry**, %struct.object_entry*** %5, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @to_pack, i32 0, i32 0), align 8
  %35 = call i32 @ALLOC_ARRAY(%struct.object_entry** %33, i64 %34)
  store i32 0, i32* %8, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %96, %32
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @to_pack, i32 0, i32 0), align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %99

40:                                               ; preds = %36
  %41 = load %struct.object_entry*, %struct.object_entry** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @to_pack, i32 0, i32 1), align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %41, i64 %42
  store %struct.object_entry* %43, %struct.object_entry** %9, align 8
  %44 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %45 = call i64 @DELTA(%struct.object_entry* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %96

48:                                               ; preds = %40
  %49 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %50 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %55 = call i64 @oe_size_less_than(%struct.TYPE_6__* @to_pack, %struct.object_entry* %54, i32 50)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %48
  br label %96

58:                                               ; preds = %53
  %59 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %60 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %96

64:                                               ; preds = %58
  %65 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %66 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %7, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %7, align 8
  %72 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %73 = call i64 @oe_type(%struct.object_entry* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %78 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 @oid_to_hex(i32* %79)
  %81 = call i32 (i32, ...) @die(i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %75, %69
  br label %89

83:                                               ; preds = %64
  %84 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %85 = call i64 @oe_type(%struct.object_entry* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %96

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %82
  %90 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %91 = load %struct.object_entry**, %struct.object_entry*** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %91, i64 %94
  store %struct.object_entry* %90, %struct.object_entry** %95, align 8
  br label %96

96:                                               ; preds = %89, %87, %63, %57, %47
  %97 = load i64, i64* %6, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %6, align 8
  br label %36

99:                                               ; preds = %36
  %100 = load i64, i64* %7, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %132

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = icmp ugt i32 %103, 1
  br i1 %104, label %105, label %132

105:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  %106 = load i64, i64* @progress, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @start_progress(i32 %109, i64 %110)
  store i32 %111, i32* @progress_state, align 4
  br label %112

112:                                              ; preds = %108, %105
  %113 = load %struct.object_entry**, %struct.object_entry*** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @type_size_sort, align 4
  %116 = call i32 @QSORT(%struct.object_entry** %113, i32 %114, i32 %115)
  %117 = load %struct.object_entry**, %struct.object_entry*** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @ll_find_deltas(%struct.object_entry** %117, i32 %118, i32 %120, i32 %121, i32* %10)
  %123 = call i32 @stop_progress(i32* @progress_state)
  %124 = load i32, i32* %10, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %7, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %112
  %129 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %130 = call i32 (i32, ...) @die(i32 %129)
  br label %131

131:                                              ; preds = %128, %112
  br label %132

132:                                              ; preds = %131, %102, %99
  %133 = load %struct.object_entry**, %struct.object_entry*** %5, align 8
  %134 = call i32 @free(%struct.object_entry** %133)
  br label %135

135:                                              ; preds = %132, %31
  ret void
}

declare dso_local i32 @resolve_tree_islands(i32, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @get_object_details(...) #1

declare dso_local i32 @ALLOC_ARRAY(%struct.object_entry**, i64) #1

declare dso_local i64 @DELTA(%struct.object_entry*) #1

declare dso_local i64 @oe_size_less_than(%struct.TYPE_6__*, %struct.object_entry*, i32) #1

declare dso_local i64 @oe_type(%struct.object_entry*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @start_progress(i32, i64) #1

declare dso_local i32 @QSORT(%struct.object_entry**, i32, i32) #1

declare dso_local i32 @ll_find_deltas(%struct.object_entry**, i32, i32, i32, i32*) #1

declare dso_local i32 @stop_progress(i32*) #1

declare dso_local i32 @free(%struct.object_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
