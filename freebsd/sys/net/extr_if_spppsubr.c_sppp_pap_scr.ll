; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_pap_scr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_pap_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sppp = type { %struct.TYPE_2__, i64*, i64* }
%struct.TYPE_2__ = type { i32, i32 }

@IDX_PAP = common dso_local global i64 0, align 8
@AUTHKEYLEN = common dso_local global i32 0, align 4
@AUTHNAMELEN = common dso_local global i32 0, align 4
@pap = common dso_local global i32 0, align 4
@PAP_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sppp*)* @sppp_pap_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sppp_pap_scr(%struct.sppp* %0) #0 {
  %2 = alloca %struct.sppp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sppp* %0, %struct.sppp** %2, align 8
  %5 = load %struct.sppp*, %struct.sppp** %2, align 8
  %6 = getelementptr inbounds %struct.sppp, %struct.sppp* %5, i32 0, i32 2
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @IDX_PAP, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.sppp*, %struct.sppp** %2, align 8
  %13 = getelementptr inbounds %struct.sppp, %struct.sppp* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @IDX_PAP, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 %11, i64* %16, align 8
  %17 = load %struct.sppp*, %struct.sppp** %2, align 8
  %18 = getelementptr inbounds %struct.sppp, %struct.sppp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AUTHKEYLEN, align 4
  %22 = call i64 @sppp_strnlen(i32 %20, i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load %struct.sppp*, %struct.sppp** %2, align 8
  %24 = getelementptr inbounds %struct.sppp, %struct.sppp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AUTHNAMELEN, align 4
  %28 = call i64 @sppp_strnlen(i32 %26, i32 %27)
  store i64 %28, i64* %3, align 8
  %29 = load %struct.sppp*, %struct.sppp** %2, align 8
  %30 = load i32, i32* @PAP_REQ, align 4
  %31 = load %struct.sppp*, %struct.sppp** %2, align 8
  %32 = getelementptr inbounds %struct.sppp, %struct.sppp* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @IDX_PAP, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = bitcast i64* %3 to i8*
  %38 = load i64, i64* %3, align 8
  %39 = load %struct.sppp*, %struct.sppp** %2, align 8
  %40 = getelementptr inbounds %struct.sppp, %struct.sppp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = bitcast i64* %4 to i8*
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.sppp*, %struct.sppp** %2, align 8
  %46 = getelementptr inbounds %struct.sppp, %struct.sppp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sppp_auth_send(i32* @pap, %struct.sppp* %29, i32 %30, i64 %36, i32 8, i8* %37, i64 %38, i32 %42, i32 8, i8* %43, i64 %44, i32 %48, i32 0)
  ret void
}

declare dso_local i64 @sppp_strnlen(i32, i32) #1

declare dso_local i32 @sppp_auth_send(i32*, %struct.sppp*, i32, i64, i32, i8*, i64, i32, i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
