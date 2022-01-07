; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_winSlotCnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_winSlotCnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8**, i64*, i8**, i64*)* }
%struct.msdosfsmount = type { i32, i32 }

@WIN_MAXLEN = common dso_local global i32 0, align 4
@MSDOSFSMNT_KICONV = common dso_local global i32 0, align 4
@msdosfs_iconv = common dso_local global %struct.TYPE_2__* null, align 8
@WIN_CHARS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @winSlotCnt(i32* %0, i64 %1, %struct.msdosfsmount* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.msdosfsmount*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.msdosfsmount* %2, %struct.msdosfsmount** %7, align 8
  %13 = load i32, i32* @WIN_MAXLEN, align 4
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @winLenFixup(i32* %19, i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %23 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MSDOSFSMNT_KICONV, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i32, i32* @WIN_MAXLEN, align 4
  %33 = mul nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  store i8* %18, i8** %11, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i32, i8**, i64*, i8**, i64*)*, i32 (i32, i8**, i64*, i8**, i64*)** %36, align 8
  %38 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %39 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = bitcast i32** %5 to i8**
  %42 = call i32 %37(i32 %40, i8** %41, i64* %6, i8** %11, i64* %8)
  %43 = load i64, i64* %6, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %64

46:                                               ; preds = %31
  %47 = load i32, i32* @WIN_MAXLEN, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = udiv i64 %49, 2
  %51 = sub i64 %48, %50
  %52 = load i32, i32* @WIN_CHARS, align 4
  %53 = call i32 @howmany(i64 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %64

54:                                               ; preds = %28, %3
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* @WIN_MAXLEN, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %64

60:                                               ; preds = %54
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* @WIN_CHARS, align 4
  %63 = call i32 @howmany(i64 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %60, %59, %46, %45
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @winLenFixup(i32*, i64) #2

declare dso_local i32 @howmany(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
