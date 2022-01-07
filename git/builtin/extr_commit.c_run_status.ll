; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_run_status.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_run_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i64 }
%struct.object_id = type { i32 }

@amend = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"HEAD^1\00", align 1
@verbose = common dso_local global i32 0, align 4
@status_format = common dso_local global i32 0, align 4
@ignore_submodule_arg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32, %struct.wt_status*)* @run_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_status(i32* %0, i8* %1, i8* %2, i32 %3, %struct.wt_status* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wt_status*, align 8
  %11 = alloca %struct.object_id, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.wt_status* %4, %struct.wt_status** %10, align 8
  %12 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %13 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %12, i32 0, i32 12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %19 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  br label %20

20:                                               ; preds = %16, %5
  %21 = load i64, i64* @amend, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %25 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %27 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %26, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* @verbose, align 4
  %30 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %31 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %30, i32 0, i32 11
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %34 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %37 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %36, i32 0, i32 10
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %40 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %42 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @get_oid(i8* %43, %struct.object_id* %11)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %49 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %51 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %28
  %55 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %56 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %55, i32 0, i32 9
  %57 = call i32 @oidcpy(i32* %56, %struct.object_id* %11)
  br label %58

58:                                               ; preds = %54, %28
  %59 = load i32, i32* @status_format, align 4
  %60 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %61 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @ignore_submodule_arg, align 4
  %63 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %64 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %66 = call i32 @wt_status_collect(%struct.wt_status* %65)
  %67 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %68 = call i32 @wt_status_print(%struct.wt_status* %67)
  %69 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %70 = call i32 @wt_status_collect_free_buffers(%struct.wt_status* %69)
  %71 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %72 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  ret i32 %73
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @wt_status_collect(%struct.wt_status*) #1

declare dso_local i32 @wt_status_print(%struct.wt_status*) #1

declare dso_local i32 @wt_status_collect_free_buffers(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
