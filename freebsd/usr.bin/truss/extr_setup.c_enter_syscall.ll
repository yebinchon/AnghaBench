; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_enter_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_enter_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trussinfo = type { i32 }
%struct.threadinfo = type { i32, %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32, i64, i32*, i32*, %struct.syscall* }
%struct.syscall = type { i64, i8*, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.ptrace_lwpinfo = type { i32 }

@PT_GET_SC_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"-- UNKNOWN %s SYSCALL %d --\0A\00", align 1
@OUT = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trussinfo*, %struct.threadinfo*, %struct.ptrace_lwpinfo*)* @enter_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_syscall(%struct.trussinfo* %0, %struct.threadinfo* %1, %struct.ptrace_lwpinfo* %2) #0 {
  %4 = alloca %struct.trussinfo*, align 8
  %5 = alloca %struct.threadinfo*, align 8
  %6 = alloca %struct.ptrace_lwpinfo*, align 8
  %7 = alloca %struct.syscall*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.trussinfo* %0, %struct.trussinfo** %4, align 8
  store %struct.threadinfo* %1, %struct.threadinfo** %5, align 8
  store %struct.ptrace_lwpinfo* %2, %struct.ptrace_lwpinfo** %6, align 8
  %10 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %11 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %6, align 8
  %12 = call i32 @alloc_syscall(%struct.threadinfo* %10, %struct.ptrace_lwpinfo* %11)
  %13 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %6, align 8
  %14 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %17 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @nitems(i32* %19)
  %21 = call i64 @MIN(i32 %15, i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %3
  %25 = load i32, i32* @PT_GET_SC_ARGS, align 4
  %26 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %27 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %30 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = ptrtoint i32* %32 to i32
  %34 = call i64 @ptrace(i32 %25, i32 %28, i32 %33, i32 8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %38 = call i32 @free_syscall(%struct.threadinfo* %37)
  br label %134

39:                                               ; preds = %24, %3
  %40 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %41 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %42 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call %struct.syscall* @get_syscall(%struct.threadinfo* %40, i32 %44, i64 %45)
  store %struct.syscall* %46, %struct.syscall** %7, align 8
  %47 = load %struct.syscall*, %struct.syscall** %7, align 8
  %48 = getelementptr inbounds %struct.syscall, %struct.syscall* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %39
  %52 = load %struct.trussinfo*, %struct.trussinfo** %4, align 8
  %53 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %56 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %63 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %65)
  br label %67

67:                                               ; preds = %51, %39
  %68 = load %struct.syscall*, %struct.syscall** %7, align 8
  %69 = getelementptr inbounds %struct.syscall, %struct.syscall* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %72 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  %74 = load %struct.syscall*, %struct.syscall** %7, align 8
  %75 = getelementptr inbounds %struct.syscall, %struct.syscall* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %78 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @nitems(i32* %80)
  %82 = icmp sle i64 %76, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.syscall*, %struct.syscall** %7, align 8
  %86 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %87 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  store %struct.syscall* %85, %struct.syscall** %88, align 8
  store i64 0, i64* %8, align 8
  br label %89

89:                                               ; preds = %126, %67
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %92 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %90, %94
  br i1 %95, label %96, label %129

96:                                               ; preds = %89
  %97 = load %struct.syscall*, %struct.syscall** %7, align 8
  %98 = getelementptr inbounds %struct.syscall, %struct.syscall* %97, i32 0, i32 2
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @OUT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %96
  %108 = load %struct.syscall*, %struct.syscall** %7, align 8
  %109 = getelementptr inbounds %struct.syscall, %struct.syscall* %108, i32 0, i32 2
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %111
  %113 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %114 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.trussinfo*, %struct.trussinfo** %4, align 8
  %118 = call i32 @print_arg(%struct.TYPE_8__* %112, i32* %116, i32* null, %struct.trussinfo* %117)
  %119 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %120 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %107, %96
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %8, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %8, align 8
  br label %89

129:                                              ; preds = %89
  %130 = load i32, i32* @CLOCK_REALTIME, align 4
  %131 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %132 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %131, i32 0, i32 0
  %133 = call i32 @clock_gettime(i32 %130, i32* %132)
  br label %134

134:                                              ; preds = %129, %36
  ret void
}

declare dso_local i32 @alloc_syscall(%struct.threadinfo*, %struct.ptrace_lwpinfo*) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @free_syscall(%struct.threadinfo*) #1

declare dso_local %struct.syscall* @get_syscall(%struct.threadinfo*, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @print_arg(%struct.TYPE_8__*, i32*, i32*, %struct.trussinfo*) #1

declare dso_local i32 @clock_gettime(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
