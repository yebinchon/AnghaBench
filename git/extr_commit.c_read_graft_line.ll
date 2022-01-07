; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_read_graft_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_read_graft_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_graft = type { i32, %struct.object_id*, %struct.object_id }
%struct.object_id = type { i32 }
%struct.strbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"bad graft data: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_graft* @read_graft_line(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.commit_graft*, align 8
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.commit_graft*, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca %struct.object_id*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* null, i8** %6, align 8
  store %struct.commit_graft* null, %struct.commit_graft** %7, align 8
  %10 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %11 = call i32 @strbuf_rtrim(%struct.strbuf* %10)
  %12 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %1
  store %struct.commit_graft* null, %struct.commit_graft** %2, align 8
  br label %107

25:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %92, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %95

29:                                               ; preds = %26
  %30 = load %struct.commit_graft*, %struct.commit_graft** %7, align 8
  %31 = icmp ne %struct.commit_graft* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.commit_graft*, %struct.commit_graft** %7, align 8
  %34 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %33, i32 0, i32 2
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi %struct.object_id* [ %34, %32 ], [ %8, %35 ]
  store %struct.object_id* %37, %struct.object_id** %9, align 8
  %38 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.object_id*, %struct.object_id** %9, align 8
  %42 = call i64 @parse_oid_hex(i8* %40, %struct.object_id* %41, i8** %6)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %97

45:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %77, %45
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %46
  %52 = load %struct.commit_graft*, %struct.commit_graft** %7, align 8
  %53 = icmp ne %struct.commit_graft* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.commit_graft*, %struct.commit_graft** %7, align 8
  %56 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %55, i32 0, i32 1
  %57 = load %struct.object_id*, %struct.object_id** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.object_id, %struct.object_id* %57, i64 %59
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %54
  %63 = phi %struct.object_id* [ %60, %54 ], [ %8, %61 ]
  store %struct.object_id* %63, %struct.object_id** %9, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  %66 = load i8, i8* %64, align 1
  %67 = sext i8 %66 to i32
  %68 = call i32 @isspace(i32 %67) #3
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.object_id*, %struct.object_id** %9, align 8
  %73 = call i64 @parse_oid_hex(i8* %71, %struct.object_id* %72, i8** %6)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %62
  br label %97

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %46

80:                                               ; preds = %46
  %81 = load %struct.commit_graft*, %struct.commit_graft** %7, align 8
  %82 = icmp ne %struct.commit_graft* %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @st_mult(i32 4, i32 %84)
  %86 = call i32 @st_add(i32 24, i32 %85)
  %87 = call %struct.commit_graft* @xmalloc(i32 %86)
  store %struct.commit_graft* %87, %struct.commit_graft** %7, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.commit_graft*, %struct.commit_graft** %7, align 8
  %90 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %83, %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %26

95:                                               ; preds = %26
  %96 = load %struct.commit_graft*, %struct.commit_graft** %7, align 8
  store %struct.commit_graft* %96, %struct.commit_graft** %2, align 8
  br label %107

97:                                               ; preds = %75, %44
  %98 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %100)
  %102 = load %struct.commit_graft*, %struct.commit_graft** %7, align 8
  %103 = icmp ne %struct.commit_graft* %102, null
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  store %struct.commit_graft* null, %struct.commit_graft** %2, align 8
  br label %107

107:                                              ; preds = %97, %95, %24
  %108 = load %struct.commit_graft*, %struct.commit_graft** %2, align 8
  ret %struct.commit_graft* %108
}

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #2

declare dso_local %struct.commit_graft* @xmalloc(i32) #1

declare dso_local i32 @st_add(i32, i32) #1

declare dso_local i32 @st_mult(i32, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
