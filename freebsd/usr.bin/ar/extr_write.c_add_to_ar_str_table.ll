; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_add_to_ar_str_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_add_to_ar_str_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i8*, i32, i64 }

@_INIT_AS_CAP = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, i8*)* @add_to_ar_str_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_ar_str_table(%struct.bsdar* %0, i8* %1) #0 {
  %3 = alloca %struct.bsdar*, align 8
  %4 = alloca i8*, align 8
  store %struct.bsdar* %0, %struct.bsdar** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %6 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load i32, i32* @_INIT_AS_CAP, align 4
  %11 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %12 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %14 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %16 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @malloc(i32 %17)
  %19 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %20 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = icmp eq i8* %18, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %9
  %23 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %24 = load i32, i32* @EX_SOFTWARE, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @bsdar_errc(%struct.bsdar* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %9
  br label %28

28:                                               ; preds = %27, %2
  br label %29

29:                                               ; preds = %66, %28
  %30 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %31 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = sext i32 %34 to i64
  %36 = add i64 %32, %35
  %37 = add i64 %36, 3
  %38 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %39 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp ugt i64 %37, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %29
  %44 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %45 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %46, 2
  store i32 %47, i32* %45, align 8
  %48 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %49 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %52 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @realloc(i8* %50, i32 %53)
  %55 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %56 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %58 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %43
  %62 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %63 = load i32, i32* @EX_SOFTWARE, align 4
  %64 = load i32, i32* @errno, align 4
  %65 = call i32 @bsdar_errc(%struct.bsdar* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %43
  br label %29

67:                                               ; preds = %29
  %68 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %69 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %72 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8*, i8** %4, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = call i32 @strncpy(i8* %74, i8* %75, i32 %77)
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = sext i32 %80 to i64
  %82 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %83 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %87 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %90 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = getelementptr inbounds i8, i8* %88, i64 %91
  store i8 47, i8* %93, align 1
  %94 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %95 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %98 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = getelementptr inbounds i8, i8* %96, i64 %99
  store i8 10, i8* %101, align 1
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
