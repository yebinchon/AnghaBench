; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_hexstring_to_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_hexstring_to_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hexstring_to_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexstring_to_bin(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %59, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = udiv i64 %11, 2
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = mul i64 2, %16
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @isxdigit(i8 zeroext %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = mul i64 2, %24
  %26 = add i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @isxdigit(i8 zeroext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %22, %14
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %22
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = mul i64 2, %35
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call zeroext i8 @hexchar_to_byte(i8 zeroext %38)
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 4
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %6, align 1
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = mul i64 2, %44
  %46 = add i64 %45, 1
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call zeroext i8 @hexchar_to_byte(i8 zeroext %48)
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %6, align 1
  %55 = load i8, i8* %6, align 1
  %56 = load i8*, i8** %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 %55, i8* %58, align 1
  br label %59

59:                                               ; preds = %33
  %60 = load i64, i64* %4, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %4, align 8
  br label %9

62:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %31
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @isxdigit(i8 zeroext) #1

declare dso_local zeroext i8 @hexchar_to_byte(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
