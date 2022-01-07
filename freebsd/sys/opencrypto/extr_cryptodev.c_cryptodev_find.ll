; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptodev.c_cryptodev_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptodev.c_cryptodev_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_find_op = type { i32, i8* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_find_op*)* @cryptodev_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptodev_find(%struct.crypt_find_op* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypt_find_op*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.crypt_find_op* %0, %struct.crypt_find_op** %3, align 8
  store i64 8, i64* %5, align 8
  %6 = load %struct.crypt_find_op*, %struct.crypt_find_op** %3, align 8
  %7 = getelementptr inbounds %struct.crypt_find_op, %struct.crypt_find_op* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.crypt_find_op*, %struct.crypt_find_op** %3, align 8
  %12 = getelementptr inbounds %struct.crypt_find_op, %struct.crypt_find_op* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @crypto_find_device_byhid(i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %10
  %20 = load %struct.crypt_find_op*, %struct.crypt_find_op** %3, align 8
  %21 = getelementptr inbounds %struct.crypt_find_op, %struct.crypt_find_op* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @device_get_nameunit(i32* %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @strncpy(i8* %22, i32 %24, i64 %25)
  %27 = load %struct.crypt_find_op*, %struct.crypt_find_op** %3, align 8
  %28 = getelementptr inbounds %struct.crypt_find_op, %struct.crypt_find_op* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub i64 %30, 1
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 0, i8* %32, align 1
  br label %53

33:                                               ; preds = %1
  %34 = load %struct.crypt_find_op*, %struct.crypt_find_op** %3, align 8
  %35 = getelementptr inbounds %struct.crypt_find_op, %struct.crypt_find_op* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load %struct.crypt_find_op*, %struct.crypt_find_op** %3, align 8
  %41 = getelementptr inbounds %struct.crypt_find_op, %struct.crypt_find_op* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @crypto_find_driver(i8* %42)
  %44 = load %struct.crypt_find_op*, %struct.crypt_find_op** %3, align 8
  %45 = getelementptr inbounds %struct.crypt_find_op, %struct.crypt_find_op* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.crypt_find_op*, %struct.crypt_find_op** %3, align 8
  %47 = getelementptr inbounds %struct.crypt_find_op, %struct.crypt_find_op* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* @ENOENT, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52, %19
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %17
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32* @crypto_find_device_byhid(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32 @crypto_find_driver(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
