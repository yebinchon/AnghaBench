; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_peek.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lz_decoder = type { i32, i64, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lz_decoder*, i32)* @lz_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_peek(%struct.lz_decoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lz_decoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.lz_decoder* %0, %struct.lz_decoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lz_decoder*, %struct.lz_decoder** %4, align 8
  %8 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub i32 %9, %10
  %12 = sub i32 %11, 1
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp uge i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.lz_decoder*, %struct.lz_decoder** %4, align 8
  %18 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.lz_decoder*, %struct.lz_decoder** %4, align 8
  %25 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.lz_decoder*, %struct.lz_decoder** %4, align 8
  %30 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.lz_decoder*, %struct.lz_decoder** %4, align 8
  %33 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %34, %35
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %28, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
