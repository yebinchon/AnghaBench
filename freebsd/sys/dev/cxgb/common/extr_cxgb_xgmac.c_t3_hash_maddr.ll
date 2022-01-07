; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_hash_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_hash_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.t3_mcaddr_ctx = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EXACT_ADDR_FILTERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.sockaddr_dl*, i64)* @t3_hash_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @t3_hash_maddr(i8* %0, %struct.sockaddr_dl* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.t3_mcaddr_ctx*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.t3_mcaddr_ctx*
  store %struct.t3_mcaddr_ctx* %10, %struct.t3_mcaddr_ctx** %7, align 8
  %11 = load %struct.t3_mcaddr_ctx*, %struct.t3_mcaddr_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @EXACT_ADDR_FILTERS, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.t3_mcaddr_ctx*, %struct.t3_mcaddr_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.t3_mcaddr_ctx*, %struct.t3_mcaddr_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %32 = call i32 @LLADDR(%struct.sockaddr_dl* %31)
  %33 = call i32 @set_addr_filter(%struct.TYPE_2__* %23, i64 %30, i32 %32)
  br label %56

34:                                               ; preds = %3
  %35 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %36 = call i32 @LLADDR(%struct.sockaddr_dl* %35)
  %37 = call i32 @hash_hw_addr(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.t3_mcaddr_ctx*, %struct.t3_mcaddr_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %55

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 32
  %50 = shl i32 1, %49
  %51 = load %struct.t3_mcaddr_ctx*, %struct.t3_mcaddr_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.t3_mcaddr_ctx, %struct.t3_mcaddr_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %40
  br label %56

56:                                               ; preds = %55, %20
  ret i64 1
}

declare dso_local i32 @set_addr_filter(%struct.TYPE_2__*, i64, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @hash_hw_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
