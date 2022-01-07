; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_icm.c_aes_icm_setkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_icm.c_aes_icm_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_icm_ctx = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_CRYPTO_DATA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32)* @aes_icm_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_icm_setkey(i32** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aes_icm_ctx*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 16
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 24
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %14, %11, %3
  %20 = load i32, i32* @M_CRYPTO_DATA, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call i32* @KMALLOC(i32 8, i32 %20, i32 %23)
  %25 = load i32**, i32*** %5, align 8
  store i32* %24, i32** %25, align 8
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %19
  %32 = load i32**, i32*** %5, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to %struct.aes_icm_ctx*
  store %struct.aes_icm_ctx* %34, %struct.aes_icm_ctx** %8, align 8
  %35 = load %struct.aes_icm_ctx*, %struct.aes_icm_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.aes_icm_ctx, %struct.aes_icm_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 8
  %41 = call i32 @rijndaelKeySetupEnc(i32 %37, i32* %38, i32 %40)
  %42 = load %struct.aes_icm_ctx*, %struct.aes_icm_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.aes_icm_ctx, %struct.aes_icm_ctx* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %31, %29, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32* @KMALLOC(i32, i32, i32) #1

declare dso_local i32 @rijndaelKeySetupEnc(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
