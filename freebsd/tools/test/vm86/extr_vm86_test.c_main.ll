; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/vm86/extr_vm86_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/vm86/extr_vm86_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm86_init_args = type { i32, i8*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64, i32 }
%struct.sigaction = type { i32, i8*, i32, %struct.TYPE_2__, i32 }

@gs = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"mmap sigstack\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sigaltstack\00", align 1
@sig_handler = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SA_ONSTACK = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"sigaction SIGBUS\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"sigaction SIGSEGV\00", align 1
@SIGILL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"sigaction SIGILL\00", align 1
@MAP_FIXED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@vm86_code_start = common dso_local global i64 0, align 8
@vm86_code_end = common dso_local global i64 0, align 8
@VM86_INIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"VM86_INIT\00", align 1
@PSL_VM = common dso_local global i32 0, align 4
@PSL_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vm86_init_args, align 8
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.vm86_init_args, align 8
  %5 = alloca %struct.vm86_init_args, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %7 = call i32 (...) @rgs()
  store i32 %7, i32* @gs, align 4
  %8 = call i32 @memset(%struct.vm86_init_args* %5, i32 0, i32 80)
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = mul nsw i32 %9, 128
  %11 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PROT_READ, align 4
  %15 = load i32, i32* @PROT_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PROT_EXEC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MAP_ANON, align 4
  %20 = call i8* @mmap(i8* null, i32 %13, i32 %18, i32 %19, i32 -1, i32 0)
  %21 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %5, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %5, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** @MAP_FAILED, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %0
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %0
  %29 = call i32 @sigaltstack(%struct.vm86_init_args* %5, i32* null)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = bitcast %struct.sigaction* %3 to %struct.vm86_init_args*
  %35 = call i32 @memset(%struct.vm86_init_args* %34, i32 0, i32 80)
  %36 = load i32, i32* @sig_handler, align 4
  %37 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @SA_SIGINFO, align 4
  %39 = load i32, i32* @SA_ONSTACK, align 4
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @SIGBUS, align 4
  %43 = bitcast %struct.sigaction* %3 to %struct.vm86_init_args*
  %44 = call i32 @sigaction(i32 %42, %struct.vm86_init_args* %43, i32* null)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %33
  %49 = load i32, i32* @SIGSEGV, align 4
  %50 = bitcast %struct.sigaction* %3 to %struct.vm86_init_args*
  %51 = call i32 @sigaction(i32 %49, %struct.vm86_init_args* %50, i32* null)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32, i32* @SIGILL, align 4
  %57 = bitcast %struct.sigaction* %3 to %struct.vm86_init_args*
  %58 = call i32 @sigaction(i32 %56, %struct.vm86_init_args* %57, i32* null)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load i32, i32* @PROT_READ, align 4
  %65 = load i32, i32* @PROT_WRITE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @PROT_EXEC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MAP_ANON, align 4
  %70 = load i32, i32* @MAP_FIXED, align 4
  %71 = or i32 %69, %70
  %72 = call i8* @mmap(i8* inttoptr (i64 65536 to i8*), i32 %63, i32 %68, i32 %71, i32 -1, i32 0)
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** @MAP_FAILED, align 8
  %75 = icmp eq i8* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %62
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* @vm86_code_start, align 8
  %81 = load i64, i64* @vm86_code_end, align 8
  %82 = load i64, i64* @vm86_code_start, align 8
  %83 = sub nsw i64 %81, %82
  %84 = call i32 @memcpy(i8* %79, i64 %80, i64 %83)
  %85 = call i32 @memset(%struct.vm86_init_args* %4, i32 0, i32 80)
  %86 = load i32, i32* @VM86_INIT, align 4
  %87 = call i32 @i386_vm86(i32 %86, %struct.vm86_init_args* %4)
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %78
  %92 = call i32 @memset(%struct.vm86_init_args* %2, i32 0, i32 80)
  %93 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %2, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 9029, i32* %94, align 8
  %95 = load i32, i32* @PSL_VM, align 4
  %96 = load i32, i32* @PSL_USER, align 4
  %97 = or i32 %95, %96
  %98 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %2, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = ptrtoint i8* %100 to i64
  %102 = lshr i64 %101, 4
  %103 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %2, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 5
  store i64 %102, i64* %104, align 8
  %105 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %2, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  store i64 %102, i64* %106, align 8
  %107 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %2, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  store i64 %102, i64* %108, align 8
  %109 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %2, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store i64 %102, i64* %110, align 8
  %111 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %2, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 6
  store i32 65534, i32* %112, align 8
  %113 = call i32 @sigreturn(%struct.vm86_init_args* %2)
  %114 = load i32, i32* %1, align 4
  ret i32 %114
}

declare dso_local i32 @rgs(...) #1

declare dso_local i32 @memset(%struct.vm86_init_args*, i32, i32) #1

declare dso_local i8* @mmap(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sigaltstack(%struct.vm86_init_args*, i32*) #1

declare dso_local i32 @sigaction(i32, %struct.vm86_init_args*, i32*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @i386_vm86(i32, %struct.vm86_init_args*) #1

declare dso_local i32 @sigreturn(%struct.vm86_init_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
