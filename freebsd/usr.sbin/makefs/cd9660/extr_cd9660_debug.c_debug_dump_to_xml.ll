; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_debug.c_debug_dump_to_xml.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_debug.c_debug_dump_to_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_primary_descriptor = type { i64, i64, i64 }
%struct._boot_volume_descriptor = type { i64, i64, i64 }

@CD9660_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"<cd9660dump>\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"fseeko\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Path table 1 located at sector %i and is %i bytes long\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"</cd9660dump>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_dump_to_xml(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iso_primary_descriptor, align 8
  %9 = alloca %struct._boot_volume_descriptor, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32, i32* @CD9660_SECTOR_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 16, i32* %5, align 4
  br label %15

15:                                               ; preds = %45, %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @CD9660_SECTOR_SIZE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i32 @fseeko(i32* %16, i32 %19, i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %15
  %26 = load i32, i32* @CD9660_SECTOR_SIZE, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @fread(i8* %13, i32 1, i32 %26, i32* %27)
  %29 = getelementptr inbounds i8, i8* %13, i64 0
  %30 = load i8, i8* %29, align 16
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %40 [
    i32 0, label %33
    i32 1, label %37
  ]

33:                                               ; preds = %25
  %34 = bitcast %struct._boot_volume_descriptor* %9 to %struct.iso_primary_descriptor*
  %35 = load i32, i32* @CD9660_SECTOR_SIZE, align 4
  %36 = call i32 @memcpy(%struct.iso_primary_descriptor* %34, i8* %13, i32 %35)
  br label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @CD9660_SECTOR_SIZE, align 4
  %39 = call i32 @memcpy(%struct.iso_primary_descriptor* %8, i8* %13, i32 %38)
  br label %40

40:                                               ; preds = %25, %37, %33
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @debug_dump_to_xml_volume_descriptor(i8* %13, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 255
  br i1 %47, label %15, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %8, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @debug_get_encoded_number(i32* %51, i32 731)
  store i32 %52, i32* %6, align 4
  %53 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %8, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = call i32 @debug_get_encoded_number(i32* %55, i32 733)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @debug_dump_to_xml_path_table(i32* %60, i32 %61, i32 %62, i32 721)
  %64 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %8, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = call i32 @debug_get_encoded_number(i32* %66, i32 731)
  store i32 %67, i32* %6, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @debug_dump_to_xml_path_table(i32* %68, i32 %69, i32 %70, i32 722)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fseeko(i32*, i32, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @memcpy(%struct.iso_primary_descriptor*, i8*, i32) #2

declare dso_local i32 @debug_dump_to_xml_volume_descriptor(i8*, i32) #2

declare dso_local i32 @debug_get_encoded_number(i32*, i32) #2

declare dso_local i32 @debug_dump_to_xml_path_table(i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
