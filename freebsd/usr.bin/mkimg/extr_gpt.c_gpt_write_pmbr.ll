; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_gpt.c_gpt_write_pmbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_gpt.c_gpt_write_pmbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT32_MAX = common dso_local global i64 0, align 8
@secsz = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSMAGICOFFSET = common dso_local global i32 0, align 4
@DOSMAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @gpt_write_pmbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpt_write_pmbr(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @UINT32_MAX, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @UINT32_MAX, align 8
  br label %17

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = sub nsw i64 %15, 1
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i64 [ %13, %12 ], [ %16, %14 ]
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @secsz, align 8
  %20 = call i32* @malloc(i64 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %3, align 4
  br label %96

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @DOSPARTOFF, align 4
  %32 = call i32 @memcpy(i32* %29, i8* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @DOSPARTOFF, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i64, i64* @secsz, align 8
  %38 = load i32, i32* @DOSPARTOFF, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %37, %39
  %41 = call i32 @memset(i32* %36, i32 0, i64 %40)
  br label %46

42:                                               ; preds = %25
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* @secsz, align 8
  %45 = call i32 @memset(i32* %43, i32 0, i64 %44)
  br label %46

46:                                               ; preds = %42, %28
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @DOSPARTOFF, align 4
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 2, i32* %51, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @DOSPARTOFF, align 4
  %54 = add nsw i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 238, i32* %56, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @DOSPARTOFF, align 4
  %59 = add nsw i32 %58, 5
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 255, i32* %61, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @DOSPARTOFF, align 4
  %64 = add nsw i32 %63, 6
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 255, i32* %66, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @DOSPARTOFF, align 4
  %69 = add nsw i32 %68, 7
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 255, i32* %71, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* @DOSPARTOFF, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  %77 = call i32 @le32enc(i32* %76, i64 1)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @DOSPARTOFF, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = getelementptr inbounds i32, i32* %81, i64 12
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @le32enc(i32* %82, i64 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* @DOSMAGICOFFSET, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* @DOSMAGIC, align 4
  %90 = call i32 @le16enc(i32* %88, i32 %89)
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @image_write(i32 0, i32* %91, i32 1)
  store i32 %92, i32* %8, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @free(i32* %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %46, %23
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @le32enc(i32*, i64) #1

declare dso_local i32 @le16enc(i32*, i32) #1

declare dso_local i32 @image_write(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
