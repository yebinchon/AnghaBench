; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_file_trunc.c_do_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_file_trunc.c_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bsize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@fsize = common dso_local global i32 0, align 4
@offset = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ZFS Test Suite Truncation Test\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@rflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"memcmp\00", align 1
@vflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Wrote to offset %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Read back from offset %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load i64, i64* @bsize, align 8
  %7 = call i64 @calloc(i32 1, i64 %6)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %4, align 8
  %9 = load i64, i64* @bsize, align 8
  %10 = call i64 @calloc(i32 1, i64 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %1
  %18 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @exit(i32 4) #3
  unreachable

20:                                               ; preds = %14
  %21 = call i32 (...) @random()
  %22 = load i32, i32* @fsize, align 4
  %23 = srem i32 %21, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i64, i64* @offset, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i64 @lseek(i32 %24, i64 %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @exit(i32 5) #3
  unreachable

35:                                               ; preds = %20
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strcpy(i8* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %2, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* @bsize, align 8
  %41 = call i64 @write(i32 %38, i8* %39, i64 %40)
  %42 = load i64, i64* @bsize, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 @exit(i32 6) #3
  unreachable

47:                                               ; preds = %35
  %48 = load i64, i64* @rflag, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %47
  %51 = load i32, i32* %2, align 4
  %52 = load i64, i64* @offset, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i32, i32* @SEEK_SET, align 4
  %57 = call i64 @lseek(i32 %51, i64 %55, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @exit(i32 7) #3
  unreachable

62:                                               ; preds = %50
  %63 = load i32, i32* %2, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* @bsize, align 8
  %66 = call i64 @read(i32 %63, i8* %64, i64 %65)
  %67 = load i64, i64* @bsize, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %71 = call i32 @exit(i32 8) #3
  unreachable

72:                                               ; preds = %62
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* @bsize, align 8
  %76 = call i64 @memcmp(i8* %73, i8* %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %80 = call i32 @exit(i32 9) #3
  unreachable

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %47
  %83 = load i64, i64* @vflag, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load i32, i32* @stderr, align 4
  %87 = load i64, i64* @offset, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %90)
  %92 = load i64, i64* @rflag, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load i32, i32* @stderr, align 4
  %96 = load i64, i64* @offset, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %94, %85
  br label %102

102:                                              ; preds = %101, %82
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @free(i8* %105)
  ret void
}

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @random(...) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
