; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_io_buffer_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_io_buffer_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_buffer = type { i64, i32* }

@.str = private unnamed_addr constant [30 x i8] c"Failed to grow GDB I/O buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_buffer*, i64)* @io_buffer_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_buffer_grow(%struct.io_buffer* %0, i64 %1) #0 {
  %3 = alloca %struct.io_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.io_buffer* %0, %struct.io_buffer** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.io_buffer*, %struct.io_buffer** %3, align 8
  %9 = call i64 @io_buffer_avail(%struct.io_buffer* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.io_buffer*, %struct.io_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = sub i64 %18, %19
  %21 = add i64 %17, %20
  store i64 %21, i64* %7, align 8
  %22 = load %struct.io_buffer*, %struct.io_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32* @realloc(i32* %24, i64 %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %14
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.io_buffer*, %struct.io_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.io_buffer*, %struct.io_buffer** %3, align 8
  %37 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %13
  ret void
}

declare dso_local i64 @io_buffer_avail(%struct.io_buffer*) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
