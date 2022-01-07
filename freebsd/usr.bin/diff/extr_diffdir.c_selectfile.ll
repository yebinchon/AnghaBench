; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffdir.c_selectfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffdir.c_selectfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.excludes = type { i32, %struct.excludes* }
%struct.dirent = type { i64, i8* }

@excludes_list = common dso_local global %struct.excludes* null, align 8
@FNM_PATHNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirent*)* @selectfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selectfile(%struct.dirent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca %struct.excludes*, align 8
  store %struct.dirent* %0, %struct.dirent** %3, align 8
  %5 = load %struct.dirent*, %struct.dirent** %3, align 8
  %6 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

10:                                               ; preds = %1
  %11 = load %struct.dirent*, %struct.dirent** %3, align 8
  %12 = getelementptr inbounds %struct.dirent, %struct.dirent* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 46
  br i1 %17, label %18, label %43

18:                                               ; preds = %10
  %19 = load %struct.dirent*, %struct.dirent** %3, align 8
  %20 = getelementptr inbounds %struct.dirent, %struct.dirent* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %18
  %27 = load %struct.dirent*, %struct.dirent** %3, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load %struct.dirent*, %struct.dirent** %3, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %18
  store i32 0, i32* %2, align 4
  br label %65

43:                                               ; preds = %34, %26, %10
  %44 = load %struct.excludes*, %struct.excludes** @excludes_list, align 8
  store %struct.excludes* %44, %struct.excludes** %4, align 8
  br label %45

45:                                               ; preds = %60, %43
  %46 = load %struct.excludes*, %struct.excludes** %4, align 8
  %47 = icmp ne %struct.excludes* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load %struct.excludes*, %struct.excludes** %4, align 8
  %50 = getelementptr inbounds %struct.excludes, %struct.excludes* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dirent*, %struct.dirent** %3, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @FNM_PATHNAME, align 4
  %56 = call i64 @fnmatch(i32 %51, i8* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %65

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.excludes*, %struct.excludes** %4, align 8
  %62 = getelementptr inbounds %struct.excludes, %struct.excludes* %61, i32 0, i32 1
  %63 = load %struct.excludes*, %struct.excludes** %62, align 8
  store %struct.excludes* %63, %struct.excludes** %4, align 8
  br label %45

64:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %58, %42, %9
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @fnmatch(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
