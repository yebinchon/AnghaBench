; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_crlookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_crlookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_find_op = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@CRYPTO_FLAG_SOFTWARE = common dso_local global i32 0, align 4
@CIOCFINDDEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ioctl(CIOCFINDDEV)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @crlookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crlookup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.crypt_find_op, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @strncmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 (...) @enable_user_soft()
  %10 = load i32, i32* @CRYPTO_FLAG_SOFTWARE, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.crypt_find_op, %struct.crypt_find_op* %4, i32 0, i32 0
  store i32 -1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.crypt_find_op, %struct.crypt_find_op* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlcpy(i32 %14, i8* %15, i32 4)
  %17 = call i32 (...) @devcrypto()
  %18 = load i32, i32* @CIOCFINDDEV, align 4
  %19 = call i32 @ioctl(i32 %17, i32 %18, %struct.crypt_find_op* %4)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %11
  %24 = getelementptr inbounds %struct.crypt_find_op, %struct.crypt_find_op* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @enable_user_soft(...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.crypt_find_op*) #1

declare dso_local i32 @devcrypto(...) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
