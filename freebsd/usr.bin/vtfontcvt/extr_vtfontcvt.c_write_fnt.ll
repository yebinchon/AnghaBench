; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_write_fnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_write_fnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_header = type { i8*, i8**, i8*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"VFNT0002\00", align 1
@__const.write_fnt.fh = private unnamed_addr constant %struct.file_header { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8** null, i8* null, i32 0, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@glyph_unique = common dso_local global i32 0, align 4
@map_folded_count = common dso_local global i32* null, align 8
@VFNT_MAP_NORMAL = common dso_local global i32 0, align 4
@VFNT_MAP_NORMAL_RH = common dso_local global i32 0, align 4
@VFNT_MAP_BOLD = common dso_local global i32 0, align 4
@VFNT_MAP_BOLD_RH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @write_fnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fnt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.file_header, align 8
  store i8* %0, i8** %3, align 8
  %6 = bitcast %struct.file_header* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.file_header* @__const.write_fnt.fh to i8*), i64 32, i1 false)
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @perror(i8* %12)
  store i32 1, i32* %2, align 4
  br label %90

14:                                               ; preds = %1
  %15 = load i32, i32* @width, align 4
  %16 = getelementptr inbounds %struct.file_header, %struct.file_header* %5, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @height, align 4
  %18 = getelementptr inbounds %struct.file_header, %struct.file_header* %5, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @glyph_unique, align 4
  %20 = call i8* @htobe32(i32 %19)
  %21 = getelementptr inbounds %struct.file_header, %struct.file_header* %5, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load i32*, i32** @map_folded_count, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @htobe32(i32 %24)
  %26 = getelementptr inbounds %struct.file_header, %struct.file_header* %5, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %25, i8** %28, align 8
  %29 = load i32*, i32** @map_folded_count, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @htobe32(i32 %31)
  %33 = getelementptr inbounds %struct.file_header, %struct.file_header* %5, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* %32, i8** %35, align 8
  %36 = load i32*, i32** @map_folded_count, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @htobe32(i32 %38)
  %40 = getelementptr inbounds %struct.file_header, %struct.file_header* %5, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  store i8* %39, i8** %42, align 8
  %43 = load i32*, i32** @map_folded_count, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @htobe32(i32 %45)
  %47 = getelementptr inbounds %struct.file_header, %struct.file_header* %5, i32 0, i32 1
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 3
  store i8* %46, i8** %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @fwrite(%struct.file_header* %5, i32 32, i32 1, i32* %50)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %14
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @perror(i8* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @fclose(i32* %56)
  store i32 1, i32* %2, align 4
  br label %90

58:                                               ; preds = %14
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @write_glyphs(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %58
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @VFNT_MAP_NORMAL, align 4
  %65 = call i64 @write_mappings(i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %62
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @VFNT_MAP_NORMAL_RH, align 4
  %70 = call i64 @write_mappings(i32* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @VFNT_MAP_BOLD, align 4
  %75 = call i64 @write_mappings(i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @VFNT_MAP_BOLD_RH, align 4
  %80 = call i64 @write_mappings(i32* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77, %72, %67, %62, %58
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @perror(i8* %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @fclose(i32* %85)
  store i32 1, i32* %2, align 4
  br label %90

87:                                               ; preds = %77
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @fclose(i32* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %82, %53, %11
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i8* @htobe32(i32) #2

declare dso_local i32 @fwrite(%struct.file_header*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @write_glyphs(i32*) #2

declare dso_local i64 @write_mappings(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
