; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_mapsearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_mapsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_ext2fs = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NBBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ext2_mapsearch: map corrupted: start=%d, len=%d, fs=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.m_ext2fs*, i8*, i64)* @ext2_mapsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2_mapsearch(%struct.m_ext2fs* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.m_ext2fs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.m_ext2fs* %0, %struct.m_ext2fs** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @dtogd(%struct.m_ext2fs* %13, i64 %14)
  %16 = load i32, i32* @NBBY, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %8, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %12
  %20 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %21 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NBBY, align 4
  %26 = call i32 @howmany(i32 %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @memcchr(i8* %32, i32 255, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* %9, align 4
  %45 = call i8* @memcchr(i8* %43, i32 255, i32 %44)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %52 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @panic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %48, %37
  br label %56

56:                                               ; preds = %55, %19
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = load i32, i32* @NBBY, align 4
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %61, %63
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = xor i32 %67, -1
  %69 = trunc i32 %68 to i8
  %70 = call i64 @ffs(i8 signext %69)
  %71 = add nsw i64 %64, %70
  %72 = sub nsw i64 %71, 1
  ret i64 %72
}

declare dso_local i32 @dtogd(%struct.m_ext2fs*, i64) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i8* @memcchr(i8*, i32, i32) #1

declare dso_local i32 @panic(i8*, i32, i32, i32) #1

declare dso_local i64 @ffs(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
