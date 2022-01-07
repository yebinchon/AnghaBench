; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_exit_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_exit_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trussinfo = type { %struct.threadinfo* }
%struct.threadinfo = type { %struct.TYPE_3__, i32, %struct.procinfo*, i32, i32 }
%struct.TYPE_3__ = type { i8**, i32*, %struct.syscall* }
%struct.syscall = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.procinfo = type { i32, i32*, i32 }
%struct.ptrace_lwpinfo = type { i32 }
%struct.ptrace_sc_ret = type { i64, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@PT_GET_SC_RET = common dso_local global i32 0, align 4
@OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@PL_FLAG_EXEC = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@PT_DETACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can not detach the process\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trussinfo*, %struct.ptrace_lwpinfo*)* @exit_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_syscall(%struct.trussinfo* %0, %struct.ptrace_lwpinfo* %1) #0 {
  %3 = alloca %struct.trussinfo*, align 8
  %4 = alloca %struct.ptrace_lwpinfo*, align 8
  %5 = alloca %struct.threadinfo*, align 8
  %6 = alloca %struct.procinfo*, align 8
  %7 = alloca %struct.syscall*, align 8
  %8 = alloca %struct.ptrace_sc_ret, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.trussinfo* %0, %struct.trussinfo** %3, align 8
  store %struct.ptrace_lwpinfo* %1, %struct.ptrace_lwpinfo** %4, align 8
  %11 = load %struct.trussinfo*, %struct.trussinfo** %3, align 8
  %12 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %11, i32 0, i32 0
  %13 = load %struct.threadinfo*, %struct.threadinfo** %12, align 8
  store %struct.threadinfo* %13, %struct.threadinfo** %5, align 8
  %14 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %15 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %151

19:                                               ; preds = %2
  %20 = load i32, i32* @CLOCK_REALTIME, align 4
  %21 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %22 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %21, i32 0, i32 3
  %23 = call i32 @clock_gettime(i32 %20, i32* %22)
  %24 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %25 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %24, i32 0, i32 2
  %26 = load %struct.procinfo*, %struct.procinfo** %25, align 8
  store %struct.procinfo* %26, %struct.procinfo** %6, align 8
  %27 = load i32, i32* @PT_GET_SC_RET, align 4
  %28 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %29 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = ptrtoint %struct.ptrace_sc_ret* %8 to i32
  %32 = call i64 @ptrace(i32 %27, i32 %30, i32 %31, i32 16)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %36 = call i32 @free_syscall(%struct.threadinfo* %35)
  br label %151

37:                                               ; preds = %19
  %38 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %39 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load %struct.syscall*, %struct.syscall** %40, align 8
  store %struct.syscall* %41, %struct.syscall** %7, align 8
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %101, %37
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.syscall*, %struct.syscall** %7, align 8
  %45 = getelementptr inbounds %struct.syscall, %struct.syscall* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %104

48:                                               ; preds = %42
  %49 = load %struct.syscall*, %struct.syscall** %7, align 8
  %50 = getelementptr inbounds %struct.syscall, %struct.syscall* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @OUT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.ptrace_sc_ret, %struct.ptrace_sc_ret* %8, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %65 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.syscall*, %struct.syscall** %7, align 8
  %69 = getelementptr inbounds %struct.syscall, %struct.syscall* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %67, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %92

78:                                               ; preds = %59
  %79 = load %struct.syscall*, %struct.syscall** %7, align 8
  %80 = getelementptr inbounds %struct.syscall, %struct.syscall* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %85 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds %struct.ptrace_sc_ret, %struct.ptrace_sc_ret* %8, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.trussinfo*, %struct.trussinfo** %3, align 8
  %91 = call i8* @print_arg(%struct.TYPE_4__* %83, i32* %87, i32 %89, %struct.trussinfo* %90)
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %78, %63
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %95 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i8*, i8** %97, i64 %98
  store i8* %93, i8** %99, align 8
  br label %100

100:                                              ; preds = %92, %48
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %9, align 8
  br label %42

104:                                              ; preds = %42
  %105 = load %struct.trussinfo*, %struct.trussinfo** %3, align 8
  %106 = getelementptr inbounds %struct.ptrace_sc_ret, %struct.ptrace_sc_ret* %8, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.ptrace_sc_ret, %struct.ptrace_sc_ret* %8, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @print_syscall_ret(%struct.trussinfo* %105, i64 %107, i32 %109)
  %111 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %112 = call i32 @free_syscall(%struct.threadinfo* %111)
  %113 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %114 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PL_FLAG_EXEC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %151

119:                                              ; preds = %104
  %120 = load %struct.procinfo*, %struct.procinfo** %6, align 8
  %121 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %120, i32 0, i32 2
  %122 = call i32 @LIST_FIRST(i32* %121)
  %123 = load i32, i32* @entries, align 4
  %124 = call i32* @LIST_NEXT(i32 %122, i32 %123)
  %125 = icmp eq i32* %124, null
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load %struct.procinfo*, %struct.procinfo** %6, align 8
  %129 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32* @find_abi(i32 %130)
  %132 = load %struct.procinfo*, %struct.procinfo** %6, align 8
  %133 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %132, i32 0, i32 1
  store i32* %131, i32** %133, align 8
  %134 = load %struct.procinfo*, %struct.procinfo** %6, align 8
  %135 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %150

138:                                              ; preds = %119
  %139 = load i32, i32* @PT_DETACH, align 4
  %140 = load %struct.procinfo*, %struct.procinfo** %6, align 8
  %141 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @ptrace(i32 %139, i32 %142, i32 1, i32 0)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %138
  %148 = load %struct.procinfo*, %struct.procinfo** %6, align 8
  %149 = call i32 @free_proc(%struct.procinfo* %148)
  br label %150

150:                                              ; preds = %147, %119
  br label %151

151:                                              ; preds = %18, %34, %150, %104
  ret void
}

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @free_syscall(%struct.threadinfo*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i8* @print_arg(%struct.TYPE_4__*, i32*, i32, %struct.trussinfo*) #1

declare dso_local i32 @print_syscall_ret(%struct.trussinfo*, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @LIST_NEXT(i32, i32) #1

declare dso_local i32 @LIST_FIRST(i32*) #1

declare dso_local i32* @find_abi(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @free_proc(%struct.procinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
