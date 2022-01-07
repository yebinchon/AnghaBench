; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_rtas.c_rtas_real_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_rtas.c_rtas_real_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtas_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@rtas_bounce_offset = common dso_local global i32 0, align 4
@rtas_bounce_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Oversize RTAS call!\00", align 1
@rtas_bounce_virt = common dso_local global i64 0, align 8
@rtas_bounce_phys = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @rtas_real_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtas_real_map(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* @rtas_mtx, i32 %7)
  %9 = load i32, i32* @rtas_bounce_offset, align 4
  %10 = sext i32 %9 to i64
  %11 = urem i64 %10, 4
  %12 = sub i64 4, %11
  %13 = load i32, i32* @rtas_bounce_offset, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @rtas_bounce_offset, align 4
  %17 = load i32, i32* @rtas_bounce_offset, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %18, %19
  %21 = load i32, i32* @rtas_bounce_size, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %49

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i64, i64* @rtas_bounce_virt, align 8
  %31 = load i32, i32* @rtas_bounce_offset, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @memcpy(i64 %33, i8* %34, i64 %35)
  br label %38

37:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %49

38:                                               ; preds = %29
  %39 = load i64, i64* @rtas_bounce_phys, align 8
  %40 = load i32, i32* @rtas_bounce_offset, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @rtas_bounce_offset, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* @rtas_bounce_offset, align 4
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %38, %37, %24
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
