; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_kkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_kkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64* }

@G_BDE_KKEYBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_softc*, i32*, i32, i32)* @g_bde_kkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_bde_kkey(%struct.g_bde_softc* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.g_bde_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [16 x i64], align 16
  %12 = alloca [8 x i64], align 16
  store %struct.g_bde_softc* %0, %struct.g_bde_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @le64enc(i64* %13, i32 %14)
  %16 = call i32 @MD5Init(i64* %10)
  %17 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %18 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i32 @MD5Update(i64* %10, i64* %20, i32 8)
  %22 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %23 = call i32 @MD5Update(i64* %10, i64* %22, i32 64)
  %24 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %25 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 8
  %29 = call i32 @MD5Update(i64* %10, i64* %28, i32 8)
  %30 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 0
  %31 = call i32 @MD5Final(i64* %30, i64* %10)
  %32 = call i32 @MD5Init(i64* %10)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %53, %4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %38 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %40, i64 %44
  %46 = call i32 @MD5Update(i64* %10, i64* %45, i32 1)
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %51 = call i32 @MD5Update(i64* %10, i64* %50, i32 64)
  br label %52

52:                                               ; preds = %49, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %33

56:                                               ; preds = %33
  %57 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %58 = call i32 @bzero(i64* %57, i32 64)
  %59 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 0
  %60 = call i32 @MD5Final(i64* %59, i64* %10)
  %61 = call i32 @bzero(i64* %10, i32 8)
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @G_BDE_KKEYBITS, align 4
  %65 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 0
  %66 = call i32 @AES_makekey(i32* %62, i32 %63, i32 %64, i64* %65)
  %67 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 0
  %68 = call i32 @bzero(i64* %67, i32 128)
  ret void
}

declare dso_local i32 @le64enc(i64*, i32) #1

declare dso_local i32 @MD5Init(i64*) #1

declare dso_local i32 @MD5Update(i64*, i64*, i32) #1

declare dso_local i32 @MD5Final(i64*, i64*) #1

declare dso_local i32 @bzero(i64*, i32) #1

declare dso_local i32 @AES_makekey(i32*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
