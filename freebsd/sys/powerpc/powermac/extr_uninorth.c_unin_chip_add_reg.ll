; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_add_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_add_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unin_chip_devinfo = type { i32 }
%struct.unin_chip_reg = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.unin_chip_devinfo*)* @unin_chip_add_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unin_chip_add_reg(i32 %0, %struct.unin_chip_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unin_chip_devinfo*, align 8
  %5 = alloca %struct.unin_chip_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.unin_chip_devinfo* %1, %struct.unin_chip_devinfo** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = bitcast %struct.unin_chip_reg** %5 to i8**
  %10 = call i32 @OF_getprop_alloc_multi(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 16, i8** %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %53

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %50, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  %20 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %4, align 8
  %21 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %20, i32 0, i32 0
  %22 = load i32, i32* @SYS_RES_MEMORY, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.unin_chip_reg*, %struct.unin_chip_reg** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.unin_chip_reg, %struct.unin_chip_reg* %24, i64 %26
  %28 = getelementptr inbounds %struct.unin_chip_reg, %struct.unin_chip_reg* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.unin_chip_reg*, %struct.unin_chip_reg** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.unin_chip_reg, %struct.unin_chip_reg* %30, i64 %32
  %34 = getelementptr inbounds %struct.unin_chip_reg, %struct.unin_chip_reg* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.unin_chip_reg*, %struct.unin_chip_reg** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.unin_chip_reg, %struct.unin_chip_reg* %36, i64 %38
  %40 = getelementptr inbounds %struct.unin_chip_reg, %struct.unin_chip_reg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %35, %41
  %43 = load %struct.unin_chip_reg*, %struct.unin_chip_reg** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.unin_chip_reg, %struct.unin_chip_reg* %43, i64 %45
  %47 = getelementptr inbounds %struct.unin_chip_reg, %struct.unin_chip_reg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @resource_list_add(i32* %21, i32 %22, i32 %23, i64 %29, i64 %42, i64 %48)
  br label %50

50:                                               ; preds = %19
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %15

53:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32 @OF_getprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
