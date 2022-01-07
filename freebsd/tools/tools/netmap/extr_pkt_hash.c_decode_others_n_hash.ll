; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_decode_others_n_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_decode_others_n_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_header = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ether_header*, i64)* @decode_others_n_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_others_n_hash(%struct.ether_header* %0, i64 %1) #0 {
  %3 = alloca %struct.ether_header*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ether_header* %0, %struct.ether_header** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ether_header*, %struct.ether_header** %3, align 8
  %9 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ether_header*, %struct.ether_header** %3, align 8
  %14 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 8
  %19 = or i32 %12, %18
  %20 = load %struct.ether_header*, %struct.ether_header** %3, align 8
  %21 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 16
  %26 = or i32 %19, %25
  %27 = load %struct.ether_header*, %struct.ether_header** %3, align 8
  %28 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 24
  %33 = or i32 %26, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ether_header*, %struct.ether_header** %3, align 8
  %35 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ether_header*, %struct.ether_header** %3, align 8
  %40 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %38, %44
  %46 = load %struct.ether_header*, %struct.ether_header** %3, align 8
  %47 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 16
  %52 = or i32 %45, %51
  %53 = load %struct.ether_header*, %struct.ether_header** %3, align 8
  %54 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 24
  %59 = or i32 %52, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ntohl(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ntohl(i32 %62)
  %64 = call i64 @ntohs(i32 65533)
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i64 @ntohs(i32 65534)
  %68 = load i64, i64* %4, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @sym_hash_fn(i32 %61, i32 %63, i64 %66, i64 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @sym_hash_fn(i32, i32, i64, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
