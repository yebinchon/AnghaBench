; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_large_blob_data.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_large_blob_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_istream = type { i32 }
%struct.hashfile = type { i32 }
%struct.object_id = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i8*, i32 }

@pack_compression_level = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unable to read %s\00", align 1
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"deflate error (%d)\00", align 1
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.git_istream*, %struct.hashfile*, %struct.object_id*)* @write_large_blob_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_large_blob_data(%struct.git_istream* %0, %struct.hashfile* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.git_istream*, align 8
  %5 = alloca %struct.hashfile*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca [16384 x i8], align 16
  %9 = alloca [16384 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.git_istream* %0, %struct.git_istream** %4, align 8
  store %struct.hashfile* %1, %struct.hashfile** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  store i64 0, i64* %10, align 8
  %13 = load i32, i32* @pack_compression_level, align 4
  %14 = call i32 @git_deflate_init(%struct.TYPE_5__* %7, i32 %13)
  br label %15

15:                                               ; preds = %101, %3
  %16 = load i32, i32* @Z_OK, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.git_istream*, %struct.git_istream** %4, align 8
  %18 = getelementptr inbounds [16384 x i8], [16384 x i8]* %8, i64 0, i64 0
  %19 = call i32 @read_istream(%struct.git_istream* %17, i8* %18, i32 16384)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.object_id*, %struct.object_id** %6, align 8
  %25 = call i32 @oid_to_hex(%struct.object_id* %24)
  %26 = call i32 @die(i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %22, %15
  %28 = getelementptr inbounds [16384 x i8], [16384 x i8]* %8, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  br label %32

32:                                               ; preds = %60, %27
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @Z_OK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @Z_BUF_ERROR, align 4
  %46 = icmp eq i32 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ true, %39 ], [ %46, %43 ]
  br label %49

49:                                               ; preds = %47, %36
  %50 = phi i1 [ false, %36 ], [ %48, %47 ]
  br i1 %50, label %51, label %81

51:                                               ; preds = %49
  %52 = getelementptr inbounds [16384 x i8], [16384 x i8]* %9, i64 0, i64 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i32 16384, i32* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @Z_FINISH, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i32 [ 0, %57 ], [ %59, %58 ]
  %62 = call i32 @git_deflate(%struct.TYPE_5__* %7, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.hashfile*, %struct.hashfile** %5, align 8
  %64 = getelementptr inbounds [16384 x i8], [16384 x i8]* %9, i64 0, i64 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds [16384 x i8], [16384 x i8]* %9, i64 0, i64 0
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @hashwrite(%struct.hashfile* %63, i8* %64, i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds [16384 x i8], [16384 x i8]* %9, i64 0, i64 0
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %10, align 8
  br label %32

81:                                               ; preds = %49
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @die(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @Z_STREAM_END, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @die(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %92
  br label %102

101:                                              ; preds = %89
  br label %15

102:                                              ; preds = %100
  %103 = call i32 @git_deflate_end(%struct.TYPE_5__* %7)
  %104 = load i64, i64* %10, align 8
  ret i64 %104
}

declare dso_local i32 @git_deflate_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @read_istream(%struct.git_istream*, i8*, i32) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @git_deflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i8*, i32) #1

declare dso_local i32 @git_deflate_end(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
