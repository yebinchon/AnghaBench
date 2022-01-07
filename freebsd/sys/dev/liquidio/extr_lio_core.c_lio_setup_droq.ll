; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_setup_droq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_setup_droq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Creating Droq: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Using default droq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*, i32, i32, i32, i8*)* @lio_setup_droq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_setup_droq(%struct.octeon_device* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @lio_dev_dbg(%struct.octeon_device* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @lio_create_droq(%struct.octeon_device* %16, i32 %17, i32 %18, i32 %19, i8* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %55

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @lio_dev_dbg(%struct.octeon_device* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 0, i32* %6, align 4
  br label %55

33:                                               ; preds = %26
  %34 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %35 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %36 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %45 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lio_write_csr32(%struct.octeon_device* %34, i32 %43, i32 %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %33, %29, %24
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i32) #1

declare dso_local i32 @lio_create_droq(%struct.octeon_device*, i32, i32, i32, i8*) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
