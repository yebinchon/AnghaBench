; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/join/extr_join.c_fieldarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/join/extr_join.c_fieldarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"malformed -o option field\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"field numbers are 1 based\00", align 1
@olistcnt = common dso_local global i32 0, align 4
@olistalloc = common dso_local global i32 0, align 4
@olist = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fieldarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fieldarg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %7

7:                                                ; preds = %84, %15, %1
  %8 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %99

10:                                               ; preds = %7
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %7

16:                                               ; preds = %10
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 48
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %67

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 49
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 50
  br i1 %34, label %35, label %64

35:                                               ; preds = %29, %23
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 46
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 48
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %4, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = call i64 @strtol(i8* %49, i8** %5, i32 10)
  store i64 %50, i64* %3, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %41
  %57 = load i64, i64* %3, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i64, i64* %3, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %3, align 8
  br label %66

64:                                               ; preds = %35, %29
  %65 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  br label %67

67:                                               ; preds = %66, %22
  %68 = load i32, i32* @olistcnt, align 4
  %69 = load i32, i32* @olistalloc, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load i32, i32* @olistalloc, align 4
  %73 = add nsw i32 %72, 50
  store i32 %73, i32* @olistalloc, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @olist, align 8
  %75 = load i32, i32* @olistalloc, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call %struct.TYPE_4__* @realloc(%struct.TYPE_4__* %74, i32 %78)
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** @olist, align 8
  %80 = icmp eq %struct.TYPE_4__* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = call i32 @err(i32 1, i32* null)
  br label %83

83:                                               ; preds = %81, %71
  br label %84

84:                                               ; preds = %83, %67
  %85 = load i64, i64* %4, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @olist, align 8
  %87 = load i32, i32* @olistcnt, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i64 %85, i64* %90, align 8
  %91 = load i64, i64* %3, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @olist, align 8
  %93 = load i32, i32* @olistcnt, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i64 %91, i64* %96, align 8
  %97 = load i32, i32* @olistcnt, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @olistcnt, align 4
  br label %7

99:                                               ; preds = %7
  ret void
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @realloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @err(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
