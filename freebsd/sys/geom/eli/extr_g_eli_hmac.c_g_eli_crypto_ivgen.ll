; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_hmac.c_g_eli_crypto_ivgen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_hmac.c_g_eli_crypto_ivgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_eli_softc = type { i32, i32, i64 }

@G_ELI_FLAG_NATIVE_BYTE_ORDER = common dso_local global i32 0, align 4
@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_eli_crypto_ivgen(%struct.g_eli_softc* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.g_eli_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [8 x i64], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.g_eli_softc* %0, %struct.g_eli_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %14 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @G_ELI_FLAG_NATIVE_BYTE_ORDER, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 0
  %21 = call i32 @bcopy(i64* %6, i64* %20, i32 64)
  br label %27

22:                                               ; preds = %4
  %23 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 0
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @le64enc(i64* %23, i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %29 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %40 [
    i32 128, label %31
  ]

31:                                               ; preds = %27
  %32 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 0
  %33 = load i64*, i64** %7, align 8
  %34 = call i32 @bcopy(i64* %32, i64* %33, i32 64)
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 64
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %37, 64
  %39 = call i32 @bzero(i64* %36, i64 %38)
  br label %58

40:                                               ; preds = %27
  %41 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %10, align 8
  %44 = alloca i64, i64 %42, align 16
  store i64 %42, i64* %11, align 8
  %45 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %46 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %45, i32 0, i32 2
  %47 = call i32 @bcopy(i64* %46, i64* %12, i32 8)
  %48 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 0
  %49 = call i32 @SHA256_Update(i64* %12, i64* %48, i32 64)
  %50 = call i32 @SHA256_Final(i64* %44, i64* %12)
  %51 = load i64*, i64** %7, align 8
  %52 = mul nuw i64 8, %42
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @MIN(i32 %53, i64 %54)
  %56 = call i32 @bcopy(i64* %44, i64* %51, i32 %55)
  %57 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %57)
  br label %58

58:                                               ; preds = %40, %31
  ret void
}

declare dso_local i32 @bcopy(i64*, i64*, i32) #1

declare dso_local i32 @le64enc(i64*, i32) #1

declare dso_local i32 @bzero(i64*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SHA256_Update(i64*, i64*, i32) #1

declare dso_local i32 @SHA256_Final(i64*, i64*) #1

declare dso_local i32 @MIN(i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
