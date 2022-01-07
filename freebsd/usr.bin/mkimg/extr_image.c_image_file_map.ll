; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_file_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_file_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@image_swap_pgsz = common dso_local global i64 0, align 8
@secsz = common dso_local global i64 0, align 8
@MAP_NOCORE = common dso_local global i32 0, align 4
@MAP_NOSYNC = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@image_swap_fd = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i64, i64, i64*)* @image_file_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @image_file_map(i32 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @image_swap_pgsz, align 8
  %16 = urem i64 %14, %15
  store i64 %16, i64* %13, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, %19
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64*, i64** %8, align 8
  store i64 %25, i64* %26, align 8
  br label %29

27:                                               ; preds = %4
  %28 = load i64*, i64** %8, align 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i64, i64* @secsz, align 8
  %31 = load i64, i64* @image_swap_pgsz, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @secsz, align 8
  br label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @image_swap_pgsz, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i64 [ %34, %33 ], [ %36, %35 ]
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub i64 %40, 1
  %42 = and i64 %39, %41
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* @MAP_NOCORE, align 4
  %47 = load i32, i32* @MAP_NOSYNC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MAP_SHARED, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @PROT_READ, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @image_swap_fd, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %37
  %56 = load i32, i32* @PROT_WRITE, align 4
  br label %58

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = or i32 %51, %59
  store i32 %60, i32* %12, align 4
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %61, %62
  %64 = sub i64 %63, 1
  %65 = load i64, i64* %10, align 8
  %66 = sub i64 %65, 1
  %67 = xor i64 %66, -1
  %68 = and i64 %64, %67
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i64, i64* %6, align 8
  %74 = call i8* @mmap(i32* null, i64 %69, i32 %70, i32 %71, i32 %72, i64 %73)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** @MAP_FAILED, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %58
  br label %81

79:                                               ; preds = %58
  %80 = load i8*, i8** %9, align 8
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i8* [ null, %78 ], [ %80, %79 ]
  ret i8* %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
