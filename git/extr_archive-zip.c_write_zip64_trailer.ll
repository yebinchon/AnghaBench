; ModuleID = '/home/carl/AnghaBench/git/extr_archive-zip.c_write_zip64_trailer.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-zip.c_write_zip64_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zip64_dir_trailer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.zip64_dir_trailer_locator = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ZIP64_DIR_TRAILER_RECORD_SIZE = common dso_local global i64 0, align 8
@max_creator_version = common dso_local global i32 0, align 4
@zip_dir_entries = common dso_local global i64 0, align 8
@zip_dir = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@zip_offset = common dso_local global i64 0, align 8
@ZIP64_DIR_TRAILER_SIZE = common dso_local global i32 0, align 4
@ZIP64_DIR_TRAILER_LOCATOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_zip64_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_zip64_trailer() #0 {
  %1 = alloca %struct.zip64_dir_trailer, align 4
  %2 = alloca %struct.zip64_dir_trailer_locator, align 4
  %3 = getelementptr inbounds %struct.zip64_dir_trailer, %struct.zip64_dir_trailer* %1, i32 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @copy_le32(i32 %4, i32 101075792)
  %6 = getelementptr inbounds %struct.zip64_dir_trailer, %struct.zip64_dir_trailer* %1, i32 0, i32 10
  %7 = load i32, i32* %6, align 4
  %8 = load i64, i64* @ZIP64_DIR_TRAILER_RECORD_SIZE, align 8
  %9 = call i32 @copy_le64(i32 %7, i64 %8)
  %10 = getelementptr inbounds %struct.zip64_dir_trailer, %struct.zip64_dir_trailer* %1, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @max_creator_version, align 4
  %13 = call i32 @copy_le16(i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.zip64_dir_trailer, %struct.zip64_dir_trailer* %1, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @copy_le16(i32 %15, i32 45)
  %17 = getelementptr inbounds %struct.zip64_dir_trailer, %struct.zip64_dir_trailer* %1, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @copy_le32(i32 %18, i32 0)
  %20 = getelementptr inbounds %struct.zip64_dir_trailer, %struct.zip64_dir_trailer* %1, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @copy_le32(i32 %21, i32 0)
  %23 = getelementptr inbounds %struct.zip64_dir_trailer, %struct.zip64_dir_trailer* %1, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @zip_dir_entries, align 8
  %26 = call i32 @copy_le64(i32 %24, i64 %25)
  %27 = getelementptr inbounds %struct.zip64_dir_trailer, %struct.zip64_dir_trailer* %1, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @zip_dir_entries, align 8
  %30 = call i32 @copy_le64(i32 %28, i64 %29)
  %31 = getelementptr inbounds %struct.zip64_dir_trailer, %struct.zip64_dir_trailer* %1, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zip_dir, i32 0, i32 0), align 8
  %34 = call i32 @copy_le64(i32 %32, i64 %33)
  %35 = getelementptr inbounds %struct.zip64_dir_trailer, %struct.zip64_dir_trailer* %1, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @zip_offset, align 8
  %38 = call i32 @copy_le64(i32 %36, i64 %37)
  %39 = getelementptr inbounds %struct.zip64_dir_trailer_locator, %struct.zip64_dir_trailer_locator* %2, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @copy_le32(i32 %40, i32 117853008)
  %42 = getelementptr inbounds %struct.zip64_dir_trailer_locator, %struct.zip64_dir_trailer_locator* %2, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @copy_le32(i32 %43, i32 0)
  %45 = getelementptr inbounds %struct.zip64_dir_trailer_locator, %struct.zip64_dir_trailer_locator* %2, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @zip_offset, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zip_dir, i32 0, i32 0), align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @copy_le64(i32 %46, i64 %49)
  %51 = getelementptr inbounds %struct.zip64_dir_trailer_locator, %struct.zip64_dir_trailer_locator* %2, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @copy_le32(i32 %52, i32 1)
  %54 = bitcast %struct.zip64_dir_trailer* %1 to %struct.zip64_dir_trailer_locator*
  %55 = load i32, i32* @ZIP64_DIR_TRAILER_SIZE, align 4
  %56 = call i32 @write_or_die(i32 1, %struct.zip64_dir_trailer_locator* %54, i32 %55)
  %57 = load i32, i32* @ZIP64_DIR_TRAILER_LOCATOR_SIZE, align 4
  %58 = call i32 @write_or_die(i32 1, %struct.zip64_dir_trailer_locator* %2, i32 %57)
  ret void
}

declare dso_local i32 @copy_le32(i32, i32) #1

declare dso_local i32 @copy_le64(i32, i64) #1

declare dso_local i32 @copy_le16(i32, i32) #1

declare dso_local i32 @write_or_die(i32, %struct.zip64_dir_trailer_locator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
