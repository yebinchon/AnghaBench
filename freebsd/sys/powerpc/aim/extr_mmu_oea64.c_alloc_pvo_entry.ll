; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_alloc_pvo_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_alloc_pvo_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32 }

@moea64_initialized = common dso_local global i32 0, align 4
@moea64_bpvo_pool_index = common dso_local global i32 0, align 4
@moea64_bpvo_pool_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"moea64_enter: bpvo pool exhausted, %d, %d, %zd\00", align 1
@moea64_bpvo_pool = common dso_local global %struct.pvo_entry* null, align 8
@PVO_BOOTSTRAP = common dso_local global i32 0, align 4
@moea64_pvo_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pvo_entry* (i32)* @alloc_pvo_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pvo_entry* @alloc_pvo_entry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvo_entry*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @moea64_initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @moea64_bpvo_pool_index, align 4
  %11 = load i32, i32* @moea64_bpvo_pool_size, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32, i32* @moea64_bpvo_pool_index, align 4
  %15 = load i32, i32* @moea64_bpvo_pool_size, align 4
  %16 = load i32, i32* @moea64_bpvo_pool_size, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %13, %9
  %22 = load %struct.pvo_entry*, %struct.pvo_entry** @moea64_bpvo_pool, align 8
  %23 = call i64 @atomic_fetchadd_int(i32* @moea64_bpvo_pool_index, i32 1)
  %24 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %22, i64 %23
  store %struct.pvo_entry* %24, %struct.pvo_entry** %3, align 8
  %25 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %26 = call i32 @bzero(%struct.pvo_entry* %25, i32 4)
  %27 = load i32, i32* @PVO_BOOTSTRAP, align 4
  %28 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %29 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %36

30:                                               ; preds = %6
  %31 = load i32, i32* @moea64_pvo_zone, align 4
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.pvo_entry* @uma_zalloc(i32 %31, i32 %34)
  store %struct.pvo_entry* %35, %struct.pvo_entry** %3, align 8
  br label %36

36:                                               ; preds = %30, %21
  %37 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  ret %struct.pvo_entry* %37
}

declare dso_local i32 @panic(i8*, i32, i32, i32) #1

declare dso_local i64 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @bzero(%struct.pvo_entry*, i32) #1

declare dso_local %struct.pvo_entry* @uma_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
