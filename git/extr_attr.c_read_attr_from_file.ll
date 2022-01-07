; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_read_attr_from_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_read_attr_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_stack = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attr_stack* (i8*, i32)* @read_attr_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attr_stack* @read_attr_from_file(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.attr_stack*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.attr_stack*, align 8
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @fopen_or_warn(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.attr_stack* null, %struct.attr_stack** %3, align 8
  br label %43

16:                                               ; preds = %2
  %17 = call %struct.attr_stack* @xcalloc(i32 1, i32 4)
  store %struct.attr_stack* %17, %struct.attr_stack** %7, align 8
  br label %18

18:                                               ; preds = %31, %16
  %19 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @fgets(i8* %19, i32 2048, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  store i8* %24, i8** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i32 @skip_utf8_bom(i8** %10, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.attr_stack*, %struct.attr_stack** %7, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @handle_attr_line(%struct.attr_stack* %32, i8* %33, i8* %34, i32 %36, i32 %37)
  br label %18

39:                                               ; preds = %18
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @fclose(i32* %40)
  %42 = load %struct.attr_stack*, %struct.attr_stack** %7, align 8
  store %struct.attr_stack* %42, %struct.attr_stack** %3, align 8
  br label %43

43:                                               ; preds = %39, %15
  %44 = load %struct.attr_stack*, %struct.attr_stack** %3, align 8
  ret %struct.attr_stack* %44
}

declare dso_local i32* @fopen_or_warn(i8*, i8*) #1

declare dso_local %struct.attr_stack* @xcalloc(i32, i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @skip_utf8_bom(i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @handle_attr_line(%struct.attr_stack*, i8*, i8*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
