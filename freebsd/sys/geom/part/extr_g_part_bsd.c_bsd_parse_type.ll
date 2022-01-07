; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_bsd_parse_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_bsd_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@bsd_alias_match = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @bsd_parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_parse_type(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 33
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i64 @strtol(i8* %17, i8** %7, i32 0)
  store i64 %18, i64* %8, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %15
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = icmp sge i64 %33, 256
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29, %24, %15
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  store i32 0, i32* %3, align 4
  br label %72

40:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %67, %40
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bsd_alias_match, align 8
  %44 = call i32 @nitems(%struct.TYPE_3__* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bsd_alias_match, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @g_part_alias_name(i32 %52)
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strcasecmp(i8* %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bsd_alias_match, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  store i32 0, i32* %3, align 4
  br label %72

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %41

70:                                               ; preds = %41
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %58, %37, %35
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i8* @g_part_alias_name(i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
