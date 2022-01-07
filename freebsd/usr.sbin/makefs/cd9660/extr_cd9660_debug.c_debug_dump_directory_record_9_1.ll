; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_debug.c_debug_dump_directory_record_9_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_debug.c_debug_dump_directory_record_9_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_directory_record = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"<directoryrecord>\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ext_attr_length\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"extent\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"file_unit_size\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"interleave\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"volume_sequence_number\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"name_len\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"</directoryrecord>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_dump_directory_record_9_1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.iso_directory_record*
  %6 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %7, i32 711)
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.iso_directory_record*
  %11 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %12, i32 711)
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.iso_directory_record*
  %16 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %18, i32 733)
  %20 = load i8*, i8** %2, align 8
  %21 = bitcast i8* %20 to %struct.iso_directory_record*
  %22 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %24, i32 733)
  %26 = load i8*, i8** %2, align 8
  %27 = bitcast i8* %26 to %struct.iso_directory_record*
  %28 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %29, i32 711)
  %31 = load i8*, i8** %2, align 8
  %32 = bitcast i8* %31 to %struct.iso_directory_record*
  %33 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %34, i32 711)
  %36 = load i8*, i8** %2, align 8
  %37 = bitcast i8* %36 to %struct.iso_directory_record*
  %38 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %39, i32 711)
  %41 = load i8*, i8** %2, align 8
  %42 = bitcast i8* %41 to %struct.iso_directory_record*
  %43 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %42, i32 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %44, i32 723)
  %46 = load i8*, i8** %2, align 8
  %47 = bitcast i8* %46 to %struct.iso_directory_record*
  %48 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %47, i32 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %49, i32 711)
  %51 = load i8*, i8** %2, align 8
  %52 = bitcast i8* %51 to %struct.iso_directory_record*
  %53 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = load i8*, i8** %2, align 8
  %57 = bitcast i8* %56 to %struct.iso_directory_record*
  %58 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = call i32 @debug_get_encoded_number(i32* %60, i32 711)
  %62 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %55, i32 %61)
  %63 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @debug_dump_integer(i8*, i8*, i32) #1

declare dso_local i32 @debug_dump_to_xml_padded_hex_output(i8*, i32*, i32) #1

declare dso_local i32 @debug_get_encoded_number(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
