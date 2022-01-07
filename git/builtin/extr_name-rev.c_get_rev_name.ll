; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_name-rev.c_get_rev_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_name-rev.c_get_rev_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i64 }
%struct.strbuf = type { i8* }
%struct.rev_name = type { i8*, i32 }
%struct.commit = type { i32 }

@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"^0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%.*s~%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.object*, %struct.strbuf*)* @get_rev_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_rev_name(%struct.object* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.object*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.rev_name*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca i32, align 4
  store %struct.object* %0, %struct.object** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %9 = load %struct.object*, %struct.object** %4, align 8
  %10 = getelementptr inbounds %struct.object, %struct.object* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OBJ_COMMIT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.object*, %struct.object** %4, align 8
  %16 = call i8* @get_exact_ref_match(%struct.object* %15)
  store i8* %16, i8** %3, align 8
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.object*, %struct.object** %4, align 8
  %19 = bitcast %struct.object* %18 to %struct.commit*
  store %struct.commit* %19, %struct.commit** %7, align 8
  %20 = load %struct.commit*, %struct.commit** %7, align 8
  %21 = call %struct.rev_name* @get_commit_rev_name(%struct.commit* %20)
  store %struct.rev_name* %21, %struct.rev_name** %6, align 8
  %22 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %23 = icmp ne %struct.rev_name* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %70

25:                                               ; preds = %17
  %26 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %27 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %32 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  br label %70

34:                                               ; preds = %25
  %35 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %36 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlen(i8* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %43 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = getelementptr inbounds i8, i8* %47, i64 -2
  %49 = ptrtoint i8* %48 to i64
  %50 = call i32 @strcmp(i64 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 2
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %41, %34
  %56 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %57 = call i32 @strbuf_reset(%struct.strbuf* %56)
  %58 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %61 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %64 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @strbuf_addf(%struct.strbuf* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* %62, i32 %65)
  %67 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %55, %30, %24, %14
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

declare dso_local i8* @get_exact_ref_match(%struct.object*) #1

declare dso_local %struct.rev_name* @get_commit_rev_name(%struct.commit*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
