; ModuleID = '/home/carl/AnghaBench/git/extr_archive.c_queue_directory.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive.c_queue_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }
%struct.archiver_context = type { %struct.directory* }
%struct.directory = type { i32, i32, %struct.TYPE_2__, i32, i32, i64, %struct.directory* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%.*s%s/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.strbuf*, i8*, i32, i32, %struct.archiver_context*)* @queue_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_directory(i8* %0, %struct.strbuf* %1, i8* %2, i32 %3, i32 %4, %struct.archiver_context* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.archiver_context*, align 8
  %13 = alloca %struct.directory*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store %struct.strbuf* %1, %struct.strbuf** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.archiver_context* %5, %struct.archiver_context** %12, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = call i64 @st_add4(i64 %17, i32 1, i32 %19, i32 1)
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = call i32 @st_add(i32 40, i64 %21)
  %23 = call %struct.directory* @xmalloc(i32 %22)
  store %struct.directory* %23, %struct.directory** %13, align 8
  %24 = load %struct.archiver_context*, %struct.archiver_context** %12, align 8
  %25 = getelementptr inbounds %struct.archiver_context, %struct.archiver_context* %24, i32 0, i32 0
  %26 = load %struct.directory*, %struct.directory** %25, align 8
  %27 = load %struct.directory*, %struct.directory** %13, align 8
  %28 = getelementptr inbounds %struct.directory, %struct.directory* %27, i32 0, i32 6
  store %struct.directory* %26, %struct.directory** %28, align 8
  %29 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.directory*, %struct.directory** %13, align 8
  %33 = getelementptr inbounds %struct.directory, %struct.directory* %32, i32 0, i32 5
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.directory*, %struct.directory** %13, align 8
  %36 = getelementptr inbounds %struct.directory, %struct.directory* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.directory*, %struct.directory** %13, align 8
  %39 = getelementptr inbounds %struct.directory, %struct.directory* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.directory*, %struct.directory** %13, align 8
  %41 = load %struct.archiver_context*, %struct.archiver_context** %12, align 8
  %42 = getelementptr inbounds %struct.archiver_context, %struct.archiver_context* %41, i32 0, i32 0
  store %struct.directory* %40, %struct.directory** %42, align 8
  %43 = load %struct.directory*, %struct.directory** %13, align 8
  %44 = getelementptr inbounds %struct.directory, %struct.directory* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %14, align 8
  %47 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @xsnprintf(i32 %45, i64 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i8* %54)
  %56 = load %struct.directory*, %struct.directory** %13, align 8
  %57 = getelementptr inbounds %struct.directory, %struct.directory* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.directory*, %struct.directory** %13, align 8
  %59 = getelementptr inbounds %struct.directory, %struct.directory* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @hashcpy(i32 %61, i8* %62)
  ret void
}

declare dso_local i64 @st_add4(i64, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.directory* @xmalloc(i32) #1

declare dso_local i32 @st_add(i32, i64) #1

declare dso_local i32 @xsnprintf(i32, i64, i8*, i32, i32, i8*) #1

declare dso_local i32 @hashcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
