; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_generate_ccm_b0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_generate_ccm_b0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptodesc = type { i32 }

@CCM_B0_SIZE = common dso_local global i32 0, align 4
@CCM_CBC_BLOCK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cryptodesc*, %struct.cryptodesc*, i32, i8*, i8*)* @generate_ccm_b0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_ccm_b0(%struct.cryptodesc* %0, %struct.cryptodesc* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.cryptodesc*, align 8
  %7 = alloca %struct.cryptodesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cryptodesc* %0, %struct.cryptodesc** %6, align 8
  store %struct.cryptodesc* %1, %struct.cryptodesc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* @CCM_B0_SIZE, align 4
  %16 = call i32 @memcpy(i8* %13, i8* %14, i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 %17, 2
  %19 = sdiv i32 %18, 2
  %20 = shl i32 %19, 3
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = or i32 %24, %20
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %22, align 1
  %27 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %28 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %49, %5
  %31 = load i32, i32* %11, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @CCM_CBC_BLOCK_LEN, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8 %39, i8* %46, align 1
  %47 = load i32, i32* %12, align 4
  %48 = ashr i32 %47, 8
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %30

52:                                               ; preds = %30
  %53 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %54 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = or i32 %61, 64
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 1
  %64 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %65 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 @htobe16(i64 %67)
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* @CCM_B0_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = bitcast i8* %72 to i32*
  store i32 %68, i32* %73, align 4
  br label %74

74:                                               ; preds = %57, %52
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @htobe16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
