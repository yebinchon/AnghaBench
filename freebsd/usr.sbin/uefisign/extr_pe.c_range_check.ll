; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_range_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_range_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"%s starts at negative offset %jd\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s starts at %jd, past the end of executable at %zd\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s size %zd is larger than the executable size %zd\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"%s extends to %jd, past the end of executable at %zd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range_check(%struct.executable* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.executable*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.executable* %0, %struct.executable** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ult i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i8*, i8** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 (i32, i8*, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %12, i64 %13)
  br label %15

15:                                               ; preds = %11, %4
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.executable*, %struct.executable** %5, align 8
  %18 = getelementptr inbounds %struct.executable, %struct.executable* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.executable*, %struct.executable** %5, align 8
  %25 = getelementptr inbounds %struct.executable, %struct.executable* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i32, i8*, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %22, i64 %23, i64 %26)
  br label %28

28:                                               ; preds = %21, %15
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.executable*, %struct.executable** %5, align 8
  %31 = getelementptr inbounds %struct.executable, %struct.executable* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.executable*, %struct.executable** %5, align 8
  %38 = getelementptr inbounds %struct.executable, %struct.executable* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i32, i8*, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %35, i64 %36, i64 %39)
  br label %41

41:                                               ; preds = %34, %28
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %42, %43
  %45 = load %struct.executable*, %struct.executable** %5, align 8
  %46 = getelementptr inbounds %struct.executable, %struct.executable* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %51, %52
  %54 = load %struct.executable*, %struct.executable** %5, align 8
  %55 = getelementptr inbounds %struct.executable, %struct.executable* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, i8*, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %50, i64 %53, i64 %56)
  br label %58

58:                                               ; preds = %49, %41
  ret void
}

declare dso_local i32 @errx(i32, i8*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
