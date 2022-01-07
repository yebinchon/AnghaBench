; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_initrd.c_ofw_initrd_probe_and_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_initrd.c_ofw_initrd_probe_and_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hw_direct_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"linux,initrd-start\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"linux,initrd-end\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"ofw_initrd: Wrong linux,initrd-start size\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"ofw_initrd: Wrong linux,initrd-end size\0A\00", align 1
@mfs_root = common dso_local global i32* null, align 8
@mfs_root_size = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"ofw_initrd: initrd loaded at 0x%08lx-0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ofw_initrd_probe_and_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofw_initrd_probe_and_attach(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @hw_direct_map, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %84

11:                                               ; preds = %1
  %12 = call i64 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %84

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @OF_hasprop(i64 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @OF_hasprop(i64 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %16
  br label %84

25:                                               ; preds = %20
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %28 = call i32 @OF_getencprop(i64 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %27, i32 8)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 32
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %40, %42
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %34
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %84

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %50 = call i32 @OF_getencprop(i64 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %49, i32 8)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %5, align 4
  br label %69

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 32
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %62, %64
  store i32 %65, i32* %5, align 4
  br label %68

66:                                               ; preds = %56
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %84

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %70, %71
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @PHYS_TO_DMAP(i32 %75)
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** @mfs_root, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* @mfs_root_size, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %10, %15, %24, %44, %66, %74, %69
  ret void
}

declare dso_local i64 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_hasprop(i64, i8*) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
