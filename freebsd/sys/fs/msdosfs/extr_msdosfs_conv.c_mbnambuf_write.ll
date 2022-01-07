; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_mbnambuf_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_mbnambuf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbnambuf = type { i64, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@WIN_CHARS = common dso_local global i32 0, align 4
@WIN_MAXLEN = common dso_local global i64 0, align 8
@MAXNAMLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbnambuf_write(%struct.mbnambuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbnambuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mbnambuf* %0, %struct.mbnambuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mbnambuf*, %struct.mbnambuf** %5, align 8
  %12 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.mbnambuf*, %struct.mbnambuf** %5, align 8
  %18 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = icmp ne i32 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %96

24:                                               ; preds = %15, %3
  %25 = load %struct.mbnambuf*, %struct.mbnambuf** %5, align 8
  %26 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @WIN_CHARS, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %9, align 8
  %35 = load %struct.mbnambuf*, %struct.mbnambuf** %5, align 8
  %36 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @WIN_MAXLEN, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %24
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @MAXNAMLEN, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %24
  %48 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %48, i32* %4, align 4
  br label %96

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* @WIN_CHARS, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %49
  %55 = load %struct.mbnambuf*, %struct.mbnambuf** %5, align 8
  %56 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @WIN_CHARS, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %63, %64
  %66 = load %struct.mbnambuf*, %struct.mbnambuf** %5, align 8
  %67 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %65, %68
  %70 = icmp ugt i64 %69, 8
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %72, i32* %4, align 4
  br label %96

73:                                               ; preds = %59
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* @WIN_CHARS, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load %struct.mbnambuf*, %struct.mbnambuf** %5, align 8
  %82 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @memmove(i8* %76, i8* %80, i64 %83)
  br label %85

85:                                               ; preds = %73, %54, %49
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @memcpy(i8* %86, i8* %87, i64 %88)
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.mbnambuf*, %struct.mbnambuf** %5, align 8
  %92 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.mbnambuf*, %struct.mbnambuf** %5, align 8
  %95 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %85, %71, %47, %22
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
