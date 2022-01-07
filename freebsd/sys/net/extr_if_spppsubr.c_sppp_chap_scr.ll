; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_chap_scr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_chap_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sppp = type { %struct.TYPE_2__, i64*, i64* }
%struct.TYPE_2__ = type { i32, i64 }

@AUTHKEYLEN = common dso_local global i64 0, align 8
@IDX_CHAP = common dso_local global i64 0, align 8
@chap = common dso_local global i32 0, align 4
@CHAP_CHALLENGE = common dso_local global i32 0, align 4
@AUTHNAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sppp*)* @sppp_chap_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sppp_chap_scr(%struct.sppp* %0) #0 {
  %2 = alloca %struct.sppp*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store %struct.sppp* %0, %struct.sppp** %2, align 8
  %5 = load %struct.sppp*, %struct.sppp** %2, align 8
  %6 = getelementptr inbounds %struct.sppp, %struct.sppp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @arc4random_buf(i32* %10, i32 16)
  %12 = load i64, i64* @AUTHKEYLEN, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.sppp*, %struct.sppp** %2, align 8
  %14 = getelementptr inbounds %struct.sppp, %struct.sppp* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @IDX_CHAP, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.sppp*, %struct.sppp** %2, align 8
  %21 = getelementptr inbounds %struct.sppp, %struct.sppp* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @IDX_CHAP, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %19, i64* %24, align 8
  %25 = load %struct.sppp*, %struct.sppp** %2, align 8
  %26 = load i32, i32* @CHAP_CHALLENGE, align 4
  %27 = load %struct.sppp*, %struct.sppp** %2, align 8
  %28 = getelementptr inbounds %struct.sppp, %struct.sppp* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @IDX_CHAP, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = bitcast i64* %4 to i8*
  %34 = load i64, i64* @AUTHKEYLEN, align 8
  %35 = load %struct.sppp*, %struct.sppp** %2, align 8
  %36 = getelementptr inbounds %struct.sppp, %struct.sppp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sppp*, %struct.sppp** %2, align 8
  %40 = getelementptr inbounds %struct.sppp, %struct.sppp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @AUTHNAMELEN, align 4
  %44 = call i64 @sppp_strnlen(i32 %42, i32 %43)
  %45 = load %struct.sppp*, %struct.sppp** %2, align 8
  %46 = getelementptr inbounds %struct.sppp, %struct.sppp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sppp_auth_send(i32* @chap, %struct.sppp* %25, i32 %26, i64 %32, i32 8, i8* %33, i64 %34, i64 %38, i64 %44, i32 %48, i32 0)
  ret void
}

declare dso_local i32 @arc4random_buf(i32*, i32) #1

declare dso_local i32 @sppp_auth_send(i32*, %struct.sppp*, i32, i64, i32, i8*, i64, i64, i64, i32, i32) #1

declare dso_local i64 @sppp_strnlen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
