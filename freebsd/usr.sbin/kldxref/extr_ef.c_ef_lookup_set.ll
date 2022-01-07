; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef.c_ef_lookup_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef.c_ef_lookup_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"__start_set_\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"__stop_set_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64*, i64*, i64*)* @ef_lookup_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef_lookup_set(i32 %0, i8* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 13
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = call i8* @malloc(i32 %21)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %6, align 4
  br label %69

27:                                               ; preds = %5
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @snprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @ef_lookup_symbol(i32 %32, i8* %33, %struct.TYPE_3__** %12)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %65

38:                                               ; preds = %27
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @snprintf(i8* %43, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @ef_lookup_symbol(i32 %47, i8* %48, %struct.TYPE_3__** %12)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %65

53:                                               ; preds = %38
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %10, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %59, %61
  %63 = udiv i64 %62, 8
  %64 = load i64*, i64** %11, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %53, %52, %37
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %25
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @ef_lookup_symbol(i32, i8*, %struct.TYPE_3__**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
