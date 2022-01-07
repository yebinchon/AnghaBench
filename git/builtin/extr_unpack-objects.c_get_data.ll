; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_get_data.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i64, i8*, i8* }

@len = common dso_local global i8* null, align 8
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"inflate returned %d\00", align 1
@recover = common dso_local global i32 0, align 4
@has_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_data(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i8* @xmallocz(i64 %6)
  store i8* %7, i8** %4, align 8
  %8 = call i32 @memset(%struct.TYPE_6__* %3, i32 0, i32 40)
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i8* %9, i8** %10, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = call i8* @fill(i32 1)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** @len, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = call i32 @git_inflate_init(%struct.TYPE_6__* %3)
  br label %18

18:                                               ; preds = %51, %1
  %19 = call i32 @git_inflate(%struct.TYPE_6__* %3, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i8*, i8** @len, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = ptrtoint i8* %20 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @use(i8* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %2, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @Z_STREAM_END, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %56

37:                                               ; preds = %32, %18
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @Z_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @FREE_AND_NULL(i8* %44)
  %46 = load i32, i32* @recover, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %41
  store i32 1, i32* @has_errors, align 4
  br label %56

51:                                               ; preds = %37
  %52 = call i8* @fill(i32 1)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** @len, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  br label %18

56:                                               ; preds = %50, %36
  %57 = call i32 @git_inflate_end(%struct.TYPE_6__* %3)
  %58 = load i8*, i8** %4, align 8
  ret i8* %58
}

declare dso_local i8* @xmallocz(i64) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @fill(i32) #1

declare dso_local i32 @git_inflate_init(%struct.TYPE_6__*) #1

declare dso_local i32 @git_inflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @use(i8*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @FREE_AND_NULL(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @git_inflate_end(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
