; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_slb_zone_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_slb_zone_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"SLB tree node\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@UMA_ZONE_VM = common dso_local global i32 0, align 4
@slbt_zone = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"SLB cache\00", align 1
@n_slbs = common dso_local global i32 0, align 4
@slb_cache_zone = common dso_local global i32 0, align 4
@VM_MAX_ADDRESS = common dso_local global i64 0, align 8
@slb_uma_real_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @slb_zone_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slb_zone_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %4 = load i32, i32* @UMA_ZONE_VM, align 4
  %5 = call i32 @uma_zcreate(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %3, i32 %4)
  store i32 %5, i32* @slbt_zone, align 4
  %6 = load i32, i32* @n_slbs, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %12 = load i32, i32* @UMA_ZONE_VM, align 4
  %13 = call i32 @uma_zcreate(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32* null, i32* null, i32* null, i32* null, i32 %11, i32 %12)
  store i32 %13, i32* @slb_cache_zone, align 4
  %14 = call i64 (...) @platform_real_maxaddr()
  %15 = load i64, i64* @VM_MAX_ADDRESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @slb_cache_zone, align 4
  %19 = load i32, i32* @slb_uma_real_alloc, align 4
  %20 = call i32 @uma_zone_set_allocf(i32 %18, i32 %19)
  %21 = load i32, i32* @slbt_zone, align 4
  %22 = load i32, i32* @slb_uma_real_alloc, align 4
  %23 = call i32 @uma_zone_set_allocf(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @platform_real_maxaddr(...) #1

declare dso_local i32 @uma_zone_set_allocf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
