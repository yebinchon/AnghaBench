; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_cpu_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_cpu_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@sparc64_nmemreg = common dso_local global i32 0, align 4
@sparc64_memreg = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"real memory  = %lu (%lu MB)\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@realmem = common dso_local global i64 0, align 8
@kmi = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@sparc64_shutdown_final = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"avail memory = %lu (%lu MB)\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"machine: %s\0A\00", align 1
@sparc64_model = common dso_local global i8* null, align 8
@ver = common dso_local global i32 0, align 4
@clock = common dso_local global i32 0, align 4
@curcpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cpu_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @sparc64_nmemreg, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc64_memreg, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sdiv i32 %25, 1048576
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = sdiv i64 %29, %30
  store i64 %31, i64* @realmem, align 8
  %32 = call i32 @vm_ksubmap_init(i32* @kmi)
  %33 = call i32 (...) @bufinit()
  %34 = call i32 (...) @vm_pager_bufferinit()
  %35 = load i32, i32* @shutdown_final, align 4
  %36 = load i32, i32* @sparc64_shutdown_final, align 4
  %37 = load i32, i32* @SHUTDOWN_PRI_LAST, align 4
  %38 = call i32 @EVENTHANDLER_REGISTER(i32 %35, i32 %36, i32* null, i32 %37)
  %39 = call i32 (...) @vm_free_count()
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = mul nsw i64 %40, %41
  %43 = call i32 (...) @vm_free_count()
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = sdiv i64 1048576, %45
  %47 = sdiv i64 %44, %46
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %47)
  %49 = load i64, i64* @bootverbose, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %23
  %52 = load i8*, i8** @sparc64_model, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %23
  %55 = load i32, i32* @ver, align 4
  %56 = call i32 @rdpr(i32 %55)
  %57 = load i32, i32* @clock, align 4
  %58 = call i32 @PCPU_GET(i32 %57)
  %59 = load i32, i32* @curcpu, align 4
  %60 = call i32 @cpu_identify(i32 %56, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @vm_ksubmap_init(i32*) #1

declare dso_local i32 @bufinit(...) #1

declare dso_local i32 @vm_pager_bufferinit(...) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @vm_free_count(...) #1

declare dso_local i32 @cpu_identify(i32, i32, i32) #1

declare dso_local i32 @rdpr(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
