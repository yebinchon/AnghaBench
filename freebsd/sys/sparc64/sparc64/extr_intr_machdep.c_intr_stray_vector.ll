; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intr_stray_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intr_stray_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_vector = type { i64 }

@intr_stray_count = common dso_local global i32* null, align 8
@MAX_STRAY_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"stray vector interrupt %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"got %d stray vector interrupt %d's: not logging anymore\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @intr_stray_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_stray_vector(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intr_vector*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.intr_vector*
  store %struct.intr_vector* %6, %struct.intr_vector** %3, align 8
  %7 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %8 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i32*, i32** @intr_stray_count, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAX_STRAY_LOG, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** @intr_stray_count, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i32*, i32** @intr_stray_count, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAX_STRAY_LOG, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = load i32, i32* @MAX_STRAY_LOG, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %16
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
