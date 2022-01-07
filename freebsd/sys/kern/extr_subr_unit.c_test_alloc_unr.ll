; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_test_alloc_unr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_test_alloc_unr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unrhdr = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"F %u\0A\00", align 1
@no_alloc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"A %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unrhdr*, i64, i8*)* @test_alloc_unr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_alloc_unr(%struct.unrhdr* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.unrhdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.unrhdr* %0, %struct.unrhdr** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @VPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.unrhdr*, %struct.unrhdr** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @free_unr(%struct.unrhdr* %17, i64 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 0, i8* %22, align 1
  br label %36

23:                                               ; preds = %3
  store i32 1, i32* @no_alloc, align 4
  %24 = load %struct.unrhdr*, %struct.unrhdr** %4, align 8
  %25 = call i32 @alloc_unr(%struct.unrhdr* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 1, i8* %32, align 1
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @VPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %23
  store i32 0, i32* @no_alloc, align 4
  br label %36

36:                                               ; preds = %35, %13
  ret void
}

declare dso_local i32 @VPRINTF(i8*, i32) #1

declare dso_local i32 @free_unr(%struct.unrhdr*, i64) #1

declare dso_local i32 @alloc_unr(%struct.unrhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
