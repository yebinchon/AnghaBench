; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_db_trace.c_db_backtrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_db_trace.c_db_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.frame = type { i32, i32 }
%struct.trapframe = type { i32 }

@db_pager_quit = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DB_STGY_ANY = common dso_local global i32 0, align 4
@C_DB_SYM_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@SPOFF = common dso_local global i64 0, align 8
@tl_trap_begin = common dso_local global i64 0, align 8
@tl_trap_end = common dso_local global i64 0, align 8
@tl_text_begin = common dso_local global i64 0, align 8
@tl_text_end = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s() at \00", align 1
@DB_STGY_PROC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.frame*, i32)* @db_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_backtrace(%struct.thread* %0, %struct.frame* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.frame* %1, %struct.frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1024, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %3
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %12, align 8
  br label %20

20:                                               ; preds = %108, %19
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @db_pager_quit, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %24, %20
  %32 = phi i1 [ false, %24 ], [ false, %20 ], [ %30, %27 ]
  br i1 %32, label %33, label %109

33:                                               ; preds = %31
  %34 = load %struct.frame*, %struct.frame** %5, align 8
  %35 = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 1
  %36 = ptrtoint i32* %35 to i64
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i64 @db_get_value(i64 %36, i32 4, i32 %37)
  store i64 %38, i64* %13, align 8
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i64, i64* %13, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @INKERNEL(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %109

49:                                               ; preds = %43
  %50 = load i64, i64* %13, align 8
  %51 = load i32, i32* @DB_STGY_ANY, align 4
  %52 = call i64 @db_search_symbol(i64 %50, i32 %51, i64* %10)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @C_DB_SYM_NULL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i64 0, i64* %11, align 8
  store i8* null, i8** %8, align 8
  br label %60

57:                                               ; preds = %49
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @db_symbol_values(i64 %58, i8** %8, i64* %11)
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i8*, i8** %8, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %64

64:                                               ; preds = %63, %60
  %65 = load %struct.frame*, %struct.frame** %5, align 8
  %66 = getelementptr inbounds %struct.frame, %struct.frame* %65, i32 0, i32 0
  %67 = ptrtoint i32* %66 to i64
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i64 @db_get_value(i64 %67, i32 4, i32 %68)
  %70 = load i64, i64* @SPOFF, align 8
  %71 = add nsw i64 %69, %70
  %72 = inttoptr i64 %71 to %struct.frame*
  store %struct.frame* %72, %struct.frame** %5, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* @tl_trap_begin, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @tl_trap_end, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %76, %64
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @tl_text_begin, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @tl_text_end, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84, %76
  %89 = load %struct.frame*, %struct.frame** %5, align 8
  %90 = getelementptr inbounds %struct.frame, %struct.frame* %89, i64 1
  %91 = bitcast %struct.frame* %90 to %struct.trapframe*
  store %struct.trapframe* %91, %struct.trapframe** %7, align 8
  %92 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %93 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %92, i32 0, i32 0
  %94 = ptrtoint i32* %93 to i64
  %95 = load i32, i32* @FALSE, align 4
  %96 = call i64 @db_get_value(i64 %94, i32 4, i32 %95)
  store i64 %96, i64* %12, align 8
  %97 = load %struct.thread*, %struct.thread** %4, align 8
  %98 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @db_print_trap(%struct.thread* %97, %struct.trapframe* %98, i32 %99)
  store i32 %100, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %108

101:                                              ; preds = %84, %80
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %102)
  %104 = load i64, i64* %13, align 8
  %105 = load i32, i32* @DB_STGY_PROC, align 4
  %106 = call i32 @db_printsym(i64 %104, i32 %105)
  %107 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %101, %88
  br label %20

109:                                              ; preds = %48, %31
  ret i32 0
}

declare dso_local i64 @db_get_value(i64, i32, i32) #1

declare dso_local i32 @INKERNEL(i32) #1

declare dso_local i64 @db_search_symbol(i64, i32, i64*) #1

declare dso_local i32 @db_symbol_values(i64, i8**, i64*) #1

declare dso_local i32 @db_print_trap(%struct.thread*, %struct.trapframe*, i32) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_printsym(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
