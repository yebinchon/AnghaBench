; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_machdep.c_cpu_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_machdep.c_cpu_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"CPU model: %s\0A\00", align 1
@cpu_model = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"real memory  = %ju (%juK bytes)\0A\00", align 1
@realmem = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Physical memory chunk(s):\0A\00", align 1
@phys_avail = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"0x%08jx - 0x%08jx, %ju bytes (%ju pages)\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@kmi = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"avail memory = %ju (%juMB)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cpu_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @boothowto, align 4
  %6 = load i32, i32* @RB_VERBOSE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i64, i64* @bootverbose, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* @bootverbose, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i8*, i8** @cpu_model, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i64, i64* @realmem, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @ptoa(i32 %16)
  %18 = load i64, i64* @realmem, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @ptoa(i32 %19)
  %21 = sdiv i32 %20, 1024
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %21)
  %23 = load i64, i64* @bootverbose, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %73

25:                                               ; preds = %12
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %69, %25
  %28 = load i64*, i64** @phys_avail, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %27
  %36 = load i64*, i64** @phys_avail, align 8
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** @phys_avail, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %41, %46
  store i64 %47, i64* %4, align 8
  %48 = load i64*, i64** @phys_avail, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i64*, i64** @phys_avail, align 8
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = sub nsw i32 %60, 1
  %62 = load i64, i64* %4, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* %4, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = sdiv i32 %65, %66
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %61, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %35
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %3, align 4
  br label %27

72:                                               ; preds = %27
  br label %73

73:                                               ; preds = %72, %12
  %74 = call i32 @vm_ksubmap_init(i32* @kmi)
  %75 = call i64 (...) @vm_free_count()
  %76 = trunc i64 %75 to i32
  %77 = call i32 @ptoa(i32 %76)
  %78 = call i64 (...) @vm_free_count()
  %79 = trunc i64 %78 to i32
  %80 = call i32 @ptoa(i32 %79)
  %81 = sdiv i32 %80, 1048576
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %81)
  %83 = call i32 (...) @cpu_init_interrupts()
  %84 = call i32 (...) @bufinit()
  %85 = call i32 (...) @vm_pager_bufferinit()
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @vm_ksubmap_init(i32*) #1

declare dso_local i64 @vm_free_count(...) #1

declare dso_local i32 @cpu_init_interrupts(...) #1

declare dso_local i32 @bufinit(...) #1

declare dso_local i32 @vm_pager_bufferinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
