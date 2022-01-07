; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_fs.c_ipoib_path_seq_show.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_fs.c_ipoib_path_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ipoib_path_iter = type { i32 }
%struct.ipoib_path = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"GID: %s\0A  complete: %6s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"  DLID:     0x%04x\0A  SL: %12d\0A  rate: %*d%s Gb/sec\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c".5\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ipoib_path_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_path_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipoib_path_iter*, align 8
  %7 = alloca [40 x i8], align 16
  %8 = alloca %struct.ipoib_path, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ipoib_path_iter*
  store %struct.ipoib_path_iter* %11, %struct.ipoib_path_iter** %6, align 8
  %12 = load %struct.ipoib_path_iter*, %struct.ipoib_path_iter** %6, align 8
  %13 = icmp ne %struct.ipoib_path_iter* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.ipoib_path_iter*, %struct.ipoib_path_iter** %6, align 8
  %17 = call i32 @ipoib_path_iter_read(%struct.ipoib_path_iter* %16, %struct.ipoib_path* %8)
  %18 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %21 = call i32 @format_gid(i32* %19, i8* %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %24 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %29)
  %31 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ib_rate_to_mult(i32 %38)
  %40 = mul nsw i32 %39, 25
  store i32 %40, i32* %9, align 4
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @be16_to_cpu(i64 %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load i32, i32* %9, align 4
  %54 = srem i32 %53, 10
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 2, i32 0
  %58 = sub nsw i32 10, %57
  %59 = load i32, i32* %9, align 4
  %60 = sdiv i32 %59, 10
  %61 = load i32, i32* %9, align 4
  %62 = srem i32 %61, 10
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %66 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %47, i8* %52, i32 %58, i32 %60, i8* %65)
  br label %67

67:                                               ; preds = %35, %15
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = call i32 @seq_putc(%struct.seq_file* %68, i8 signext 10)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @ipoib_path_iter_read(%struct.ipoib_path_iter*, %struct.ipoib_path*) #1

declare dso_local i32 @format_gid(i32*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @ib_rate_to_mult(i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
