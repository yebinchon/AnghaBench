; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_header_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_header_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.file_header = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.last_printed = type { i32* }

@sort_opts_vals = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_header*, i32*, %struct.last_printed*)* @file_header_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_header_print(%struct.file_header* %0, i32* %1, %struct.last_printed* %2) #0 {
  %4 = alloca %struct.file_header*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.last_printed*, align 8
  store %struct.file_header* %0, %struct.file_header** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.last_printed* %2, %struct.last_printed** %6, align 8
  %7 = load %struct.file_header*, %struct.file_header** %4, align 8
  %8 = icmp ne %struct.file_header* %7, null
  br i1 %8, label %9, label %83

9:                                                ; preds = %3
  %10 = load %struct.file_header*, %struct.file_header** %4, align 8
  %11 = getelementptr inbounds %struct.file_header, %struct.file_header* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %83

14:                                               ; preds = %9
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %83

17:                                               ; preds = %14
  %18 = load %struct.file_header*, %struct.file_header** %4, align 8
  %19 = getelementptr inbounds %struct.file_header, %struct.file_header* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %83

22:                                               ; preds = %17
  %23 = load %struct.file_header*, %struct.file_header** %4, align 8
  %24 = getelementptr inbounds %struct.file_header, %struct.file_header* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %83

29:                                               ; preds = %22
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sort_opts_vals, i32 0, i32 1), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %29
  %33 = load %struct.last_printed*, %struct.last_printed** %6, align 8
  %34 = getelementptr inbounds %struct.last_printed, %struct.last_printed* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load %struct.last_printed*, %struct.last_printed** %6, align 8
  %39 = getelementptr inbounds %struct.last_printed, %struct.last_printed* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.file_header*, %struct.file_header** %4, align 8
  %42 = getelementptr inbounds %struct.file_header, %struct.file_header* %41, i32 0, i32 0
  %43 = call i64 @str_list_coll(i32* %40, %struct.TYPE_3__** %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %37, %32
  %46 = load %struct.file_header*, %struct.file_header** %4, align 8
  %47 = getelementptr inbounds %struct.file_header, %struct.file_header* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sort_opts_vals, i32 0, i32 0), align 8
  %53 = call i32 @bwsfwrite(i64 %50, i32* %51, i32 %52)
  %54 = load %struct.last_printed*, %struct.last_printed** %6, align 8
  %55 = getelementptr inbounds %struct.last_printed, %struct.last_printed* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %45
  %59 = load %struct.last_printed*, %struct.last_printed** %6, align 8
  %60 = getelementptr inbounds %struct.last_printed, %struct.last_printed* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @bwsfree(i32* %61)
  br label %63

63:                                               ; preds = %58, %45
  %64 = load %struct.file_header*, %struct.file_header** %4, align 8
  %65 = getelementptr inbounds %struct.file_header, %struct.file_header* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32* @bwsdup(i64 %68)
  %70 = load %struct.last_printed*, %struct.last_printed** %6, align 8
  %71 = getelementptr inbounds %struct.last_printed, %struct.last_printed* %70, i32 0, i32 0
  store i32* %69, i32** %71, align 8
  br label %72

72:                                               ; preds = %63, %37
  br label %82

73:                                               ; preds = %29
  %74 = load %struct.file_header*, %struct.file_header** %4, align 8
  %75 = getelementptr inbounds %struct.file_header, %struct.file_header* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sort_opts_vals, i32 0, i32 0), align 8
  %81 = call i32 @bwsfwrite(i64 %78, i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %73, %72
  br label %83

83:                                               ; preds = %82, %22, %17, %14, %9, %3
  ret void
}

declare dso_local i64 @str_list_coll(i32*, %struct.TYPE_3__**) #1

declare dso_local i32 @bwsfwrite(i64, i32*, i32) #1

declare dso_local i32 @bwsfree(i32*) #1

declare dso_local i32* @bwsdup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
