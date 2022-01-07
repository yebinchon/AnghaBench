; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_check_good_are_ancestors_of_bad.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_check_good_are_ancestors_of_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.repository = type { i32 }
%struct.stat = type { i32 }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"BISECT_ANCESTORS_OK\00", align 1
@current_bad_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"a %s revision is needed\00", align 1
@term_bad = common dso_local global i32 0, align 4
@good_revs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"could not create file '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, i8*, i32)* @check_good_are_ancestors_of_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_good_are_ancestors_of_bad(%struct.repository* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit**, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i8* @git_pathdup(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* @current_bad_oid, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @term_bad, align 4
  %18 = call i32 @die(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @stat(i8* %20, %struct.stat* %8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISREG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %68

29:                                               ; preds = %23, %19
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @good_revs, i32 0, i32 0), align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %68

33:                                               ; preds = %29
  %34 = load %struct.repository*, %struct.repository** %4, align 8
  %35 = call %struct.commit** @get_bad_and_good_commits(%struct.repository* %34, i32* %10)
  store %struct.commit** %35, %struct.commit*** %11, align 8
  %36 = load %struct.repository*, %struct.repository** %4, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.commit**, %struct.commit*** %11, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @check_ancestors(%struct.repository* %36, i32 %37, %struct.commit** %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.commit**, %struct.commit*** %11, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @check_merge_bases(i32 %43, %struct.commit** %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %33
  %48 = load %struct.commit**, %struct.commit*** %11, align 8
  %49 = bitcast %struct.commit** %48 to i8*
  %50 = call i32 @free(i8* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @O_CREAT, align 4
  %53 = load i32, i32* @O_TRUNC, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @O_WRONLY, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @open(i8* %51, i32 %56, i32 384)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %47
  %61 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @warning_errno(i32 %61, i8* %62)
  br label %67

64:                                               ; preds = %47
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @close(i32 %65)
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %32, %28
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @free(i8* %69)
  ret void
}

declare dso_local i8* @git_pathdup(i8*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.commit** @get_bad_and_good_commits(%struct.repository*, i32*) #1

declare dso_local i64 @check_ancestors(%struct.repository*, i32, %struct.commit**, i8*) #1

declare dso_local i32 @check_merge_bases(i32, %struct.commit**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warning_errno(i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
