; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_machdep.c_cpu_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_machdep.c_cpu_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"real memory  = %ju (%ju MB)\0A\00", align 1
@realmem = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Physical memory chunk(s):\0A\00", align 1
@phys_avail = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"0x%016jx - 0x%016jx, %ju bytes (%ju pages)\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@kmi = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"avail memory = %ju (%ju MB)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cpu_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @sbi_print_version()
  %6 = call i32 (...) @identify_cpu()
  %7 = load i64, i64* @realmem, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @ptoa(i32 %8)
  %10 = load i64, i64* @realmem, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @ptoa(i32 %11)
  %13 = sdiv i32 %12, 1048576
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13)
  %15 = load i64, i64* @bootverbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %61, %17
  %20 = load i64*, i64** @phys_avail, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %19
  %28 = load i64*, i64** @phys_avail, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** @phys_avail, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %33, %38
  store i64 %39, i64* %4, align 8
  %40 = load i64*, i64** @phys_avail, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i64*, i64** @phys_avail, align 8
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = sub nsw i32 %52, 1
  %54 = load i64, i64* %4, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %4, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = sdiv i32 %57, %58
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %53, i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %27
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %3, align 4
  br label %19

64:                                               ; preds = %19
  br label %65

65:                                               ; preds = %64, %1
  %66 = call i32 @vm_ksubmap_init(i32* @kmi)
  %67 = call i64 (...) @vm_free_count()
  %68 = trunc i64 %67 to i32
  %69 = call i32 @ptoa(i32 %68)
  %70 = call i64 (...) @vm_free_count()
  %71 = trunc i64 %70 to i32
  %72 = call i32 @ptoa(i32 %71)
  %73 = sdiv i32 %72, 1048576
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %73)
  %75 = load i64, i64* @bootverbose, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = call i32 (...) @devmap_print_table()
  br label %79

79:                                               ; preds = %77, %65
  %80 = call i32 (...) @bufinit()
  %81 = call i32 (...) @vm_pager_bufferinit()
  ret void
}

declare dso_local i32 @sbi_print_version(...) #1

declare dso_local i32 @identify_cpu(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @vm_ksubmap_init(i32*) #1

declare dso_local i64 @vm_free_count(...) #1

declare dso_local i32 @devmap_print_table(...) #1

declare dso_local i32 @bufinit(...) #1

declare dso_local i32 @vm_pager_bufferinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
