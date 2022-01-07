; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bufring.c_buf_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bufring.c_buf_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_ring = type { i32, i32, i32, i32, i64, i64, i64, i64, %struct.mtx* }
%struct.malloc_type = type { i32 }
%struct.mtx = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"buf ring must be size power of 2\00", align 1
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buf_ring* @buf_ring_alloc(i32 %0, %struct.malloc_type* %1, i32 %2, %struct.mtx* %3) #0 {
  %5 = alloca %struct.buf_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.malloc_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtx*, align 8
  %10 = alloca %struct.buf_ring*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.malloc_type* %1, %struct.malloc_type** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mtx* %3, %struct.mtx** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @powerof2(i32 %11)
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = add i64 56, %16
  %18 = trunc i64 %17 to i32
  %19 = load %struct.malloc_type*, %struct.malloc_type** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.buf_ring* @malloc(i32 %18, %struct.malloc_type* %19, i32 %22)
  store %struct.buf_ring* %23, %struct.buf_ring** %10, align 8
  %24 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %25 = icmp eq %struct.buf_ring* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store %struct.buf_ring* null, %struct.buf_ring** %5, align 8
  br label %48

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %30 = getelementptr inbounds %struct.buf_ring, %struct.buf_ring* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %32 = getelementptr inbounds %struct.buf_ring, %struct.buf_ring* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %36 = getelementptr inbounds %struct.buf_ring, %struct.buf_ring* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %38 = getelementptr inbounds %struct.buf_ring, %struct.buf_ring* %37, i32 0, i32 2
  store i32 %34, i32* %38, align 8
  %39 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %40 = getelementptr inbounds %struct.buf_ring, %struct.buf_ring* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %42 = getelementptr inbounds %struct.buf_ring, %struct.buf_ring* %41, i32 0, i32 7
  store i64 0, i64* %42, align 8
  %43 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %44 = getelementptr inbounds %struct.buf_ring, %struct.buf_ring* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %46 = getelementptr inbounds %struct.buf_ring, %struct.buf_ring* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  store %struct.buf_ring* %47, %struct.buf_ring** %5, align 8
  br label %48

48:                                               ; preds = %27, %26
  %49 = load %struct.buf_ring*, %struct.buf_ring** %5, align 8
  ret %struct.buf_ring* %49
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local %struct.buf_ring* @malloc(i32, %struct.malloc_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
