; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cbc_mac.c_AES_CBC_MAC_Final.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cbc_mac.c_AES_CBC_MAC_Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_cbc_mac_ctx = type { i64, i32*, i32*, i32, i32, i32, i32, i32 }

@CCM_CBC_BLOCK_LEN = common dso_local global i32 0, align 4
@AES_CBC_MAC_HASH_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AES_CBC_MAC_Final(i32* %0, %struct.aes_cbc_mac_ctx* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.aes_cbc_mac_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.aes_cbc_mac_ctx* %1, %struct.aes_cbc_mac_ctx** %4, align 8
  %8 = load i32, i32* @CCM_CBC_BLOCK_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %18 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @xor_and_encrypt(%struct.aes_cbc_mac_ctx* %17, i32* %20, i32* %23)
  %25 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  %34 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @explicit_bzero(i32* %38, i32 8)
  br label %40

40:                                               ; preds = %16, %2
  %41 = mul nuw i64 4, %9
  %42 = trunc i64 %41 to i32
  %43 = call i32 @bzero(i32* %11, i32 %42)
  %44 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 15, %46
  %48 = sub nsw i32 %47, 1
  %49 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %48, i32* %49, align 16
  %50 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds i32, i32* %11, i64 1
  %54 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @bcopy(i32 %52, i32* %53, i32 %56)
  %58 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @rijndaelEncrypt(i32 %60, i32 %63, i32* %11, i32* %11)
  store i64 0, i64* %7, align 8
  br label %65

65:                                               ; preds = %83, %40
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @AES_CBC_MAC_HASH_LEN, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i32, i32* %11, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %75, %78
  %80 = load i32*, i32** %3, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %69
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %65

86:                                               ; preds = %65
  %87 = mul nuw i64 4, %9
  %88 = trunc i64 %87 to i32
  %89 = call i32 @explicit_bzero(i32* %11, i32 %88)
  %90 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %90)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xor_and_encrypt(%struct.aes_cbc_mac_ctx*, i32*, i32*) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #2

declare dso_local i32 @rijndaelEncrypt(i32, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
