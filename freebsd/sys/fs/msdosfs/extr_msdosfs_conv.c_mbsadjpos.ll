; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_mbsadjpos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_mbsadjpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i8**, i64*, i8**, i64*)* }

@MSDOSFSMNT_KICONV = common dso_local global i32 0, align 4
@msdosfs_iconv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, i64, i32, i32, i8*)* @mbsadjpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbsadjpos(i8** %0, i64 %1, i64 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %18, %20
  %22 = add i64 %21, 1
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @MSDOSFSMNT_KICONV, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %6
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  store i8* %24, i8** %14, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %10, align 8
  %36 = mul i64 %35, %34
  store i64 %36, i64* %10, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i8*, i8**, i64*, i8**, i64*)*, i32 (i8*, i8**, i64*, i8**, i64*)** %38, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i8**, i8*** %8, align 8
  %42 = call i32 %39(i8* %40, i8** %41, i64* %9, i8** %14, i64* %10)
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %60

45:                                               ; preds = %29, %6
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @min(i64 %46, i64 %47)
  %49 = load i8**, i8*** %8, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %49, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @min(i64 %54, i64 %55)
  %57 = sext i32 %56 to i64
  %58 = sub i64 %53, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %60

60:                                               ; preds = %45, %32
  %61 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @min(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
