; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_oe_get_size_slow.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_oe_get_size_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { i32 }
%struct.object_entry = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.packed_git = type { i32 }
%struct.pack_window = type { i32 }

@OBJ_OFS_DELTA = common dso_local global i64 0, align 8
@OBJ_REF_DELTA = common dso_local global i64 0, align 8
@to_pack = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to get size of %s\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"when e->type is a delta, it must belong to a pack\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unable to parse object header of %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @oe_get_size_slow(%struct.packing_data* %0, %struct.object_entry* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.packing_data*, align 8
  %5 = alloca %struct.object_entry*, align 8
  %6 = alloca %struct.packed_git*, align 8
  %7 = alloca %struct.pack_window*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.packing_data* %0, %struct.packing_data** %4, align 8
  store %struct.object_entry* %1, %struct.object_entry** %5, align 8
  %13 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %14 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OBJ_OFS_DELTA, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %2
  %19 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %20 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OBJ_REF_DELTA, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = call i32 @packing_data_lock(i32* @to_pack)
  %26 = load i32, i32* @the_repository, align 4
  %27 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %28 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i64 @oid_object_info(i32 %26, i32* %29, i64* %12)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %35 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @oid_to_hex(i32* %36)
  %38 = call i32 @die(i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %32, %24
  %40 = call i32 @packing_data_unlock(i32* @to_pack)
  %41 = load i64, i64* %12, align 8
  store i64 %41, i64* %3, align 8
  br label %73

42:                                               ; preds = %18, %2
  %43 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %44 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %45 = call %struct.packed_git* @oe_in_pack(%struct.packing_data* %43, %struct.object_entry* %44)
  store %struct.packed_git* %45, %struct.packed_git** %6, align 8
  %46 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %47 = icmp ne %struct.packed_git* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = call i32 @BUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %42
  %51 = call i32 @packing_data_lock(i32* @to_pack)
  store %struct.pack_window* null, %struct.pack_window** %7, align 8
  %52 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %53 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %54 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @use_pack(%struct.packed_git* %52, %struct.pack_window** %7, i32 %55, i64* %11)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i64 @unpack_object_header_buffer(i8* %57, i64 %58, i32* %9, i64* %12)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %50
  %63 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %65 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @oid_to_hex(i32* %66)
  %68 = call i32 @die(i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %62, %50
  %70 = call i32 @unuse_pack(%struct.pack_window** %7)
  %71 = call i32 @packing_data_unlock(i32* @to_pack)
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %69, %39
  %74 = load i64, i64* %3, align 8
  ret i64 %74
}

declare dso_local i32 @packing_data_lock(i32*) #1

declare dso_local i64 @oid_object_info(i32, i32*, i64*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @packing_data_unlock(i32*) #1

declare dso_local %struct.packed_git* @oe_in_pack(%struct.packing_data*, %struct.object_entry*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i8* @use_pack(%struct.packed_git*, %struct.pack_window**, i32, i64*) #1

declare dso_local i64 @unpack_object_header_buffer(i8*, i64, i32*, i64*) #1

declare dso_local i32 @unuse_pack(%struct.pack_window**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
