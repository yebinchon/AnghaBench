; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_sha256_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_sha256_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"fdopen\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fread\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sha256_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha256_fd(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  store i32 -1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i64 0, i64* %10, align 8
  store i32 1, i32* %11, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @dup(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 @warnx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %57

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = call i32* @fdopen(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %57

37:                                               ; preds = %31
  %38 = call i32 @SHA256_Init(i32* %12)
  br label %39

39:                                               ; preds = %44, %37
  %40 = load i32, i32* @BUFSIZ, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @fread(i8* %20, i32 1, i32 %40, i32* %41)
  store i64 %42, i64* %10, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @SHA256_Update(i32* %12, i8* %20, i64 %45)
  br label %39

47:                                               ; preds = %39
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @ferror(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @warnx(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %57

53:                                               ; preds = %47
  %54 = call i32 @SHA256_Final(i8* %23, i32* %12)
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @sha256_hash(i8* %23, i8* %55)
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %51, %35, %29
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @fclose(i32* %61)
  br label %70

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @close(i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %60
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @SEEK_SET, align 4
  %73 = call i32 @lseek(i32 %71, i32 0, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dup(i32) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @SHA256_Init(i32*) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @SHA256_Update(i32*, i8*, i64) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @SHA256_Final(i8*, i32*) #2

declare dso_local i32 @sha256_hash(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
