; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elfcore.c_elf_note_procstat_rlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elfcore.c_elf_note_procstat_rlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RLIM_NLIMITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_RLIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"kern.proc.rlimit.%u\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"kern.proc.rlimit.%u: short read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @elf_note_procstat_rlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @elf_note_procstat_rlimit(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @RLIM_NLIMITS, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @calloc(i32 1, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %2
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @bcopy(i32* %9, i8* %29, i32 4)
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  store i8* %32, i8** %11, align 8
  %33 = load i32, i32* @CTL_KERN, align 4
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %33, i32* %34, align 16
  %35 = load i32, i32* @KERN_PROC, align 4
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @KERN_PROC_RLIMIT, align 4
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 %39, i32* %40, align 4
  store i64 4, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %65, %28
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @RLIM_NLIMITS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 %46, i32* %47, align 16
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @sysctl(i32* %48, i32 5, i8* %49, i64* %6, i32* null, i32 0)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 4
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i64, i64* %6, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr i8, i8* %63, i64 %62
  store i8* %64, i8** %11, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %41

68:                                               ; preds = %41
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 4, %70
  %72 = load i64*, i64** %4, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i8*, i8** %10, align 8
  ret i8* %73
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

declare dso_local i32 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
