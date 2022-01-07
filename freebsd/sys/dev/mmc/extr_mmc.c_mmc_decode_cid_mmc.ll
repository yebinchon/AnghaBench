; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_decode_cid_mmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_decode_cid_mmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_cid = type { i32, i8*, i8*, i8*, i8**, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.mmc_cid*, i32)* @mmc_decode_cid_mmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_decode_cid_mmc(i32* %0, %struct.mmc_cid* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mmc_cid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.mmc_cid* %1, %struct.mmc_cid** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mmc_cid*, %struct.mmc_cid** %5, align 8
  %9 = call i32 @memset(%struct.mmc_cid* %8, i32 0, i32 56)
  %10 = load i32*, i32** %4, align 8
  %11 = call i8* @mmc_get_bits(i32* %10, i32 128, i32 120, i32 8)
  %12 = load %struct.mmc_cid*, %struct.mmc_cid** %5, align 8
  %13 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @mmc_get_bits(i32* %14, i32 128, i32 104, i32 8)
  %16 = load %struct.mmc_cid*, %struct.mmc_cid** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %33, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %23, 8
  %25 = sub nsw i32 96, %24
  %26 = call i8* @mmc_get_bits(i32* %22, i32 128, i32 %25, i32 8)
  %27 = load %struct.mmc_cid*, %struct.mmc_cid** %5, align 8
  %28 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %27, i32 0, i32 4
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  store i8* %26, i8** %32, align 8
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load %struct.mmc_cid*, %struct.mmc_cid** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %37, i32 0, i32 4
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 6
  store i8* null, i8** %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @mmc_get_bits(i32* %41, i32 128, i32 48, i32 8)
  %43 = load %struct.mmc_cid*, %struct.mmc_cid** %5, align 8
  %44 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @mmc_get_bits(i32* %45, i32 128, i32 16, i32 32)
  %47 = load %struct.mmc_cid*, %struct.mmc_cid** %5, align 8
  %48 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i8* @mmc_get_bits(i32* %49, i32 128, i32 12, i32 4)
  %51 = load %struct.mmc_cid*, %struct.mmc_cid** %5, align 8
  %52 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i8* @mmc_get_bits(i32* %53, i32 128, i32 8, i32 4)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.mmc_cid*, %struct.mmc_cid** %5, align 8
  %57 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %36
  %61 = load %struct.mmc_cid*, %struct.mmc_cid** %5, align 8
  %62 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 2013
  store i32 %64, i32* %62, align 8
  br label %70

65:                                               ; preds = %36
  %66 = load %struct.mmc_cid*, %struct.mmc_cid** %5, align 8
  %67 = getelementptr inbounds %struct.mmc_cid, %struct.mmc_cid* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1997
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %65, %60
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
