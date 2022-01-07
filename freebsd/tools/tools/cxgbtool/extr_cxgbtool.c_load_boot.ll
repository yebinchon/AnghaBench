; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_load_boot.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_load_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_mem_range = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"load boot image\00", align 1
@MAX_BOOT_IMAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"boot image too large\00", align 1
@CHELSIO_LOAD_BOOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @load_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_boot(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ch_mem_range, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %13, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %71

24:                                               ; preds = %4
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = call i32 @open(i8* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* @MAX_BOOT_IMAGE_SIZE, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @malloc(i32 %34)
  %36 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %12, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %32
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %12, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAX_BOOT_IMAGE_SIZE, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @read(i32 %43, i32 %45, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %42
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @MAX_BOOT_IMAGE_SIZE, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* %11, align 4
  %61 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %12, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* @CHELSIO_LOAD_BOOT, align 4
  %64 = call i64 @doit(i8* %62, i32 %63, %struct.ch_mem_range* %12)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %59
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @close(i32 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %23
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @doit(i8*, i32, %struct.ch_mem_range*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
