; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_detect_magic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_detect_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i32, i32, i32 }

@sixpack_magic = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @detect_magic(%struct.cudbg_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cudbg_buffer*, align 8
  %4 = alloca [8 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cudbg_buffer* %0, %struct.cudbg_buffer** %3, align 8
  %7 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %13, i32 0, i32 0
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %16 = call i64 @read_from_buf(i32 %9, i32 %12, i32* %14, i8* %15, i32 8)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8*, i8** @sixpack_magic, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %29, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %43

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %21

42:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %37, %19
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @read_from_buf(i32, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
