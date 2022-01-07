; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lz_decoder = type { i64, i64, i64, i32, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lz_decoder*)* @lz_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_flush(%struct.lz_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lz_decoder*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lz_decoder* %0, %struct.lz_decoder** %3, align 8
  %6 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %7 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %10 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %19 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %18, i32 0, i32 7
  %20 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %21 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %24 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @lz_crc_update(i32* %19, i64 %26, i64 %27)
  %29 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %30 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %33 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %38 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @fwrite(i64 %35, i32 1, i64 %36, i32 %39)
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %77

44:                                               ; preds = %16
  %45 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %46 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %49 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %54 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %56 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %44
  %60 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %61 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %64 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  %69 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %70 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %59, %44
  %72 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %73 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %76 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %71, %43, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @lz_crc_update(i32*, i64, i64) #1

declare dso_local i64 @fwrite(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
