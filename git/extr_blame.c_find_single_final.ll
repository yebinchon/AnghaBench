; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_find_single_final.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_find_single_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.rev_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, %struct.object* }
%struct.object = type { i32, i64 }

@UNINTERESTING = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Non commit %s?\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"More than one commit to dig from %s and %s?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.rev_info*, i8**)* @find_single_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @find_single_final(%struct.rev_info* %0, i8** %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store i8** %1, i8*** %4, align 8
  store %struct.commit* null, %struct.commit** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %82, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %85

16:                                               ; preds = %9
  %17 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.object*, %struct.object** %24, align 8
  store %struct.object* %25, %struct.object** %8, align 8
  %26 = load %struct.object*, %struct.object** %8, align 8
  %27 = getelementptr inbounds %struct.object, %struct.object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @UNINTERESTING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %82

33:                                               ; preds = %16
  %34 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.object*, %struct.object** %8, align 8
  %38 = call %struct.object* @deref_tag(i32 %36, %struct.object* %37, i32* null, i32 0)
  store %struct.object* %38, %struct.object** %8, align 8
  %39 = load %struct.object*, %struct.object** %8, align 8
  %40 = getelementptr inbounds %struct.object, %struct.object* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OBJ_COMMIT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %33
  %45 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %46 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %44, %33
  %56 = load %struct.commit*, %struct.commit** %6, align 8
  %57 = icmp ne %struct.commit* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %60 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %58, %55
  %71 = load %struct.object*, %struct.object** %8, align 8
  %72 = bitcast %struct.object* %71 to %struct.commit*
  store %struct.commit* %72, %struct.commit** %6, align 8
  %73 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %74 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %7, align 8
  br label %82

82:                                               ; preds = %70, %32
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %9

85:                                               ; preds = %9
  %86 = load i8**, i8*** %4, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i8*, i8** %7, align 8
  %90 = call i8* @xstrdup_or_null(i8* %89)
  %91 = load i8**, i8*** %4, align 8
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %88, %85
  %93 = load %struct.commit*, %struct.commit** %6, align 8
  ret %struct.commit* %93
}

declare dso_local %struct.object* @deref_tag(i32, %struct.object*, i32*, i32) #1

declare dso_local i32 @die(i8*, i8*, ...) #1

declare dso_local i8* @xstrdup_or_null(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
