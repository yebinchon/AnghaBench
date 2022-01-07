; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_subr.c_smb_copy_iconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_subr.c_smb_copy_iconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbchain = type { i64 }
%struct.iconv_drv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbchain*, i32, i32, i64*, i64*)* @smb_copy_iconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_copy_iconv(%struct.mbchain* %0, i32 %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbchain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.mbchain* %0, %struct.mbchain** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64*, i64** %11, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %14, align 8
  %19 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %20 = getelementptr inbounds %struct.mbchain, %struct.mbchain* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.iconv_drv*
  %23 = call i32 @iconv_conv(%struct.iconv_drv* %22, i32* %8, i64* %13, i32* %9, i64* %14)
  store i32 %23, i32* %12, align 4
  %24 = load i64, i64* %13, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %5
  %29 = load i64, i64* %14, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %28, %5
  %34 = load i64, i64* %13, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %36, %34
  store i64 %37, i64* %35, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, %38
  store i64 %41, i64* %39, align 8
  store i32 0, i32* %6, align 4
  br label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %33
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @iconv_conv(%struct.iconv_drv*, i32*, i64*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
