; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdio/extr_sdio_subr.c_sdio_set_block_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdio/extr_sdio_subr.c_sdio_set_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SD_IO_FBR_START = common dso_local global i32 0, align 4
@SD_IO_FBR_IOBLKSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_set_block_size(%struct.sdio_func* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %11 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sdio_get_support_multiblk(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %16, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @SD_IO_FBR_START, align 4
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @SD_IO_FBR_IOBLKSZ, align 8
  %29 = add nsw i64 %27, %28
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @htole16(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 255
  %36 = call i32 @SDIO_WRITE_DIRECT(i32 %32, i32 0, i64 %33, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %17
  %40 = load i32, i32* %6, align 4
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, 1
  %43 = load i32, i32* %9, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = call i32 @SDIO_WRITE_DIRECT(i32 %40, i32 0, i64 %42, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %39, %17
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %53 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @sdio_get_support_multiblk(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @SDIO_WRITE_DIRECT(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
