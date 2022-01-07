; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_set_mac_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_set_mac_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@MAC_MACA1HR = common dso_local global i32 0, align 4
@AE = common dso_local global i32 0, align 4
@MAC_MACA_INC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i8*, i32*)* @xgbe_set_mac_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_set_mac_reg(%struct.xgbe_prv_data* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %49

12:                                               ; preds = %3
  %13 = bitcast i32* %8 to i8*
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %16, i8* %18, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %21, i8* %23, align 1
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %26, i8* %28, align 1
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  store i8 %31, i8* %33, align 1
  %34 = bitcast i32* %7 to i8*
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %37, i8* %39, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 5
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %42, i8* %44, align 1
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @MAC_MACA1HR, align 4
  %47 = load i32, i32* @AE, align 4
  %48 = call i32 @XGMAC_SET_BITS(i32 %45, i32 %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %12, %3
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %50, i32 %52, i32 %53)
  %55 = load i64, i64* @MAC_MACA_INC, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %58, %55
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %61, i32 %63, i32 %64)
  %66 = load i64, i64* @MAC_MACA_INC, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = zext i32 %68 to i64
  %70 = add nsw i64 %69, %66
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  ret void
}

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
