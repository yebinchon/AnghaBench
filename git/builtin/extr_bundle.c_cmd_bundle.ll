; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_bundle.c_cmd_bundle.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_bundle.c_cmd_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bundle_header = type { i32 }

@builtin_bundle_usage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@the_repository = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%s is okay\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"list-heads\00", align 1
@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Need a repository to create a bundle.\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"unbundle\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Need a repository to unbundle.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_bundle(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bundle_header, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @builtin_bundle_usage, align 4
  %16 = call i32 @usage(i32 %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i8**, i8*** %6, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @prefix_filename(i8* %21, i8* %24)
  store i8* %25, i8** %10, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 2
  store i32 %27, i32* %5, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  store i8** %29, i8*** %6, align 8
  %30 = call i32 @memset(%struct.bundle_header* %8, i32 0, i32 4)
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %17
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @read_bundle_header(i8* %35, %struct.bundle_header* %8)
  store i32 %36, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %132

39:                                               ; preds = %34, %17
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @builtin_bundle_usage, align 4
  %50 = call i32 @usage(i32 %49)
  store i32 1, i32* %4, align 4
  br label %132

51:                                               ; preds = %43
  %52 = load i32, i32* @the_repository, align 4
  %53 = call i64 @verify_bundle(i32 %52, %struct.bundle_header* %8, i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %132

56:                                               ; preds = %51
  %57 = load i32, i32* @stderr, align 4
  %58 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @fprintf(i32 %57, i8* %58, i8* %59)
  store i32 0, i32* %4, align 4
  br label %132

61:                                               ; preds = %39
  %62 = load i8*, i8** %9, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i8**, i8*** %6, align 8
  %70 = call i64 @list_bundle_refs(%struct.bundle_header* %8, i32 %68, i8** %69)
  %71 = icmp ne i64 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %132

75:                                               ; preds = %61
  %76 = load i8*, i8** %9, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %103, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @builtin_bundle_usage, align 4
  %84 = call i32 @usage(i32 %83)
  store i32 1, i32* %4, align 4
  br label %132

85:                                               ; preds = %79
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %92 = call i32 @die(i8* %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i32, i32* @the_repository, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i8**, i8*** %6, align 8
  %98 = call i32 @create_bundle(i32 %94, i8* %95, i32 %96, i8** %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %4, align 4
  br label %132

103:                                              ; preds = %75
  %104 = load i8*, i8** %9, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %128, label %107

107:                                              ; preds = %103
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %114 = call i32 @die(i8* %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* @the_repository, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @unbundle(i32 %116, %struct.bundle_header* %8, i32 %117, i32 0)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = load i8**, i8*** %6, align 8
  %123 = call i64 @list_bundle_refs(%struct.bundle_header* %8, i32 %121, i8** %122)
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %120, %115
  %126 = phi i1 [ true, %115 ], [ %124, %120 ]
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %4, align 4
  br label %132

128:                                              ; preds = %103
  %129 = load i32, i32* @builtin_bundle_usage, align 4
  %130 = call i32 @usage(i32 %129)
  br label %131

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %38, %48, %55, %56, %65, %82, %93, %125, %131
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @usage(i32) #1

declare dso_local i8* @prefix_filename(i8*, i8*) #1

declare dso_local i32 @memset(%struct.bundle_header*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @read_bundle_header(i8*, %struct.bundle_header*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @verify_bundle(i32, %struct.bundle_header*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @list_bundle_refs(%struct.bundle_header*, i32, i8**) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @create_bundle(i32, i8*, i32, i8**) #1

declare dso_local i32 @unbundle(i32, %struct.bundle_header*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
