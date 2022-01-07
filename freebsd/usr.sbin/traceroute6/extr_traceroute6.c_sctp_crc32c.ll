; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/traceroute6/extr_traceroute6.c_sctp_crc32c.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/traceroute6/extr_traceroute6.c_sctp_crc32c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_crc32c(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %11, align 8
  store i64 -1, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %25, %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CRC32C(i64 %19, i32 %23)
  br label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %14

28:                                               ; preds = %14
  %29 = load i64, i64* %6, align 8
  %30 = xor i64 %29, -1
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i64, i64* %6, align 8
  %35 = lshr i64 %34, 8
  %36 = and i64 %35, 255
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i64, i64* %6, align 8
  %39 = lshr i64 %38, 16
  %40 = and i64 %39, 255
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i64, i64* %6, align 8
  %43 = lshr i64 %42, 24
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 24
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %47, %49
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %50, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %53, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @htonl(i64 %57)
  ret i64 %58
}

declare dso_local i32 @CRC32C(i64, i32) #1

declare dso_local i64 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
