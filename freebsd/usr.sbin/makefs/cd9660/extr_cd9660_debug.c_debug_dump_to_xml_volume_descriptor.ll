; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_debug.c_debug_dump_to_xml_volume_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_debug.c_debug_dump_to_xml_volume_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_primary_descriptor = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"<volumedescriptor sector=\22%i\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"<vdtype>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"supplementary\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"volume partition descriptor\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"terminator\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"</vdtype>\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"system_id\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"volume_id\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"volume_space_size\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"volume_set_size\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"volume_sequence_number\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"logical_block_size\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"path_table_size\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"type_l_path_table\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"opt_type_l_path_table\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"type_m_path_table\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"opt_type_m_path_table\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"volume_set_id\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"publisher_id\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"preparer_id\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"application_id\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"copyright_file_id\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"abstract_file_id\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"bibliographic_file_id\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"creation_date\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"modification_date\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"expiration_date\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"effective_date\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"file_structure_version\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"</volumedescriptor>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_dump_to_xml_volume_descriptor(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  switch i32 %11, label %22 [
    i32 0, label %12
    i32 1, label %14
    i32 2, label %16
    i32 3, label %18
    i32 255, label %20
  ]

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %22

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %22

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %22

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %22

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %22

22:                                               ; preds = %2, %20, %18, %16, %14, %12
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  switch i32 %27, label %195 [
    i32 1, label %28
  ]

28:                                               ; preds = %22
  %29 = load i8*, i8** %3, align 8
  %30 = bitcast i8* %29 to %struct.iso_primary_descriptor*
  %31 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %30, i32 0, i32 26
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %32, i32 711)
  %34 = load i8*, i8** %3, align 8
  %35 = bitcast i8* %34 to %struct.iso_primary_descriptor*
  %36 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %35, i32 0, i32 25
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @ISODCL(i32 2, i32 6)
  %40 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %38, i32 %39)
  %41 = load i8*, i8** %3, align 8
  %42 = bitcast i8* %41 to %struct.iso_primary_descriptor*
  %43 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %42, i32 0, i32 24
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %44, i32 711)
  %46 = load i8*, i8** %3, align 8
  %47 = bitcast i8* %46 to %struct.iso_primary_descriptor*
  %48 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %47, i32 0, i32 23
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = call i32 @ISODCL(i32 9, i32 40)
  %52 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %50, i32 %51)
  %53 = load i8*, i8** %3, align 8
  %54 = bitcast i8* %53 to %struct.iso_primary_descriptor*
  %55 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %54, i32 0, i32 22
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @ISODCL(i32 41, i32 72)
  %59 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* %57, i32 %58)
  %60 = load i8*, i8** %3, align 8
  %61 = bitcast i8* %60 to %struct.iso_primary_descriptor*
  %62 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %61, i32 0, i32 21
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %63, i32 733)
  %65 = load i8*, i8** %3, align 8
  %66 = bitcast i8* %65 to %struct.iso_primary_descriptor*
  %67 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %66, i32 0, i32 20
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %68, i32 733)
  %70 = load i8*, i8** %3, align 8
  %71 = bitcast i8* %70 to %struct.iso_primary_descriptor*
  %72 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %71, i32 0, i32 19
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %73, i32 723)
  %75 = load i8*, i8** %3, align 8
  %76 = bitcast i8* %75 to %struct.iso_primary_descriptor*
  %77 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %76, i32 0, i32 18
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %78, i32 723)
  %80 = load i8*, i8** %3, align 8
  %81 = bitcast i8* %80 to %struct.iso_primary_descriptor*
  %82 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %81, i32 0, i32 17
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %83, i32 733)
  %85 = load i8*, i8** %3, align 8
  %86 = bitcast i8* %85 to %struct.iso_primary_descriptor*
  %87 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %86, i32 0, i32 16
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %88, i32 731)
  %90 = load i8*, i8** %3, align 8
  %91 = bitcast i8* %90 to %struct.iso_primary_descriptor*
  %92 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %91, i32 0, i32 15
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %93, i32 731)
  %95 = load i8*, i8** %3, align 8
  %96 = bitcast i8* %95 to %struct.iso_primary_descriptor*
  %97 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %96, i32 0, i32 14
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %98, i32 732)
  %100 = load i8*, i8** %3, align 8
  %101 = bitcast i8* %100 to %struct.iso_primary_descriptor*
  %102 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %101, i32 0, i32 13
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @debug_dump_integer(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %103, i32 732)
  %105 = load i8*, i8** %3, align 8
  %106 = bitcast i8* %105 to %struct.iso_primary_descriptor*
  %107 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %106, i32 0, i32 12
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = call i32 @debug_dump_directory_record_9_1(i32* %109)
  %111 = load i8*, i8** %3, align 8
  %112 = bitcast i8* %111 to %struct.iso_primary_descriptor*
  %113 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %112, i32 0, i32 11
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  %116 = call i32 @ISODCL(i32 191, i32 318)
  %117 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32* %115, i32 %116)
  %118 = load i8*, i8** %3, align 8
  %119 = bitcast i8* %118 to %struct.iso_primary_descriptor*
  %120 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %119, i32 0, i32 10
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = call i32 @ISODCL(i32 319, i32 446)
  %124 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32* %122, i32 %123)
  %125 = load i8*, i8** %3, align 8
  %126 = bitcast i8* %125 to %struct.iso_primary_descriptor*
  %127 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %126, i32 0, i32 9
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i32*
  %130 = call i32 @ISODCL(i32 447, i32 574)
  %131 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32* %129, i32 %130)
  %132 = load i8*, i8** %3, align 8
  %133 = bitcast i8* %132 to %struct.iso_primary_descriptor*
  %134 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i32*
  %137 = call i32 @ISODCL(i32 575, i32 702)
  %138 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32* %136, i32 %137)
  %139 = load i8*, i8** %3, align 8
  %140 = bitcast i8* %139 to %struct.iso_primary_descriptor*
  %141 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i32*
  %144 = call i32 @ISODCL(i32 703, i32 739)
  %145 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32* %143, i32 %144)
  %146 = load i8*, i8** %3, align 8
  %147 = bitcast i8* %146 to %struct.iso_primary_descriptor*
  %148 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to i32*
  %151 = call i32 @ISODCL(i32 740, i32 776)
  %152 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i32* %150, i32 %151)
  %153 = load i8*, i8** %3, align 8
  %154 = bitcast i8* %153 to %struct.iso_primary_descriptor*
  %155 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i32*
  %158 = call i32 @ISODCL(i32 777, i32 813)
  %159 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32* %157, i32 %158)
  %160 = load i8*, i8** %3, align 8
  %161 = bitcast i8* %160 to %struct.iso_primary_descriptor*
  %162 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i32*
  %165 = call i32 @ISODCL(i32 814, i32 830)
  %166 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32* %164, i32 %165)
  %167 = load i8*, i8** %3, align 8
  %168 = bitcast i8* %167 to %struct.iso_primary_descriptor*
  %169 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i32*
  %172 = call i32 @ISODCL(i32 831, i32 847)
  %173 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32* %171, i32 %172)
  %174 = load i8*, i8** %3, align 8
  %175 = bitcast i8* %174 to %struct.iso_primary_descriptor*
  %176 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i32*
  %179 = call i32 @ISODCL(i32 848, i32 864)
  %180 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32* %178, i32 %179)
  %181 = load i8*, i8** %3, align 8
  %182 = bitcast i8* %181 to %struct.iso_primary_descriptor*
  %183 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to i32*
  %186 = call i32 @ISODCL(i32 865, i32 881)
  %187 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i32* %185, i32 %186)
  %188 = load i8*, i8** %3, align 8
  %189 = bitcast i8* %188 to %struct.iso_primary_descriptor*
  %190 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to i32*
  %193 = call i32 @ISODCL(i32 882, i32 882)
  %194 = call i32 @debug_dump_to_xml_padded_hex_output(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32* %192, i32 %193)
  br label %195

195:                                              ; preds = %22, %28
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @debug_dump_integer(i8*, i32, i32) #1

declare dso_local i32 @debug_dump_to_xml_padded_hex_output(i8*, i32*, i32) #1

declare dso_local i32 @ISODCL(i32, i32) #1

declare dso_local i32 @debug_dump_directory_record_9_1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
