; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_add_header.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_add_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"to: \00", align 1
@extra_to = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cc: \00", align 1
@extra_cc = common dso_local global i32 0, align 4
@extra_hdr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_header(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.string_list_item*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %21, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 10
  br label %19

19:                                               ; preds = %10, %7
  %20 = phi i1 [ false, %7 ], [ %18, %10 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  br label %7

24:                                               ; preds = %19
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @strncasecmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  %31 = call %struct.string_list_item* @string_list_append(i32* @extra_to, i8* %30)
  store %struct.string_list_item* %31, %struct.string_list_item** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 4
  store i32 %33, i32* %4, align 4
  br label %48

34:                                               ; preds = %24
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @strncasecmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  %41 = call %struct.string_list_item* @string_list_append(i32* @extra_cc, i8* %40)
  store %struct.string_list_item* %41, %struct.string_list_item** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, 4
  store i32 %43, i32* %4, align 4
  br label %47

44:                                               ; preds = %34
  %45 = load i8*, i8** %2, align 8
  %46 = call %struct.string_list_item* @string_list_append(i32* @extra_hdr, i8* %45)
  store %struct.string_list_item* %46, %struct.string_list_item** %3, align 8
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %50 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local %struct.string_list_item* @string_list_append(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
