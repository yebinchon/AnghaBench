; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_get_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_get_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.rev_cmdline_entry = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.tag = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.tag* }

@the_repository = common dso_local global i32 0, align 4
@tag_refs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Tag %s points nowhere?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.rev_cmdline_entry*, i8*)* @get_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @get_commit(%struct.rev_cmdline_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.rev_cmdline_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tag*, align 8
  store %struct.rev_cmdline_entry* %0, %struct.rev_cmdline_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %4, align 8
  %8 = getelementptr inbounds %struct.rev_cmdline_entry, %struct.rev_cmdline_entry* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %58 [
    i32 129, label %12
    i32 128, label %17
  ]

12:                                               ; preds = %2
  %13 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %4, align 8
  %14 = getelementptr inbounds %struct.rev_cmdline_entry, %struct.rev_cmdline_entry* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = bitcast %struct.TYPE_5__* %15 to %struct.commit*
  store %struct.commit* %16, %struct.commit** %3, align 8
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %4, align 8
  %19 = getelementptr inbounds %struct.rev_cmdline_entry, %struct.rev_cmdline_entry* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = bitcast %struct.TYPE_5__* %20 to %struct.tag*
  store %struct.tag* %21, %struct.tag** %6, align 8
  br label %22

22:                                               ; preds = %33, %17
  %23 = load %struct.tag*, %struct.tag** %6, align 8
  %24 = icmp ne %struct.tag* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.tag*, %struct.tag** %6, align 8
  %27 = getelementptr inbounds %struct.tag, %struct.tag* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 128
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %34 = load i32, i32* @the_repository, align 4
  %35 = load %struct.tag*, %struct.tag** %6, align 8
  %36 = getelementptr inbounds %struct.tag, %struct.tag* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i32 @parse_object(i32 %34, i32* %37)
  %39 = load %struct.tag*, %struct.tag** %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call %struct.TYPE_6__* @string_list_append(i32* @tag_refs, i8* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store %struct.tag* %39, %struct.tag** %42, align 8
  %43 = load %struct.tag*, %struct.tag** %6, align 8
  %44 = getelementptr inbounds %struct.tag, %struct.tag* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.tag*
  store %struct.tag* %46, %struct.tag** %6, align 8
  br label %22

47:                                               ; preds = %31
  %48 = load %struct.tag*, %struct.tag** %6, align 8
  %49 = icmp ne %struct.tag* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %4, align 8
  %52 = getelementptr inbounds %struct.rev_cmdline_entry, %struct.rev_cmdline_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.tag*, %struct.tag** %6, align 8
  %57 = bitcast %struct.tag* %56 to %struct.commit*
  store %struct.commit* %57, %struct.commit** %3, align 8
  br label %59

58:                                               ; preds = %2
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %59

59:                                               ; preds = %58, %55, %12
  %60 = load %struct.commit*, %struct.commit** %3, align 8
  ret %struct.commit* %60
}

declare dso_local i32 @parse_object(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @string_list_append(i32*, i8*) #1

declare dso_local i32 @die(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
