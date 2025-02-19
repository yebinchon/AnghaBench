; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_describe.c_process_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_describe.c_process_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.process_commit_data = type { %struct.TYPE_4__*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, i8*, i8*)* @process_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_object(%struct.object* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.process_commit_data*, align 8
  store %struct.object* %0, %struct.object** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.process_commit_data*
  store %struct.process_commit_data* %9, %struct.process_commit_data** %7, align 8
  %10 = load %struct.process_commit_data*, %struct.process_commit_data** %7, align 8
  %11 = getelementptr inbounds %struct.process_commit_data, %struct.process_commit_data* %10, i32 0, i32 3
  %12 = load %struct.object*, %struct.object** %4, align 8
  %13 = getelementptr inbounds %struct.object, %struct.object* %12, i32 0, i32 0
  %14 = call i64 @oideq(i32* %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  %17 = load %struct.process_commit_data*, %struct.process_commit_data** %7, align 8
  %18 = getelementptr inbounds %struct.process_commit_data, %struct.process_commit_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %16
  %24 = call i32 (...) @reset_revision_walk()
  %25 = load %struct.process_commit_data*, %struct.process_commit_data** %7, align 8
  %26 = getelementptr inbounds %struct.process_commit_data, %struct.process_commit_data* %25, i32 0, i32 2
  %27 = load %struct.process_commit_data*, %struct.process_commit_data** %7, align 8
  %28 = getelementptr inbounds %struct.process_commit_data, %struct.process_commit_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = call i32 @describe_commit(i32* %26, %struct.TYPE_5__* %29)
  %31 = load %struct.process_commit_data*, %struct.process_commit_data** %7, align 8
  %32 = getelementptr inbounds %struct.process_commit_data, %struct.process_commit_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strbuf_addf(%struct.TYPE_5__* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load %struct.process_commit_data*, %struct.process_commit_data** %7, align 8
  %37 = getelementptr inbounds %struct.process_commit_data, %struct.process_commit_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @free_commit_list(i32* %40)
  %42 = load %struct.process_commit_data*, %struct.process_commit_data** %7, align 8
  %43 = getelementptr inbounds %struct.process_commit_data, %struct.process_commit_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %23, %16, %3
  ret void
}

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @reset_revision_walk(...) #1

declare dso_local i32 @describe_commit(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @strbuf_addf(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @free_commit_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
