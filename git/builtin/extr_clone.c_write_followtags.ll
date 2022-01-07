; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_write_followtags.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_write_followtags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, i32, %struct.ref* }

@.str = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"^{}\00", align 1
@UPDATE_REFS_DIE_ON_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*, i8*)* @write_followtags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_followtags(%struct.ref* %0, i8* %1) #0 {
  %3 = alloca %struct.ref*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ref*, align 8
  store %struct.ref* %0, %struct.ref** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.ref*, %struct.ref** %3, align 8
  store %struct.ref* %6, %struct.ref** %5, align 8
  br label %7

7:                                                ; preds = %39, %2
  %8 = load %struct.ref*, %struct.ref** %5, align 8
  %9 = icmp ne %struct.ref* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = load %struct.ref*, %struct.ref** %5, align 8
  %12 = getelementptr inbounds %struct.ref, %struct.ref* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @starts_with(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %39

17:                                               ; preds = %10
  %18 = load %struct.ref*, %struct.ref** %5, align 8
  %19 = getelementptr inbounds %struct.ref, %struct.ref* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ends_with(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %39

24:                                               ; preds = %17
  %25 = load %struct.ref*, %struct.ref** %5, align 8
  %26 = getelementptr inbounds %struct.ref, %struct.ref* %25, i32 0, i32 0
  %27 = call i32 @has_object_file(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %39

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.ref*, %struct.ref** %5, align 8
  %33 = getelementptr inbounds %struct.ref, %struct.ref* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ref*, %struct.ref** %5, align 8
  %36 = getelementptr inbounds %struct.ref, %struct.ref* %35, i32 0, i32 0
  %37 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %38 = call i32 @update_ref(i8* %31, i32 %34, i32* %36, i32* null, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %30, %29, %23, %16
  %40 = load %struct.ref*, %struct.ref** %5, align 8
  %41 = getelementptr inbounds %struct.ref, %struct.ref* %40, i32 0, i32 2
  %42 = load %struct.ref*, %struct.ref** %41, align 8
  store %struct.ref* %42, %struct.ref** %5, align 8
  br label %7

43:                                               ; preds = %7
  ret void
}

declare dso_local i32 @starts_with(i32, i8*) #1

declare dso_local i64 @ends_with(i32, i8*) #1

declare dso_local i32 @has_object_file(i32*) #1

declare dso_local i32 @update_ref(i8*, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
