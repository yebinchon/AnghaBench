; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptodev.c_cryptoioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptodev.c_cryptoioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.file = type { i32 }
%struct.fcrypt = type { i32, i32 }
%struct.crypt_find_op = type { i32 }

@M_XDATA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@DTYPE_CRYPTO = common dso_local global i32 0, align 4
@cryptofops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @cryptoioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptoioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.fcrypt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %57 [
    i32 128, label %17
    i32 129, label %49
    i32 130, label %53
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* @M_XDATA, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = call %struct.fcrypt* @malloc(i32 8, i32 %18, i32 %19)
  store %struct.fcrypt* %20, %struct.fcrypt** %13, align 8
  %21 = load %struct.fcrypt*, %struct.fcrypt** %13, align 8
  %22 = getelementptr inbounds %struct.fcrypt, %struct.fcrypt* %21, i32 0, i32 1
  %23 = call i32 @TAILQ_INIT(i32* %22)
  %24 = load %struct.fcrypt*, %struct.fcrypt** %13, align 8
  %25 = getelementptr inbounds %struct.fcrypt, %struct.fcrypt* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load %struct.thread*, %struct.thread** %11, align 8
  %27 = call i32 @falloc(%struct.thread* %26, %struct.file** %12, i32* %14, i32 0)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.fcrypt*, %struct.fcrypt** %13, align 8
  %32 = load i32, i32* @M_XDATA, align 4
  %33 = call i32 @free(%struct.fcrypt* %31, i32 %32)
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %6, align 4
  br label %61

35:                                               ; preds = %17
  %36 = load %struct.file*, %struct.file** %12, align 8
  %37 = load i32, i32* @FREAD, align 4
  %38 = load i32, i32* @FWRITE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @DTYPE_CRYPTO, align 4
  %41 = load %struct.fcrypt*, %struct.fcrypt** %13, align 8
  %42 = call i32 @finit(%struct.file* %36, i32 %39, i32 %40, %struct.fcrypt* %41, i32* @cryptofops)
  %43 = load i32, i32* %14, align 4
  %44 = load i64, i64* %9, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32 %43, i32* %45, align 4
  %46 = load %struct.file*, %struct.file** %12, align 8
  %47 = load %struct.thread*, %struct.thread** %11, align 8
  %48 = call i32 @fdrop(%struct.file* %46, %struct.thread* %47)
  br label %59

49:                                               ; preds = %5
  %50 = load i64, i64* %9, align 8
  %51 = inttoptr i64 %50 to %struct.crypt_find_op*
  %52 = call i32 @cryptodev_find(%struct.crypt_find_op* %51)
  store i32 %52, i32* %15, align 4
  br label %59

53:                                               ; preds = %5
  %54 = load i64, i64* %9, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = call i32 @crypto_getfeat(i32* %55)
  store i32 %56, i32* %15, align 4
  br label %59

57:                                               ; preds = %5
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %57, %53, %49, %35
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %30
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.fcrypt* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @falloc(%struct.thread*, %struct.file**, i32*, i32) #1

declare dso_local i32 @free(%struct.fcrypt*, i32) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.fcrypt*, i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @cryptodev_find(%struct.crypt_find_op*) #1

declare dso_local i32 @crypto_getfeat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
