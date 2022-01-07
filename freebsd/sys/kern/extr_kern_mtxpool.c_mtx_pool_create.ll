; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mtxpool.c_mtx_pool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mtxpool.c_mtx_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx_pool = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"WARNING: %s pool size is not a power of 2.\0A\00", align 1
@M_MTXPOOL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mtx_pool* @mtx_pool_create(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtx_pool*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @powerof2(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %3
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 128, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @M_MTXPOOL, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.mtx_pool* @malloc(i32 %23, i32 %24, i32 %27)
  store %struct.mtx_pool* %28, %struct.mtx_pool** %7, align 8
  %29 = load %struct.mtx_pool*, %struct.mtx_pool** %7, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mtx_pool_initialize(%struct.mtx_pool* %29, i8* %30, i32 %31, i32 %32)
  %34 = load %struct.mtx_pool*, %struct.mtx_pool** %7, align 8
  ret %struct.mtx_pool* %34
}

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local %struct.mtx_pool* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_pool_initialize(%struct.mtx_pool*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
