; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_check_ancestors.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_check_ancestors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { i32 }
%struct.rev_info = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"^%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ALL_REV_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i32, %struct.commit**, i8*)* @check_ancestors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ancestors(%struct.repository* %0, i32 %1, %struct.commit** %2, i8* %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rev_info, align 8
  %10 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.commit** %2, %struct.commit*** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.repository*, %struct.repository** %5, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @bisect_rev_setup(%struct.repository* %11, %struct.rev_info* %9, i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %14 = call i32 @bisect_common(%struct.rev_info* %9)
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.commit**, %struct.commit*** %7, align 8
  %21 = load i32, i32* @ALL_REV_FLAGS, align 4
  %22 = call i32 @clear_commit_marks_many(i32 %19, %struct.commit** %20, i32 %21)
  %23 = load i32, i32* %10, align 4
  ret i32 %23
}

declare dso_local i32 @bisect_rev_setup(%struct.repository*, %struct.rev_info*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @bisect_common(%struct.rev_info*) #1

declare dso_local i32 @clear_commit_marks_many(i32, %struct.commit**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
