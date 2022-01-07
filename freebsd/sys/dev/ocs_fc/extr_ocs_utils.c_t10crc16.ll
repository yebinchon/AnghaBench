; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_t10crc16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_t10crc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crctable = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @t10crc16(i8* %0, i64 %1, i16 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i16 %2, i16* %6, align 2
  %7 = load i64, i64* %5, align 8
  %8 = icmp ugt i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %14, %9
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %5, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i16*, i16** @crctable, align 8
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  %18 = ashr i32 %17, 8
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  %21 = load i8, i8* %19, align 1
  %22 = zext i8 %21 to i32
  %23 = xor i32 %18, %22
  %24 = sext i32 %23 to i64
  %25 = and i64 %24, 255
  %26 = getelementptr inbounds i16, i16* %15, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* %6, align 2
  %30 = zext i16 %29 to i32
  %31 = shl i32 %30, 8
  %32 = xor i32 %28, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %6, align 2
  br label %10

34:                                               ; preds = %10
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i16, i16* %6, align 2
  ret i16 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
