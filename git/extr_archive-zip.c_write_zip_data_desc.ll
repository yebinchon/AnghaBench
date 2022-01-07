; ModuleID = '/home/carl/AnghaBench/git/extr_archive-zip.c_write_zip_data_desc.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-zip.c_write_zip_data_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip64_data_desc = type { i32, i32, i32, i32 }
%struct.zip_data_desc = type { i32, i32, i32, i32 }

@ZIP64_DATA_DESC_SIZE = common dso_local global i64 0, align 8
@zip_offset = common dso_local global i32 0, align 4
@ZIP_DATA_DESC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @write_zip_data_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_zip_data_desc(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.zip64_data_desc, align 4
  %8 = alloca %struct.zip_data_desc, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp uge i64 %9, 4294967295
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp uge i64 %12, 4294967295
  br i1 %13, label %14, label %38

14:                                               ; preds = %11, %3
  %15 = getelementptr inbounds %struct.zip64_data_desc, %struct.zip64_data_desc* %7, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @copy_le32(i32 %16, i64 134695760)
  %18 = getelementptr inbounds %struct.zip64_data_desc, %struct.zip64_data_desc* %7, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @copy_le32(i32 %19, i64 %20)
  %22 = getelementptr inbounds %struct.zip64_data_desc, %struct.zip64_data_desc* %7, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @copy_le64(i32 %23, i64 %24)
  %26 = getelementptr inbounds %struct.zip64_data_desc, %struct.zip64_data_desc* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @copy_le64(i32 %27, i64 %28)
  %30 = bitcast %struct.zip64_data_desc* %7 to %struct.zip_data_desc*
  %31 = load i64, i64* @ZIP64_DATA_DESC_SIZE, align 8
  %32 = call i32 @write_or_die(i32 1, %struct.zip_data_desc* %30, i64 %31)
  %33 = load i64, i64* @ZIP64_DATA_DESC_SIZE, align 8
  %34 = load i32, i32* @zip_offset, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* @zip_offset, align 4
  br label %61

38:                                               ; preds = %11
  %39 = getelementptr inbounds %struct.zip_data_desc, %struct.zip_data_desc* %8, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @copy_le32(i32 %40, i64 134695760)
  %42 = getelementptr inbounds %struct.zip_data_desc, %struct.zip_data_desc* %8, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @copy_le32(i32 %43, i64 %44)
  %46 = getelementptr inbounds %struct.zip_data_desc, %struct.zip_data_desc* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @copy_le32(i32 %47, i64 %48)
  %50 = getelementptr inbounds %struct.zip_data_desc, %struct.zip_data_desc* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @copy_le32(i32 %51, i64 %52)
  %54 = load i64, i64* @ZIP_DATA_DESC_SIZE, align 8
  %55 = call i32 @write_or_die(i32 1, %struct.zip_data_desc* %8, i64 %54)
  %56 = load i64, i64* @ZIP_DATA_DESC_SIZE, align 8
  %57 = load i32, i32* @zip_offset, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* @zip_offset, align 4
  br label %61

61:                                               ; preds = %38, %14
  ret void
}

declare dso_local i32 @copy_le32(i32, i64) #1

declare dso_local i32 @copy_le64(i32, i64) #1

declare dso_local i32 @write_or_die(i32, %struct.zip_data_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
