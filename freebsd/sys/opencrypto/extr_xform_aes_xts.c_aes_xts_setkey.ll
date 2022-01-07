; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_xts.c_aes_xts_setkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_xts.c_aes_xts_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_xts_ctx = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_CRYPTO_DATA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32)* @aes_xts_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_xts_setkey(i32** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aes_xts_ctx*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 32
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 64
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %48

16:                                               ; preds = %11, %3
  %17 = load i32, i32* @M_CRYPTO_DATA, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i32* @KMALLOC(i32 8, i32 %17, i32 %20)
  %22 = load i32**, i32*** %5, align 8
  store i32* %21, i32** %22, align 8
  %23 = load i32**, i32*** %5, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %4, align 4
  br label %48

28:                                               ; preds = %16
  %29 = load i32**, i32*** %5, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast i32* %30 to %struct.aes_xts_ctx*
  store %struct.aes_xts_ctx* %31, %struct.aes_xts_ctx** %8, align 8
  %32 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %32, i32 0, i32 1
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 4
  %37 = call i32 @rijndael_set_key(i32* %33, i32* %34, i32 %36)
  %38 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %38, i32 0, i32 0
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 4
  %47 = call i32 @rijndael_set_key(i32* %39, i32* %44, i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %28, %26, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32* @KMALLOC(i32, i32, i32) #1

declare dso_local i32 @rijndael_set_key(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
