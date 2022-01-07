; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_icm.c_aes_icm_crypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_icm.c_aes_icm_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_icm_ctx = type { i64*, i32, i32 }

@AESICM_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*)* @aes_icm_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_icm_crypt(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aes_icm_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @AESICM_BLOCKSIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i64, i64* %3, align 8
  %14 = inttoptr i64 %13 to %struct.aes_icm_ctx*
  store %struct.aes_icm_ctx* %14, %struct.aes_icm_ctx** %5, align 8
  %15 = load %struct.aes_icm_ctx*, %struct.aes_icm_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.aes_icm_ctx, %struct.aes_icm_ctx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.aes_icm_ctx*, %struct.aes_icm_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.aes_icm_ctx, %struct.aes_icm_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.aes_icm_ctx*, %struct.aes_icm_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.aes_icm_ctx, %struct.aes_icm_ctx* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @rijndaelEncrypt(i32 %17, i32 %20, i64* %23, i32* %12)
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %40, %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @AESICM_BLOCKSIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %12, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, %33
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %25

43:                                               ; preds = %25
  %44 = mul nuw i64 4, %10
  %45 = trunc i64 %44 to i32
  %46 = call i32 @explicit_bzero(i32* %12, i32 %45)
  %47 = load i32, i32* @AESICM_BLOCKSIZE, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %64, %43
  %50 = load i32, i32* %8, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.aes_icm_ctx*, %struct.aes_icm_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.aes_icm_ctx, %struct.aes_icm_ctx* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %67

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %8, align 4
  br label %49

67:                                               ; preds = %62, %49
  %68 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rijndaelEncrypt(i32, i32, i64*, i32*) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
