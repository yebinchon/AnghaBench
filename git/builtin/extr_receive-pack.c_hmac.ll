; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_hmac.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 (i8*, i32*)*, i32 (i32*, i8*, i32)*, i32 (i32*)* }

@GIT_MAX_BLKSZ = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i8*, i64)* @hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hmac(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i32, i32* @GIT_MAX_BLKSZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @GIT_MAX_BLKSZ, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = load i32, i32* @GIT_MAX_BLKSZ, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %27 = load i32, i32* @GIT_MAX_BLKSZ, align 4
  %28 = call i32 @memset(i8* %20, i8 signext 0, i32 %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %5
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32 (i32*)*, i32 (i32*)** %36, align 8
  %38 = call i32 %37(i32* %16)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 %41(i32* %16, i8* %42, i32 %44)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %47, align 8
  %49 = call i32 %48(i8* %20, i32* %16)
  br label %54

50:                                               ; preds = %5
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @memcpy(i8* %20, i8* %51, i64 %52)
  br label %54

54:                                               ; preds = %50, %34
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %80, %54
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, %18
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %20, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = xor i32 %64, 54
  %66 = trunc i32 %65 to i8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %23, i64 %68
  store i8 %66, i8* %69, align 1
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %20, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = xor i32 %74, 92
  %76 = trunc i32 %75 to i8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %26, i64 %78
  store i8 %76, i8* %79, align 1
  br label %80

80:                                               ; preds = %59
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %55

83:                                               ; preds = %55
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  %86 = load i32 (i32*)*, i32 (i32*)** %85, align 8
  %87 = call i32 %86(i32* %16)
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %89, align 8
  %91 = trunc i64 %22 to i32
  %92 = call i32 %90(i32* %16, i8* %23, i32 %91)
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %94, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %10, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 %95(i32* %16, i8* %96, i32 %98)
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %101, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 %102(i8* %103, i32* %16)
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  %107 = load i32 (i32*)*, i32 (i32*)** %106, align 8
  %108 = call i32 %107(i32* %16)
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %110, align 8
  %112 = trunc i64 %25 to i32
  %113 = call i32 %111(i32* %16, i8* %26, i32 %112)
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %115, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 %116(i32* %16, i8* %117, i32 %120)
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %123, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 %124(i8* %125, i32* %16)
  %127 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %127)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
