; ModuleID = '/home/carl/AnghaBench/git/extr_bundle.c_is_tag_in_date_range.c'
source_filename = "/home/carl/AnghaBench/git/extr_bundle.c_is_tag_in_date_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.rev_info = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"\0Atagger \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object*, %struct.rev_info*)* @is_tag_in_date_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_tag_in_date_range(%struct.object* %0, %struct.rev_info* %1) #0 {
  %3 = alloca %struct.object*, align 8
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.object* %0, %struct.object** %3, align 8
  store %struct.rev_info* %1, %struct.rev_info** %4, align 8
  store i8* null, i8** %7, align 8
  store i32 1, i32* %11, align 4
  %12 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %102

22:                                               ; preds = %16, %2
  %23 = load %struct.object*, %struct.object** %3, align 8
  %24 = getelementptr inbounds %struct.object, %struct.object* %23, i32 0, i32 0
  %25 = call i8* @read_object_file(i32* %24, i32* %6, i64* %5)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %102

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i8* @memmem(i8* %30, i64 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %8, align 8
  %35 = icmp ne i8* %33, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %102

37:                                               ; preds = %29
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8*, i8** %8, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = call i8* @memchr(i8* %38, i8 signext 10, i32 %46)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %37
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  br label %65

57:                                               ; preds = %37
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8*, i8** %8, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  br label %65

65:                                               ; preds = %57, %51
  %66 = phi i64 [ %56, %51 ], [ %64, %57 ]
  %67 = trunc i64 %66 to i32
  %68 = call i8* @memchr(i8* %48, i8 signext 62, i32 %67)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  %71 = icmp ne i8* %69, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %102

73:                                               ; preds = %65
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @parse_timestamp(i8* %74, i32* null, i32 10)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %77 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %86, label %80

80:                                               ; preds = %73
  %81 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %82 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80, %73
  %87 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %88 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %93 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp sgt i32 %94, %95
  br label %97

97:                                               ; preds = %91, %86
  %98 = phi i1 [ true, %86 ], [ %96, %91 ]
  br label %99

99:                                               ; preds = %97, %80
  %100 = phi i1 [ false, %80 ], [ %98, %97 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %99, %72, %36, %28, %21
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32, i32* %11, align 4
  ret i32 %105
}

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #1

declare dso_local i8* @memmem(i8*, i64, i8*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @parse_timestamp(i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
