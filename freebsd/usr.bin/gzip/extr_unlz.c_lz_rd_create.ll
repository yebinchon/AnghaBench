; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_rd_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_rd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lz_range_decoder = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lz_range_decoder*, i32*)* @lz_rd_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_rd_create(%struct.lz_range_decoder* %0, i32* %1) #0 {
  %3 = alloca %struct.lz_range_decoder*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.lz_range_decoder* %0, %struct.lz_range_decoder** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %8 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %7, i32 0, i32 1
  store i32* %6, i32** %8, align 8
  %9 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %10 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %12 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %11, i32 0, i32 2
  store i32 -1, i32* %12, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 8
  %21 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %22 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @getc(i32* %23)
  %25 = trunc i64 %24 to i32
  %26 = or i32 %20, %25
  %27 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %28 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %3, align 8
  %34 = getelementptr inbounds %struct.lz_range_decoder, %struct.lz_range_decoder* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @ferror(i32* %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 -1, i32 0
  ret i32 %39
}

declare dso_local i64 @getc(i32*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
