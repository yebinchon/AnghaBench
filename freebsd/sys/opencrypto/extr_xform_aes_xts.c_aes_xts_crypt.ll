; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_xts.c_aes_xts_crypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_xts.c_aes_xts_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_xts_ctx = type { i32*, i32 }

@AES_XTS_BLOCKSIZE = common dso_local global i32 0, align 4
@AES_XTS_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aes_xts_ctx*, i32*, i32)* @aes_xts_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_xts_crypt(%struct.aes_xts_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.aes_xts_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aes_xts_ctx* %0, %struct.aes_xts_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @AES_XTS_BLOCKSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %37, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @AES_XTS_BLOCKSIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %25, %32
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %15, i64 %35
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %44, i32 0, i32 1
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @rijndael_encrypt(i32* %45, i32* %15, i32* %46)
  br label %53

48:                                               ; preds = %40
  %49 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %49, i32 0, i32 1
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @rijndael_decrypt(i32* %50, i32* %15, i32* %51)
  br label %53

53:                                               ; preds = %48, %43
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @AES_XTS_BLOCKSIZE, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, %65
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %54

75:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %109, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @AES_XTS_BLOCKSIZE, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %112

80:                                               ; preds = %76
  %81 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 128
  store i32 %88, i32* %11, align 4
  %89 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 1
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = or i32 %96, %100
  %102 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %4, align 8
  %103 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %80
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %76

112:                                              ; preds = %76
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i32, i32* @AES_XTS_ALPHA, align 4
  %117 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %4, align 8
  %118 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %121, %116
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %115, %112
  %124 = mul nuw i64 4, %13
  %125 = trunc i64 %124 to i32
  %126 = call i32 @bzero(i32* %15, i32 %125)
  %127 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %127)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rijndael_encrypt(i32*, i32*, i32*) #2

declare dso_local i32 @rijndael_decrypt(i32*, i32*, i32*) #2

declare dso_local i32 @bzero(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
