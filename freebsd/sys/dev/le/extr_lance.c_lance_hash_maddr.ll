; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_hash_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_hash_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.lance_hash_maddr_ctx = type { i32*, %struct.lance_softc* }
%struct.lance_softc = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @lance_hash_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_hash_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lance_hash_maddr_ctx*, align 8
  %8 = alloca %struct.lance_softc*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.lance_hash_maddr_ctx*
  store %struct.lance_hash_maddr_ctx* %11, %struct.lance_hash_maddr_ctx** %7, align 8
  %12 = load %struct.lance_hash_maddr_ctx*, %struct.lance_hash_maddr_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.lance_hash_maddr_ctx, %struct.lance_hash_maddr_ctx* %12, i32 0, i32 1
  %14 = load %struct.lance_softc*, %struct.lance_softc** %13, align 8
  store %struct.lance_softc* %14, %struct.lance_softc** %8, align 8
  %15 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %16 = call i32 @LLADDR(%struct.sockaddr_dl* %15)
  %17 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %18 = call i32 @ether_crc32_le(i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = ashr i32 %19, 26
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 15
  %23 = shl i32 1, %22
  %24 = call i32 @LE_HTOLE16(i32 %23)
  %25 = load %struct.lance_hash_maddr_ctx*, %struct.lance_hash_maddr_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.lance_hash_maddr_ctx, %struct.lance_hash_maddr_ctx* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %24
  store i32 %33, i32* %31, align 4
  ret i32 1
}

declare dso_local i32 @ether_crc32_le(i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @LE_HTOLE16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
