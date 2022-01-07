; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checksum(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %34, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, -2
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = bitcast i32* %20 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @ntohs(i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ugt i32 %28, 65535
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %31, 65535
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 2
  store i32 %36, i32* %8, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ugt i32 %50, 65535
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = sub i32 %53, 65535
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %41
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
