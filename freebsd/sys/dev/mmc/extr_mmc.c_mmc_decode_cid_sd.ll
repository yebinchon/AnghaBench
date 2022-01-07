; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_decode_cid_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_decode_cid_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_cid = type { i8*, i64, i8*, i8*, i8**, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.mmc_cid*)* @mmc_decode_cid_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_decode_cid_sd(i32* %0, %struct.mmc_cid* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mmc_cid*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.mmc_cid* %1, %struct.mmc_cid** %4, align 8
  %6 = load %struct.mmc_cid*, %struct.mmc_cid** %4, align 8
  %7 = call i32 @memset(%struct.mmc_cid* %6, i32 0, i32 56)
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @mmc_get_bits(i32* %8, i32 128, i32 120, i32 8)
  %10 = load %struct.mmc_cid*, %struct.mmc_cid** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %10, i32 0, i32 6
  store i8* %9, i8** %11, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @mmc_get_bits(i32* %12, i32 128, i32 104, i32 16)
  %14 = load %struct.mmc_cid*, %struct.mmc_cid** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %31, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 8
  %23 = sub nsw i32 96, %22
  %24 = call i8* @mmc_get_bits(i32* %20, i32 128, i32 %23, i32 8)
  %25 = load %struct.mmc_cid*, %struct.mmc_cid** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %25, i32 0, i32 4
  %27 = load i8**, i8*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8* %24, i8** %30, align 8
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %16

34:                                               ; preds = %16
  %35 = load %struct.mmc_cid*, %struct.mmc_cid** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %35, i32 0, i32 4
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 5
  store i8* null, i8** %38, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i8* @mmc_get_bits(i32* %39, i32 128, i32 56, i32 8)
  %41 = load %struct.mmc_cid*, %struct.mmc_cid** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i8* @mmc_get_bits(i32* %43, i32 128, i32 24, i32 32)
  %45 = load %struct.mmc_cid*, %struct.mmc_cid** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i8* @mmc_get_bits(i32* %47, i32 128, i32 12, i32 8)
  %49 = getelementptr i8, i8* %48, i64 2000
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.mmc_cid*, %struct.mmc_cid** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i8* @mmc_get_bits(i32* %53, i32 128, i32 8, i32 4)
  %55 = load %struct.mmc_cid*, %struct.mmc_cid** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  ret void
}

declare dso_local i32 @memset(%struct.mmc_cid*, i32, i32) #1

declare dso_local i8* @mmc_get_bits(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
