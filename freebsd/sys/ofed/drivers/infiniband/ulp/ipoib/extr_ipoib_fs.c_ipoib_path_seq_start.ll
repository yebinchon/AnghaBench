; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_fs.c_ipoib_path_seq_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_fs.c_ipoib_path_seq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ipoib_path_iter = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i32*)* @ipoib_path_seq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ipoib_path_seq_start(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ipoib_path_iter*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @ipoib_path_iter_init(i32 %12)
  %14 = bitcast i8* %13 to %struct.ipoib_path_iter*
  store %struct.ipoib_path_iter* %14, %struct.ipoib_path_iter** %6, align 8
  %15 = load %struct.ipoib_path_iter*, %struct.ipoib_path_iter** %6, align 8
  %16 = icmp ne %struct.ipoib_path_iter* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %36

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.ipoib_path_iter*, %struct.ipoib_path_iter** %6, align 8
  %25 = bitcast %struct.ipoib_path_iter* %24 to i8*
  %26 = call i64 @ipoib_path_iter_next(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.ipoib_path_iter*, %struct.ipoib_path_iter** %6, align 8
  %30 = bitcast %struct.ipoib_path_iter* %29 to i8*
  %31 = call i32 @kfree(i8* %30)
  store i8* null, i8** %3, align 8
  br label %36

32:                                               ; preds = %23
  br label %19

33:                                               ; preds = %19
  %34 = load %struct.ipoib_path_iter*, %struct.ipoib_path_iter** %6, align 8
  %35 = bitcast %struct.ipoib_path_iter* %34 to i8*
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %33, %28, %17
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i8* @ipoib_path_iter_init(i32) #1

declare dso_local i64 @ipoib_path_iter_next(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
