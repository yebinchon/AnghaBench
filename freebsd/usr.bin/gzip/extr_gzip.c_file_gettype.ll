; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_file_gettype.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_file_gettype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GZIP_MAGIC0 = common dso_local global i8 0, align 1
@GZIP_MAGIC1 = common dso_local global i8 0, align 1
@GZIP_OMAGIC1 = common dso_local global i8 0, align 1
@FT_GZIP = common dso_local global i32 0, align 4
@BZIP2_MAGIC = common dso_local global i32 0, align 4
@FT_BZIP2 = common dso_local global i32 0, align 4
@Z_MAGIC = common dso_local global i32 0, align 4
@FT_Z = common dso_local global i32 0, align 4
@PACK_MAGIC = common dso_local global i32 0, align 4
@FT_PACK = common dso_local global i32 0, align 4
@XZ_MAGIC = common dso_local global i32 0, align 4
@FT_XZ = common dso_local global i32 0, align 4
@LZ_MAGIC = common dso_local global i32 0, align 4
@FT_LZ = common dso_local global i32 0, align 4
@FT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @file_gettype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_gettype(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = load i8, i8* @GZIP_MAGIC0, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @GZIP_MAGIC1, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @GZIP_OMAGIC1, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19, %11
  %28 = load i32, i32* @FT_GZIP, align 4
  store i32 %28, i32* %2, align 4
  br label %78

29:                                               ; preds = %19, %1
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @BZIP2_MAGIC, align 4
  %32 = call i64 @memcmp(i8* %30, i32 %31, i32 3)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %38, 48
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 %44, 57
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @FT_BZIP2, align 4
  store i32 %47, i32* %2, align 4
  br label %78

48:                                               ; preds = %40, %34, %29
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* @Z_MAGIC, align 4
  %51 = call i64 @memcmp(i8* %49, i32 %50, i32 2)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @FT_Z, align 4
  store i32 %54, i32* %2, align 4
  br label %78

55:                                               ; preds = %48
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* @PACK_MAGIC, align 4
  %58 = call i64 @memcmp(i8* %56, i32 %57, i32 2)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @FT_PACK, align 4
  store i32 %61, i32* %2, align 4
  br label %78

62:                                               ; preds = %55
  %63 = load i8*, i8** %3, align 8
  %64 = load i32, i32* @XZ_MAGIC, align 4
  %65 = call i64 @memcmp(i8* %63, i32 %64, i32 4)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @FT_XZ, align 4
  store i32 %68, i32* %2, align 4
  br label %78

69:                                               ; preds = %62
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* @LZ_MAGIC, align 4
  %72 = call i64 @memcmp(i8* %70, i32 %71, i32 4)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @FT_LZ, align 4
  store i32 %75, i32* %2, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @FT_UNKNOWN, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %74, %67, %60, %53, %46, %27
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
