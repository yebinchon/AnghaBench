; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_mktree.c_crtfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_mktree.c_crtfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"0123456789ABCDF\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"open(%s, O_CREAT|O_RDWR, 0777) failed.\0A[%d]: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"write(fd, pbuf, 1024) failed.\0A[%d]: %s.\0A\00", align 1
@O_XATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @crtfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crtfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %1
  store i32 1024, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @valloc(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %39, %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sdiv i32 %20, %22
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = mul nsw i32 %26, %28
  store i32 %29, i32* %9, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @snprintf(i8* %33, i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load i8*, i8** %2, align 8
  %44 = load i32, i32* @O_CREAT, align 4
  %45 = load i32, i32* @O_RDWR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @open(i8* %43, i32 %46, i32 511)
  store i32 %47, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** %2, align 8
  %52 = load i32, i32* @errno, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 %52, i8* %54)
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @exit(i32 %56) #3
  unreachable

58:                                               ; preds = %42
  %59 = load i32, i32* %3, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @write(i32 %59, i8* %60, i32 1024)
  %62 = icmp slt i32 %61, 1024
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* @stderr, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i8* @strerror(i32 %66)
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %65, i8* %67)
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 @exit(i32 %69) #3
  unreachable

71:                                               ; preds = %58
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @free(i8* %74)
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i64 @valloc(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
