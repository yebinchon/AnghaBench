; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_hmac.c_g_eli_crypto_hmac_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_hmac.c_g_eli_crypto_hmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmac_ctx = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_eli_crypto_hmac_init(%struct.hmac_ctx* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.hmac_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [128 x i32], align 16
  %8 = alloca [128 x i32], align 16
  %9 = alloca [128 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hmac_ctx* %0, %struct.hmac_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %13 = call i32 @bzero(i32* %12, i32 512)
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %33

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp ule i64 %18, 128
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @bcopy(i8* %21, i32* %22, i64 %23)
  br label %32

25:                                               ; preds = %17
  %26 = call i32 @SHA512_Init(i32* %10)
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 (i32*, ...) @SHA512_Update(i32* %10, i8* %27, i64 %28)
  %30 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %31 = call i32 @SHA512_Final(i32* %30, i32* %10)
  br label %32

32:                                               ; preds = %25, %20
  br label %33

33:                                               ; preds = %32, %16
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 512
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, 54
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %50, 92
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %34

58:                                               ; preds = %34
  %59 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %60 = call i32 @explicit_bzero(i32* %59, i32 512)
  %61 = load %struct.hmac_ctx*, %struct.hmac_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %61, i32 0, i32 1
  %63 = call i32 @SHA512_Init(i32* %62)
  %64 = load %struct.hmac_ctx*, %struct.hmac_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %64, i32 0, i32 1
  %66 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %67 = call i32 (i32*, ...) @SHA512_Update(i32* %65, i32* %66, i64 512)
  %68 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %69 = call i32 @explicit_bzero(i32* %68, i32 512)
  %70 = load %struct.hmac_ctx*, %struct.hmac_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %70, i32 0, i32 0
  %72 = call i32 @SHA512_Init(i32* %71)
  %73 = load %struct.hmac_ctx*, %struct.hmac_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %73, i32 0, i32 0
  %75 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %76 = call i32 (i32*, ...) @SHA512_Update(i32* %74, i32* %75, i64 512)
  %77 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %78 = call i32 @explicit_bzero(i32* %77, i32 512)
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i8*, i32*, i64) #1

declare dso_local i32 @SHA512_Init(i32*) #1

declare dso_local i32 @SHA512_Update(i32*, ...) #1

declare dso_local i32 @SHA512_Final(i32*, i32*) #1

declare dso_local i32 @explicit_bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
