; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_machdep.c_cpu_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_machdep.c_cpu_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpuid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"real memory  = %ju (%ju MB)\0A\00", align 1
@physmem = common dso_local global i64 0, align 8
@realmem = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"available KVA = %zu (%zu MB)\0A\00", align 1
@virtual_end = common dso_local global i32 0, align 4
@virtual_avail = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Physical memory chunk(s):\0A\00", align 1
@phys_avail = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"0x%09jx - 0x%09jx, %ju bytes (%ju pages)\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@kmi = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"avail memory = %ju (%ju MB)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cpu_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @decr_init()
  %6 = load i32, i32* @cpuid, align 4
  %7 = call i32 @PCPU_GET(i32 %6)
  %8 = call i32 @cpu_setup(i32 %7)
  %9 = load i64, i64* @physmem, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @ptoa(i32 %10)
  %12 = load i64, i64* @physmem, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @ptoa(i32 %13)
  %15 = sdiv i32 %14, 1048576
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15)
  %17 = load i64, i64* @physmem, align 8
  store i64 %17, i64* @realmem, align 8
  %18 = load i64, i64* @bootverbose, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load i32, i32* @virtual_end, align 4
  %22 = load i32, i32* @virtual_avail, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* @virtual_end, align 4
  %25 = load i32, i32* @virtual_avail, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sdiv i32 %26, 1048576
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %20, %1
  %30 = load i64, i64* @bootverbose, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %80

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %76, %32
  %35 = load i64*, i64** @phys_avail, align 8
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %34
  %43 = load i64*, i64** @phys_avail, align 8
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** @phys_avail, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %48, %53
  store i64 %54, i64* %4, align 8
  %55 = load i64*, i64** @phys_avail, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64*, i64** @phys_avail, align 8
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = sub nsw i32 %67, 1
  %69 = load i64, i64* %4, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %4, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = sdiv i32 %72, %73
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %68, i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %42
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 2
  store i32 %78, i32* %3, align 4
  br label %34

79:                                               ; preds = %34
  br label %80

80:                                               ; preds = %79, %29
  %81 = call i32 @vm_ksubmap_init(i32* @kmi)
  %82 = call i64 (...) @vm_free_count()
  %83 = trunc i64 %82 to i32
  %84 = call i32 @ptoa(i32 %83)
  %85 = call i64 (...) @vm_free_count()
  %86 = trunc i64 %85 to i32
  %87 = call i32 @ptoa(i32 %86)
  %88 = sdiv i32 %87, 1048576
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %88)
  %90 = call i32 (...) @bufinit()
  %91 = call i32 (...) @vm_pager_bufferinit()
  ret void
}

declare dso_local i32 @decr_init(...) #1

declare dso_local i32 @cpu_setup(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @vm_ksubmap_init(i32*) #1

declare dso_local i64 @vm_free_count(...) #1

declare dso_local i32 @bufinit(...) #1

declare dso_local i32 @vm_pager_bufferinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
