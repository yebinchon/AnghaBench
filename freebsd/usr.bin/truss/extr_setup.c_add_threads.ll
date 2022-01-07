; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_add_threads.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_add_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trussinfo = type { %struct.threadinfo* }
%struct.threadinfo = type { i32 }
%struct.procinfo = type { i32 }
%struct.ptrace_lwpinfo = type { i32 }

@PT_GETNUMLWPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to fetch number of LWPs\00", align 1
@PT_GETLWPLIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to fetch LWP list\00", align 1
@PT_LWPINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"ptrace(PT_LWPINFO)\00", align 1
@PL_FLAG_SCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trussinfo*, %struct.procinfo*)* @add_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_threads(%struct.trussinfo* %0, %struct.procinfo* %1) #0 {
  %3 = alloca %struct.trussinfo*, align 8
  %4 = alloca %struct.procinfo*, align 8
  %5 = alloca %struct.ptrace_lwpinfo, align 4
  %6 = alloca %struct.threadinfo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.trussinfo* %0, %struct.trussinfo** %3, align 8
  store %struct.procinfo* %1, %struct.procinfo** %4, align 8
  %10 = load i32, i32* @PT_GETNUMLWPS, align 4
  %11 = load %struct.procinfo*, %struct.procinfo** %4, align 8
  %12 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ptrace(i32 %10, i32 %13, i32* null, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i32* @calloc(i32 %24, i32 4)
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* @PT_GETLWPLIST, align 4
  %27 = load %struct.procinfo*, %struct.procinfo** %4, align 8
  %28 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ptrace(i32 %26, i32 %29, i32* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %19
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %75, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %78

42:                                               ; preds = %38
  %43 = load %struct.procinfo*, %struct.procinfo** %4, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.threadinfo* @new_thread(%struct.procinfo* %43, i32 %48)
  store %struct.threadinfo* %49, %struct.threadinfo** %6, align 8
  %50 = load i32, i32* @PT_LWPINFO, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = bitcast %struct.ptrace_lwpinfo* %5 to i32*
  %57 = call i32 @ptrace(i32 %50, i32 %55, i32* %56, i32 4)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %42
  %60 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %42
  %62 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %5, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PL_FLAG_SCE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.threadinfo*, %struct.threadinfo** %6, align 8
  %69 = load %struct.trussinfo*, %struct.trussinfo** %3, align 8
  %70 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %69, i32 0, i32 0
  store %struct.threadinfo* %68, %struct.threadinfo** %70, align 8
  %71 = load %struct.trussinfo*, %struct.trussinfo** %3, align 8
  %72 = load %struct.threadinfo*, %struct.threadinfo** %6, align 8
  %73 = call i32 @enter_syscall(%struct.trussinfo* %71, %struct.threadinfo* %72, %struct.ptrace_lwpinfo* %5)
  br label %74

74:                                               ; preds = %67, %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %38

78:                                               ; preds = %38
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @free(i32* %79)
  ret void
}

declare dso_local i32 @ptrace(i32, i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local %struct.threadinfo* @new_thread(%struct.procinfo*, i32) #1

declare dso_local i32 @enter_syscall(%struct.trussinfo*, %struct.threadinfo*, %struct.ptrace_lwpinfo*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
