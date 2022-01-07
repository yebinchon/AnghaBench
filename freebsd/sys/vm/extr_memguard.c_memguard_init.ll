; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_memguard_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_memguard_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memguard_mapsize = common dso_local global i64 0, align 8
@M_BESTFIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@memguard_arena = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"memguard arena\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@memguard_base = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"MEMGUARD DEBUGGING ALLOCATOR INITIALIZED:\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\09MEMGUARD map base: 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\09MEMGUARD map size: %jd KBytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memguard_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i64, i64* @memguard_mapsize, align 8
  %6 = load i32, i32* @M_BESTFIT, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @vmem_alloc(i32* %4, i64 %5, i32 %8, i64* %3)
  %10 = load i32, i32* @memguard_arena, align 4
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @memguard_mapsize, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = call i32 @vmem_init(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %12, i32 %13, i32 0, i32 %14)
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* @memguard_base, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* %3, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* @memguard_mapsize, align 8
  %22 = trunc i64 %21 to i32
  %23 = ashr i32 %22, 10
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  ret void
}

declare dso_local i32 @vmem_alloc(i32*, i64, i32, i64*) #1

declare dso_local i32 @vmem_init(i32, i8*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
