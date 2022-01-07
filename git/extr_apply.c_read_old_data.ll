; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_read_old_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_read_old_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }
%struct.patch = type { i64 }
%struct.strbuf = type { i32, i32 }

@CONV_EOL_KEEP_CRLF = common dso_local global i32 0, align 4
@CONV_EOL_RENORMALIZE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to read symlink %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to open or read %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stat*, %struct.patch*, i8*, %struct.strbuf*)* @read_old_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_old_data(%struct.stat* %0, %struct.patch* %1, i8* %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat*, align 8
  %7 = alloca %struct.patch*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i32, align 4
  store %struct.stat* %0, %struct.stat** %6, align 8
  store %struct.patch* %1, %struct.patch** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %11 = load %struct.patch*, %struct.patch** %7, align 8
  %12 = getelementptr inbounds %struct.patch, %struct.patch* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @CONV_EOL_KEEP_CRLF, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @CONV_EOL_RENORMALIZE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %10, align 4
  %21 = load %struct.stat*, %struct.stat** %6, align 8
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @S_IFMT, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %65 [
    i32 129, label %26
    i32 128, label %39
  ]

26:                                               ; preds = %19
  %27 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.stat*, %struct.stat** %6, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strbuf_readlink(%struct.strbuf* %27, i8* %28, i32 %31)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @error(i32 %35, i8* %36)
  store i32 %37, i32* %5, align 4
  br label %66

38:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %66

39:                                               ; preds = %19
  %40 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.stat*, %struct.stat** %6, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strbuf_read_file(%struct.strbuf* %40, i8* %41, i32 %44)
  %46 = load %struct.stat*, %struct.stat** %6, align 8
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @error(i32 %51, i8* %52)
  store i32 %53, i32* %5, align 4
  br label %66

54:                                               ; preds = %39
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @convert_to_git(i32* null, i8* %55, i32 %58, i32 %61, %struct.strbuf* %62, i32 %63)
  store i32 0, i32* %5, align 4
  br label %66

65:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %54, %50, %38, %34
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @strbuf_readlink(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_read_file(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @convert_to_git(i32*, i8*, i32, i32, %struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
