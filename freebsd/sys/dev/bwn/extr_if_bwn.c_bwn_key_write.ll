; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_key_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_key_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i64 }

@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_SHARED_KEYIDX_BLOCK = common dso_local global i64 0, align 8
@BWN_SEC_KEYSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, i32, i32*)* @bwn_key_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_key_write(%struct.bwn_mac* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @BWN_SEC_KEY2FW(%struct.bwn_mac* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %17 = load i32, i32* @BWN_SHARED, align 4
  %18 = load i64, i64* @BWN_SHARED_KEYIDX_BLOCK, align 8
  %19 = load i32, i32* %11, align 4
  %20 = mul nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = load i32, i32* %11, align 4
  %24 = shl i32 %23, 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %16, i32 %17, i64 %22, i32 %26)
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %29 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BWN_SEC_KEYSIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  store i64 %35, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %63, %4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @BWN_SEC_KEYSIZE, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %56 = load i32, i32* @BWN_SHARED, align 4
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %55, i32 %56, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %40
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 2
  store i32 %65, i32* %9, align 4
  br label %36

66:                                               ; preds = %36
  ret void
}

declare dso_local i32 @BWN_SEC_KEY2FW(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
