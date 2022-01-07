; ModuleID = '/home/carl/AnghaBench/git/extr_archive-zip.c_write_zip_trailer.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-zip.c_write_zip_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.zip_dir_trailer* }
%struct.zip_dir_trailer = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.object_id = type { i32 }

@zip_dir_entries = common dso_local global i32 0, align 4
@zip_dir = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@zip_offset = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@ZIP_DIR_TRAILER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*)* @write_zip_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_zip_trailer(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.zip_dir_trailer, align 4
  %4 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.zip_dir_trailer, %struct.zip_dir_trailer* %3, i32 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @copy_le32(i32 %6, i32 101010256)
  %8 = getelementptr inbounds %struct.zip_dir_trailer, %struct.zip_dir_trailer* %3, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @copy_le16(i32 %9, i32 0)
  %11 = getelementptr inbounds %struct.zip_dir_trailer, %struct.zip_dir_trailer* %3, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @copy_le16(i32 %12, i32 0)
  %14 = getelementptr inbounds %struct.zip_dir_trailer, %struct.zip_dir_trailer* %3, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @zip_dir_entries, align 4
  %17 = call i32 @copy_le16_clamp(i32 %15, i32 %16, i32* %4)
  %18 = getelementptr inbounds %struct.zip_dir_trailer, %struct.zip_dir_trailer* %3, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @zip_dir_entries, align 4
  %21 = call i32 @copy_le16_clamp(i32 %19, i32 %20, i32* %4)
  %22 = getelementptr inbounds %struct.zip_dir_trailer, %struct.zip_dir_trailer* %3, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zip_dir, i32 0, i32 0), align 8
  %25 = call i32 @copy_le32(i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.zip_dir_trailer, %struct.zip_dir_trailer* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @zip_offset, align 4
  %29 = call i32 @copy_le32_clamp(i32 %27, i32 %28, i32* %4)
  %30 = getelementptr inbounds %struct.zip_dir_trailer, %struct.zip_dir_trailer* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.object_id*, %struct.object_id** %2, align 8
  %33 = icmp ne %struct.object_id* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %39

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 0, %38 ]
  %41 = call i32 @copy_le16(i32 %31, i32 %40)
  %42 = load %struct.zip_dir_trailer*, %struct.zip_dir_trailer** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zip_dir, i32 0, i32 1), align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zip_dir, i32 0, i32 0), align 8
  %44 = call i32 @write_or_die(i32 1, %struct.zip_dir_trailer* %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 (...) @write_zip64_trailer()
  br label %49

49:                                               ; preds = %47, %39
  %50 = load i32, i32* @ZIP_DIR_TRAILER_SIZE, align 4
  %51 = call i32 @write_or_die(i32 1, %struct.zip_dir_trailer* %3, i32 %50)
  %52 = load %struct.object_id*, %struct.object_id** %2, align 8
  %53 = icmp ne %struct.object_id* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.object_id*, %struct.object_id** %2, align 8
  %56 = call %struct.zip_dir_trailer* @oid_to_hex(%struct.object_id* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @write_or_die(i32 1, %struct.zip_dir_trailer* %56, i32 %59)
  br label %61

61:                                               ; preds = %54, %49
  ret void
}

declare dso_local i32 @copy_le32(i32, i32) #1

declare dso_local i32 @copy_le16(i32, i32) #1

declare dso_local i32 @copy_le16_clamp(i32, i32, i32*) #1

declare dso_local i32 @copy_le32_clamp(i32, i32, i32*) #1

declare dso_local i32 @write_or_die(i32, %struct.zip_dir_trailer*, i32) #1

declare dso_local i32 @write_zip64_trailer(...) #1

declare dso_local %struct.zip_dir_trailer* @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
