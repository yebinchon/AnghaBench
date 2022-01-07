; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_reader_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_reader_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.file_reader = type { i8, i32, i64, i32, i64, i32*, i8*, i64, i32*, i32*, i32 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@sort_opts_vals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@compress_program = common dso_local global i32* null, align 8
@use_mmap = common dso_local global i64 0, align 8
@MAP_NOCORE = common dso_local global i32 0, align 4
@MAP_NOSYNC = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@READ_CHUNK = common dso_local global i32 0, align 4
@MAP_PREFAULT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file_reader* @file_reader_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file_reader*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %12

12:                                               ; preds = %11, %1
  %13 = call i8* @sort_malloc(i32 80)
  %14 = bitcast i8* %13 to %struct.file_reader*
  store %struct.file_reader* %14, %struct.file_reader** %3, align 8
  %15 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %16 = call i32 @memset(%struct.file_reader* %15, i32 0, i32 80)
  %17 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %18 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %17, i32 0, i32 0
  store i8 10, i8* %18, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %23 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %22, i32 0, i32 0
  store i8 0, i8* %23, align 8
  br label %24

24:                                               ; preds = %21, %12
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @sort_strdup(i8* %25)
  %27 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %28 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %88

32:                                               ; preds = %24
  %33 = load i32*, i32** @compress_program, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %88

35:                                               ; preds = %32
  %36 = load i64, i64* @use_mmap, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38
  store i64 0, i64* %6, align 8
  %40 = load i32, i32* @MAP_NOCORE, align 4
  %41 = load i32, i32* @MAP_NOSYNC, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %2, align 8
  %44 = load i32, i32* @O_RDONLY, align 4
  %45 = call i32 @open(i8* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = call i32 @err(i32 2, i32* null)
  br label %50

50:                                               ; preds = %48, %39
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @fstat(i32 %51, %struct.stat* %4)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @close(i32 %55)
  br label %87

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @PROT_READ, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i8* @mmap(i32* null, i64 %60, i32 %61, i32 %62, i32 %63, i32 0)
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** @MAP_FAILED, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @close(i32 %69)
  br label %87

71:                                               ; preds = %57
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %74 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %78 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %77, i32 0, i32 8
  store i32* %76, i32** %78, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %81 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %83 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %82, i32 0, i32 8
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %86 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %85, i32 0, i32 9
  store i32* %84, i32** %86, align 8
  br label %87

87:                                               ; preds = %71, %68, %54
  br label %88

88:                                               ; preds = %87, %35, %32, %24
  %89 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %90 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %89, i32 0, i32 8
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %149

93:                                               ; preds = %88
  %94 = load i8*, i8** %2, align 8
  %95 = call i32* @openfile(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %97 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %96, i32 0, i32 5
  store i32* %95, i32** %97, align 8
  %98 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %99 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = call i32 @err(i32 2, i32* null)
  br label %104

104:                                              ; preds = %102, %93
  %105 = load i8*, i8** %2, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %148

108:                                              ; preds = %104
  %109 = load i32, i32* @READ_CHUNK, align 4
  %110 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %111 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %113 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @sort_malloc(i32 %114)
  %116 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %117 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  %118 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %119 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %118, i32 0, i32 4
  store i64 0, i64* %119, align 8
  %120 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %121 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %120, i32 0, i32 7
  store i64 0, i64* %121, align 8
  %122 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %123 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %126 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %129 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = call i64 @fread(i8* %124, i32 1, i32 %127, i32* %130)
  %132 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %133 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %132, i32 0, i32 4
  store i64 %131, i64* %133, align 8
  %134 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %135 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %108
  %139 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %140 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = call i64 @ferror(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = call i32 @err(i32 2, i32* null)
  br label %146

146:                                              ; preds = %144, %138
  br label %147

147:                                              ; preds = %146, %108
  br label %148

148:                                              ; preds = %147, %104
  br label %149

149:                                              ; preds = %148, %88
  %150 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  ret %struct.file_reader* %150
}

declare dso_local i8* @sort_malloc(i32) #1

declare dso_local i32 @memset(%struct.file_reader*, i32, i32) #1

declare dso_local i32 @sort_strdup(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32* @openfile(i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
