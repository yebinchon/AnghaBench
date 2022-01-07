; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_core_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_core_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.coredump_params = type { i32* }

@UIO_USERSPACE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"Failed to fully fault in a core file segment at VA %p with size 0x%zx to be written at offset 0x%jx for process %s\0A\00", align 1
@curproc = common dso_local global %struct.TYPE_2__* null, align 8
@zero_region = common dso_local global i8* null, align 8
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, %struct.coredump_params*, i8*)* @core_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_output(i8* %0, i64 %1, i64 %2, %struct.coredump_params* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.coredump_params*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.coredump_params* %3, %struct.coredump_params** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.coredump_params*, %struct.coredump_params** %10, align 8
  %14 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load %struct.coredump_params*, %struct.coredump_params** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @compress_chunk(%struct.coredump_params* %18, i8* %19, i8* %20, i64 %21)
  store i32 %22, i32* %6, align 4
  br label %53

23:                                               ; preds = %5
  %24 = load %struct.coredump_params*, %struct.coredump_params** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* @UIO_USERSPACE, align 4
  %30 = call i32 @core_write(%struct.coredump_params* %24, i8* %25, i32 %27, i64 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @EFAULT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %23
  %35 = load i32, i32* @LOG_WARNING, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curproc, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @log(i32 %35, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i8* %36, i64 %37, i64 %38, i32 %41)
  %43 = load %struct.coredump_params*, %struct.coredump_params** %10, align 8
  %44 = load i8*, i8** @zero_region, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %45, %46
  %48 = sub i64 %47, 1
  %49 = load i32, i32* @UIO_SYSSPACE, align 4
  %50 = call i32 @core_write(%struct.coredump_params* %43, i8* %44, i32 1, i64 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %34, %23
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %17
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @compress_chunk(%struct.coredump_params*, i8*, i8*, i64) #1

declare dso_local i32 @core_write(%struct.coredump_params*, i8*, i32, i64, i32) #1

declare dso_local i32 @log(i32, i8*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
