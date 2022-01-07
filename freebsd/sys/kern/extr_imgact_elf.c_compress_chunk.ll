; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_compress_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_compress_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coredump_params = type { i32 }

@CORE_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coredump_params*, i8*, i8*, i64)* @compress_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_chunk(%struct.coredump_params* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.coredump_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.coredump_params* %0, %struct.coredump_params** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %11

11:                                               ; preds = %38, %4
  %12 = load i64, i64* %8, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* @CORE_BUF_SIZE, align 4
  %17 = call i64 @MIN(i64 %15, i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @copyin(i8* %18, i8* %19, i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @bzero(i8* %25, i64 %26)
  br label %28

28:                                               ; preds = %24, %14
  %29 = load %struct.coredump_params*, %struct.coredump_params** %5, align 8
  %30 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @compressor_write(i32 %31, i8* %32, i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %45

38:                                               ; preds = %28
  %39 = load i64, i64* %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8* %41, i8** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub nsw i64 %43, %42
  store i64 %44, i64* %8, align 8
  br label %11

45:                                               ; preds = %37, %11
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @copyin(i8*, i8*, i64) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @compressor_write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
