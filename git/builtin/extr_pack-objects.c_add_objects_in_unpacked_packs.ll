; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_objects_in_unpacked_packs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_objects_in_unpacked_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i64, i64, i64, i32, %struct.packed_git* }
%struct.in_pack = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.object* }
%struct.object = type { i32, i32, i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot open pack index\00", align 1
@OBJECT_ADDED = common dso_local global i32 0, align 4
@ofscmp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_objects_in_unpacked_packs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_objects_in_unpacked_packs() #0 {
  %1 = alloca %struct.packed_git*, align 8
  %2 = alloca %struct.in_pack, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.object_id, align 4
  %5 = alloca %struct.object*, align 8
  %6 = alloca %struct.object*, align 8
  %7 = call i32 @memset(%struct.in_pack* %2, i32 0, i32 24)
  %8 = load i32, i32* @the_repository, align 4
  %9 = call %struct.packed_git* @get_all_packs(i32 %8)
  store %struct.packed_git* %9, %struct.packed_git** %1, align 8
  br label %10

10:                                               ; preds = %79, %0
  %11 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %12 = icmp ne %struct.packed_git* %11, null
  br i1 %12, label %13, label %83

13:                                               ; preds = %10
  %14 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %15 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %20 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %25 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18, %13
  br label %79

29:                                               ; preds = %23
  %30 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %31 = call i64 @open_pack_index(%struct.packed_git* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @die(i32 %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %2, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %2, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %42 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %40, %43
  %45 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %2, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ALLOC_GROW(%struct.TYPE_4__* %38, i64 %44, i32 %46)
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %75, %36
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %51 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @nth_packed_object_oid(%struct.object_id* %4, %struct.packed_git* %55, i64 %56)
  %58 = call %struct.object* @lookup_unknown_object(%struct.object_id* %4)
  store %struct.object* %58, %struct.object** %5, align 8
  %59 = load %struct.object*, %struct.object** %5, align 8
  %60 = getelementptr inbounds %struct.object, %struct.object* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OBJECT_ADDED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %54
  %66 = load %struct.object*, %struct.object** %5, align 8
  %67 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %68 = call i32 @mark_in_pack_object(%struct.object* %66, %struct.packed_git* %67, %struct.in_pack* %2)
  br label %69

69:                                               ; preds = %65, %54
  %70 = load i32, i32* @OBJECT_ADDED, align 4
  %71 = load %struct.object*, %struct.object** %5, align 8
  %72 = getelementptr inbounds %struct.object, %struct.object* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %3, align 8
  br label %48

78:                                               ; preds = %48
  br label %79

79:                                               ; preds = %78, %28
  %80 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %81 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %80, i32 0, i32 4
  %82 = load %struct.packed_git*, %struct.packed_git** %81, align 8
  store %struct.packed_git* %82, %struct.packed_git** %1, align 8
  br label %10

83:                                               ; preds = %10
  %84 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %2, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %116

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %2, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %2, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @ofscmp, align 4
  %93 = call i32 @QSORT(%struct.TYPE_4__* %89, i64 %91, i32 %92)
  store i64 0, i64* %3, align 8
  br label %94

94:                                               ; preds = %112, %87
  %95 = load i64, i64* %3, align 8
  %96 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %2, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ult i64 %95, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %2, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i64, i64* %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.object*, %struct.object** %104, align 8
  store %struct.object* %105, %struct.object** %6, align 8
  %106 = load %struct.object*, %struct.object** %6, align 8
  %107 = getelementptr inbounds %struct.object, %struct.object* %106, i32 0, i32 2
  %108 = load %struct.object*, %struct.object** %6, align 8
  %109 = getelementptr inbounds %struct.object, %struct.object* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @add_object_entry(i32* %107, i32 %110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %112

112:                                              ; preds = %99
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %3, align 8
  br label %94

115:                                              ; preds = %94
  br label %116

116:                                              ; preds = %115, %83
  %117 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %2, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = call i32 @free(%struct.TYPE_4__* %118)
  ret void
}

declare dso_local i32 @memset(%struct.in_pack*, i32, i32) #1

declare dso_local %struct.packed_git* @get_all_packs(i32) #1

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @nth_packed_object_oid(%struct.object_id*, %struct.packed_git*, i64) #1

declare dso_local %struct.object* @lookup_unknown_object(%struct.object_id*) #1

declare dso_local i32 @mark_in_pack_object(%struct.object*, %struct.packed_git*, %struct.in_pack*) #1

declare dso_local i32 @QSORT(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @add_object_entry(i32*, i32, i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
