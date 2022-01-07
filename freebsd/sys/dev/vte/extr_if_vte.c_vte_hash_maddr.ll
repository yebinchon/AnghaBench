; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_hash_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_hash_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.vte_maddr_ctx = type { i64, i32**, i32* }

@VTE_RXFILT_PERFECT_CNT = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @vte_hash_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vte_hash_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vte_maddr_ctx*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.vte_maddr_ctx*
  store %struct.vte_maddr_ctx* %12, %struct.vte_maddr_ctx** %8, align 8
  %13 = load %struct.vte_maddr_ctx*, %struct.vte_maddr_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VTE_RXFILT_PERFECT_CNT, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %3
  %19 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %20 = call i32* @LLADDR(%struct.sockaddr_dl* %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = load %struct.vte_maddr_ctx*, %struct.vte_maddr_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.vte_maddr_ctx*, %struct.vte_maddr_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %28, i32* %37, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  %46 = load %struct.vte_maddr_ctx*, %struct.vte_maddr_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = load %struct.vte_maddr_ctx*, %struct.vte_maddr_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %45, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  %63 = load %struct.vte_maddr_ctx*, %struct.vte_maddr_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load %struct.vte_maddr_ctx*, %struct.vte_maddr_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32*, i32** %65, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %62, i32* %71, align 4
  %72 = load %struct.vte_maddr_ctx*, %struct.vte_maddr_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  store i32 1, i32* %4, align 4
  br label %94

76:                                               ; preds = %3
  %77 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %78 = call i32* @LLADDR(%struct.sockaddr_dl* %77)
  %79 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %80 = call i32 @ether_crc32_be(i32* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = ashr i32 %81, 26
  %83 = and i32 %82, 15
  %84 = shl i32 1, %83
  %85 = load %struct.vte_maddr_ctx*, %struct.vte_maddr_ctx** %8, align 8
  %86 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = ashr i32 %88, 30
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %84
  store i32 %93, i32* %91, align 4
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %76, %18
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32* @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @ether_crc32_be(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
