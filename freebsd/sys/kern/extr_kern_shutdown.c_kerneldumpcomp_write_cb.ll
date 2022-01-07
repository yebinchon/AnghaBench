; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_kerneldumpcomp_write_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_kerneldumpcomp_write_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i8*)* @kerneldumpcomp_write_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kerneldumpcomp_write_cb(i8* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dumperinfo*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.dumperinfo*
  store %struct.dumperinfo* %15, %struct.dumperinfo** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.dumperinfo*, %struct.dumperinfo** %10, align 8
  %18 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = urem i64 %16, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.dumperinfo*, %struct.dumperinfo** %10, align 8
  %25 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @rounddown(i64 %23, i64 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.dumperinfo*, %struct.dumperinfo** %10, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @_dump_append(%struct.dumperinfo* %31, i8* %32, i32 0, i64 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %64

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %12, align 8
  %43 = sub i64 %41, %42
  store i64 %43, i64* %11, align 8
  %44 = load %struct.dumperinfo*, %struct.dumperinfo** %10, align 8
  %45 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @memmove(i32 %46, i32* %50, i64 %51)
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.dumperinfo*, %struct.dumperinfo** %10, align 8
  %55 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 %53, i64* %57, align 8
  %58 = load i32, i32* @EAGAIN, align 4
  store i32 %58, i32* %5, align 4
  br label %64

59:                                               ; preds = %4
  %60 = load %struct.dumperinfo*, %struct.dumperinfo** %10, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @_dump_append(%struct.dumperinfo* %60, i8* %61, i32 0, i64 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %40, %37
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @rounddown(i64, i64) #1

declare dso_local i32 @_dump_append(%struct.dumperinfo*, i8*, i32, i64) #1

declare dso_local i32 @memmove(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
