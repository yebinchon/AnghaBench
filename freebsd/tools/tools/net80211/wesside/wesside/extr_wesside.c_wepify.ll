; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_wepify.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_wepify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 }

@prgainfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@Z_NULL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wepify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 0), align 8
  %11 = icmp sle i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 2), align 8
  %16 = call i32 @memcpy(i8* %14, i32 %15, i32 3)
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 3
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  store i8 0, i8* %19, align 1
  %21 = load i8*, i8** @Z_NULL, align 8
  %22 = call i64 @crc32(i64 0, i8* %21, i32 0)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @crc32(i64 %23, i8* %24, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = bitcast i8* %30 to i64*
  store i64* %31, i64** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64*, i64** %6, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %51, %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 1), align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i32
  %49 = xor i32 %48, %44
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %45, align 1
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %34

54:                                               ; preds = %34
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @crc32(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
