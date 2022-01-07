; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_xts.c_aes_xts_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_xts.c_aes_xts_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_xts_ctx = type { i32*, i32 }

@AES_XTS_IVSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*)* @aes_xts_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_xts_reinit(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aes_xts_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to %struct.aes_xts_ctx*
  store %struct.aes_xts_ctx* %9, %struct.aes_xts_ctx** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i64, i64* @AES_XTS_IVSIZE, align 8
  %12 = call i32 @bcopy(i32* %10, i32* %6, i64 %11)
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %27, %2
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @AES_XTS_IVSIZE, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 255
  %20 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %19, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 8
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %17
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %7, align 8
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @AES_XTS_IVSIZE, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i64, i64* @AES_XTS_IVSIZE, align 8
  %37 = call i32 @bzero(i32* %35, i64 %36)
  %38 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %38, i32 0, i32 1
  %40 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @rijndael_encrypt(i32* %39, i32* %42, i32* %45)
  ret void
}

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @bzero(i32*, i64) #1

declare dso_local i32 @rijndael_encrypt(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
