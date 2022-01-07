; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_add_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_add_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iobus_devinfo = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.iobus_devinfo*, i64)* @iobus_add_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iobus_add_reg(i32 %0, %struct.iobus_devinfo* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iobus_devinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.iobus_devinfo* %1, %struct.iobus_devinfo** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %11 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = call i32 @OF_getprop(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %12, i32 8)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %81

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %22 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %77, %16
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %26 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %80

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %32 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %30
  store i64 %39, i64* %37, align 8
  %40 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %41 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %40, i32 0, i32 2
  %42 = load i32, i32* @SYS_RES_MEMORY, align 4
  %43 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %44 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %52 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %60 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %58, %66
  %68 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %69 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @resource_list_add(i32* %41, i32 %42, i32 0, i64 %50, i64 %67, i64 %75)
  br label %77

77:                                               ; preds = %29
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 3
  store i32 %79, i32* %8, align 4
  br label %23

80:                                               ; preds = %23
  br label %81

81:                                               ; preds = %80, %3
  ret void
}

declare dso_local i32 @OF_getprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
