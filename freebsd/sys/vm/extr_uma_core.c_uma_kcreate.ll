; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_kcreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_kcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_kctor_args = type { i64, i32, i32, i32, i32, i32 }

@UMA_ALIGN_CACHE = common dso_local global i32 0, align 4
@uma_align_cache = common dso_local global i32 0, align 4
@kegs = common dso_local global i32 0, align 4
@UMA_ANYDOMAIN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32, i32, i32)* @uma_kcreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uma_kcreate(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.uma_kctor_args, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* %8, align 8
  %15 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %13, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %13, i32 0, i32 5
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %13, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @UMA_ALIGN_CACHE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @uma_align_cache, align 4
  br label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %11, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %13, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %13, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %13, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @kegs, align 4
  %35 = load i32, i32* @UMA_ANYDOMAIN, align 4
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = call i32 @zone_alloc_item(i32 %34, %struct.uma_kctor_args* %13, i32 %35, i32 %36)
  ret i32 %37
}

declare dso_local i32 @zone_alloc_item(i32, %struct.uma_kctor_args*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
