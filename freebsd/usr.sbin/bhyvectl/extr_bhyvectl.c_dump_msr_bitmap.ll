; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_dump_msr_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_dump_msr_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"/dev/mem\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Couldn't open /dev/mem\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"mmap failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @dump_msr_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_msr_bitmap(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %11 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %11, i8** %10, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %50

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %22, i32* %9, align 4
  br label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = mul nsw i32 2, %24
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PROT_READ, align 4
  %29 = load i32, i32* @MAP_SHARED, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @mmap(i32* null, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** @MAP_FAILED, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %50

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @dump_intel_msr_pm(i8* %42, i32 %43)
  br label %49

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dump_amd_msr_pm(i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %36, %16
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** @MAP_FAILED, align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @munmap(i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @close(i32 %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dump_intel_msr_pm(i8*, i32) #1

declare dso_local i32 @dump_amd_msr_pm(i8*, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
