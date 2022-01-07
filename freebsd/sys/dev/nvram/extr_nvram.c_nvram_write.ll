; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvram/extr_nvram.c_nvram_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvram/extr_nvram.c_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i32 }

@nvram_lock = common dso_local global i32 0, align 4
@NVRAM_FIRST = common dso_local global i32 0, align 4
@CKSUM_MSB = common dso_local global i32 0, align 4
@CKSUM_LSB = common dso_local global i32 0, align 4
@CKSUM_FIRST = common dso_local global i32 0, align 4
@CKSUM_LAST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NVRAM_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvram_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = call i32 @sx_xlock(i32* @nvram_lock)
  %14 = load i32, i32* @NVRAM_FIRST, align 4
  %15 = load i32, i32* @CKSUM_MSB, align 4
  %16 = add nsw i32 %14, %15
  %17 = call i32 @rtcin(i32 %16)
  %18 = shl i32 %17, 8
  %19 = load i32, i32* @NVRAM_FIRST, align 4
  %20 = load i32, i32* @CKSUM_LSB, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @rtcin(i32 %21)
  %23 = or i32 %18, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @CKSUM_FIRST, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %36, %3
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @CKSUM_LAST, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32, i32* @NVRAM_FIRST, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @rtcin(i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %25

39:                                               ; preds = %25
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 @sx_xunlock(i32* @nvram_lock)
  %44 = load i32, i32* @EIO, align 4
  store i32 %44, i32* %4, align 4
  br label %107

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %71, %45
  %47 = load %struct.uio*, %struct.uio** %6, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i1 [ false, %46 ], [ %53, %51 ]
  br i1 %55, label %56, label %77

56:                                               ; preds = %54
  %57 = load %struct.uio*, %struct.uio** %6, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NVRAM_FIRST, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @NVRAM_FIRST, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @NVRAM_LAST, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %56
  %70 = call i32 @sx_xunlock(i32* @nvram_lock)
  store i32 0, i32* %4, align 4
  br label %107

71:                                               ; preds = %65
  %72 = load %struct.uio*, %struct.uio** %6, align 8
  %73 = call i32 @uiomove(i32* %9, i32 1, %struct.uio* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @writertc(i32 %74, i32 %75)
  br label %46

77:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  %78 = load i32, i32* @CKSUM_FIRST, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %90, %77
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @CKSUM_LAST, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32, i32* @NVRAM_FIRST, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @rtcin(i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %79

93:                                               ; preds = %79
  %94 = load i32, i32* @NVRAM_FIRST, align 4
  %95 = load i32, i32* @CKSUM_MSB, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %12, align 4
  %98 = ashr i32 %97, 8
  %99 = call i32 @writertc(i32 %96, i32 %98)
  %100 = load i32, i32* @NVRAM_FIRST, align 4
  %101 = load i32, i32* @CKSUM_LSB, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @writertc(i32 %102, i32 %103)
  %105 = call i32 @sx_xunlock(i32* @nvram_lock)
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %93, %69, %42
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @rtcin(i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i32 @writertc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
