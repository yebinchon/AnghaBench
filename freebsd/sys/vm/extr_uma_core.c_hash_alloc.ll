; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_hash_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_hash_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_hash = type { i32, i32, %struct.slabhead* }
%struct.slabhead = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"hash size must be power of 2\00", align 1
@UMA_HASH_SIZE_INIT = common dso_local global i32 0, align 4
@M_UMAHASH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@hashzone = common dso_local global i32 0, align 4
@UMA_ANYDOMAIN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uma_hash*, i32)* @hash_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_alloc(%struct.uma_hash* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uma_hash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uma_hash* %0, %struct.uma_hash** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @powerof2(i32 %7)
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @UMA_HASH_SIZE_INIT, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %16 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %18 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @M_UMAHASH, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = call i64 @malloc(i64 %22, i32 %23, i32 %24)
  %26 = inttoptr i64 %25 to %struct.slabhead*
  %27 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %28 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %27, i32 0, i32 2
  store %struct.slabhead* %26, %struct.slabhead** %28, align 8
  br label %42

29:                                               ; preds = %2
  %30 = load i32, i32* @UMA_HASH_SIZE_INIT, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  store i64 %32, i64* %6, align 8
  %33 = load i32, i32* @hashzone, align 4
  %34 = load i32, i32* @UMA_ANYDOMAIN, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = call %struct.slabhead* @zone_alloc_item(i32 %33, i32* null, i32 %34, i32 %35)
  %37 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %38 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %37, i32 0, i32 2
  store %struct.slabhead* %36, %struct.slabhead** %38, align 8
  %39 = load i32, i32* @UMA_HASH_SIZE_INIT, align 4
  %40 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %41 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %29, %13
  %43 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %44 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %43, i32 0, i32 2
  %45 = load %struct.slabhead*, %struct.slabhead** %44, align 8
  %46 = icmp ne %struct.slabhead* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %49 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %48, i32 0, i32 2
  %50 = load %struct.slabhead*, %struct.slabhead** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @bzero(%struct.slabhead* %50, i64 %51)
  %53 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %54 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %58 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  store i32 1, i32* %3, align 4
  br label %60

59:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i64 @malloc(i64, i32, i32) #1

declare dso_local %struct.slabhead* @zone_alloc_item(i32, i32*, i32, i32) #1

declare dso_local i32 @bzero(%struct.slabhead*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
