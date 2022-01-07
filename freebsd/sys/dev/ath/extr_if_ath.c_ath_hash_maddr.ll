; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_hash_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_hash_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @ath_hash_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_hash_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %14 = call i8* @LLADDR(%struct.sockaddr_dl* %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = call i32 @le32dec(i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 18
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 12
  %22 = xor i32 %19, %21
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 6
  %25 = xor i32 %22, %24
  %26 = load i32, i32* %7, align 4
  %27 = xor i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = call i32 @le32dec(i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 18
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 12
  %35 = xor i32 %32, %34
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 6
  %38 = xor i32 %35, %37
  %39 = load i32, i32* %7, align 4
  %40 = xor i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = xor i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 63
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = srem i32 %45, 32
  %47 = shl i32 1, %46
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sdiv i32 %49, 32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %47
  store i32 %54, i32* %52, align 4
  ret i32 1
}

declare dso_local i8* @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @le32dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
