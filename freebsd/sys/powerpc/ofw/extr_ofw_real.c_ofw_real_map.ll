; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_real.c_ofw_real_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_real.c_ofw_real_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ofw_real_map.emergency_buffer = internal global [255 x i8] zeroinitializer, align 16
@of_bounce_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@of_bounce_virt = common dso_local global i8* null, align 8
@pmap_bootstrapped = common dso_local global i32 0, align 4
@DMAP_BASE_ADDRESS = common dso_local global i64 0, align 8
@of_bounce_phys = common dso_local global i32 0, align 4
@of_bounce_size = common dso_local global i32 0, align 4
@of_bounce_offset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Oversize Open Firmware call!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @ofw_real_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_real_map(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* @of_bounce_mtx, i32 %7)
  %9 = load i8*, i8** @of_bounce_virt, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32, i32* @pmap_bootstrapped, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = load i64, i64* @DMAP_BASE_ADDRESS, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %68

21:                                               ; preds = %11
  store i8* getelementptr inbounds ([255 x i8], [255 x i8]* @ofw_real_map.emergency_buffer, i64 0, i64 0), i8** @of_bounce_virt, align 8
  %22 = load i8*, i8** @of_bounce_virt, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load i64, i64* @DMAP_BASE_ADDRESS, align 8
  %25 = xor i64 %24, -1
  %26 = and i64 %23, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* @of_bounce_phys, align 4
  store i32 255, i32* @of_bounce_size, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @of_bounce_offset, align 4
  %30 = sext i32 %29 to i64
  %31 = urem i64 %30, 4
  %32 = sub i64 4, %31
  %33 = load i32, i32* @of_bounce_offset, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* @of_bounce_offset, align 4
  %37 = load i32, i32* @of_bounce_offset, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %38, %39
  %41 = load i32, i32* @of_bounce_size, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %68

46:                                               ; preds = %28
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i8*, i8** @of_bounce_virt, align 8
  %51 = load i32, i32* @of_bounce_offset, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @memcpy(i8* %53, i8* %54, i64 %55)
  br label %58

57:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %68

58:                                               ; preds = %49
  %59 = load i32, i32* @of_bounce_phys, align 4
  %60 = load i32, i32* @of_bounce_offset, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* @of_bounce_offset, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* @of_bounce_offset, align 4
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %58, %57, %44, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
