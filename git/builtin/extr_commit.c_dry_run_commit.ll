; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_dry_run_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_dry_run_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.wt_status = type { i32 }

@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*, %struct.commit*, %struct.wt_status*)* @dry_run_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dry_run_commit(i32 %0, i8** %1, i8* %2, %struct.commit* %3, %struct.wt_status* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.wt_status*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.commit* %3, %struct.commit** %9, align 8
  store %struct.wt_status* %4, %struct.wt_status** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.commit*, %struct.commit** %9, align 8
  %17 = call i8* @prepare_index(i32 %13, i8** %14, i8* %15, %struct.commit* %16, i32 1)
  store i8* %17, i8** %12, align 8
  %18 = load i32, i32* @stdout, align 4
  %19 = load i8*, i8** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %22 = call i32 @run_status(i32 %18, i8* %19, i8* %20, i32 0, %struct.wt_status* %21)
  store i32 %22, i32* %11, align 4
  %23 = call i32 (...) @rollback_index_files()
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  ret i32 %27
}

declare dso_local i8* @prepare_index(i32, i8**, i8*, %struct.commit*, i32) #1

declare dso_local i32 @run_status(i32, i8*, i8*, i32, %struct.wt_status*) #1

declare dso_local i32 @rollback_index_files(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
