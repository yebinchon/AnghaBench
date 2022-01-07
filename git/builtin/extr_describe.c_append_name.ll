; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_describe.c_append_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_describe.c_append_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_name = type { i32, i8*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.strbuf = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"annotated tag %s not available\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"annotated tag %s has no embedded name\00", align 1
@all = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"tag '%s' is really '%s' here\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"tags/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_name*, %struct.strbuf*)* @append_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_name(%struct.commit_name* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.commit_name*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.commit_name* %0, %struct.commit_name** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %6 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %11 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @the_repository, align 4
  %16 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %17 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %16, i32 0, i32 4
  %18 = call %struct.TYPE_3__* @lookup_tag(i32 %15, i32* %17)
  %19 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %20 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %19, i32 0, i32 3
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %22 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %27 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i64 @parse_tag(%struct.TYPE_3__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %14
  %32 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %34 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @die(i32 %32, i8* %35)
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37, %9, %2
  %39 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %40 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = icmp ne %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %96

43:                                               ; preds = %38
  %44 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %45 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %96, label %48

48:                                               ; preds = %43
  %49 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %50 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %58 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @die(i32 %56, i8* %59)
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %63 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* @all, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %71 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  br label %78

74:                                               ; preds = %61
  %75 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %76 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  br label %78

78:                                               ; preds = %74, %69
  %79 = phi i8* [ %73, %69 ], [ %77, %74 ]
  %80 = call i64 @strcmp(i8* %66, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %85 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %84, i32 0, i32 3
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %90 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @warning(i32 %83, i8* %88, i8* %91)
  br label %93

93:                                               ; preds = %82, %78
  %94 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %95 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %43, %38
  %97 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %98 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %97, i32 0, i32 3
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = icmp ne %struct.TYPE_3__* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load i64, i64* @all, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %106 = call i32 @strbuf_addstr(%struct.strbuf* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %109 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %110 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %109, i32 0, i32 3
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strbuf_addstr(%struct.strbuf* %108, i8* %113)
  br label %121

115:                                              ; preds = %96
  %116 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %117 = load %struct.commit_name*, %struct.commit_name** %3, align 8
  %118 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strbuf_addstr(%struct.strbuf* %116, i8* %119)
  br label %121

121:                                              ; preds = %115, %107
  ret void
}

declare dso_local %struct.TYPE_3__* @lookup_tag(i32, i32*) #1

declare dso_local i64 @parse_tag(%struct.TYPE_3__*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warning(i32, i8*, i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
