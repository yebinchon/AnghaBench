; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_hash_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_hash_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_hash = type { i64, i32* }

@UMA_HASH_SIZE_INIT = common dso_local global i64 0, align 8
@hashzone = common dso_local global i32 0, align 4
@SKIP_NONE = common dso_local global i32 0, align 4
@M_UMAHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uma_hash*)* @hash_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_free(%struct.uma_hash* %0) #0 {
  %2 = alloca %struct.uma_hash*, align 8
  store %struct.uma_hash* %0, %struct.uma_hash** %2, align 8
  %3 = load %struct.uma_hash*, %struct.uma_hash** %2, align 8
  %4 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.uma_hash*, %struct.uma_hash** %2, align 8
  %10 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UMA_HASH_SIZE_INIT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load i32, i32* @hashzone, align 4
  %16 = load %struct.uma_hash*, %struct.uma_hash** %2, align 8
  %17 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @SKIP_NONE, align 4
  %20 = call i32 @zone_free_item(i32 %15, i32* %18, i32* null, i32 %19)
  br label %27

21:                                               ; preds = %8
  %22 = load %struct.uma_hash*, %struct.uma_hash** %2, align 8
  %23 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @M_UMAHASH, align 4
  %26 = call i32 @free(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %7, %21, %14
  ret void
}

declare dso_local i32 @zone_free_item(i32, i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
