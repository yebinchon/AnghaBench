; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_arg.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"badly quoted argument: %s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"unexpected character after quoted argument: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.strbuf*)* @parse_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_arg(i8* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 34
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @unquote_c_style(%struct.strbuf* %12, i8* %13, i8** %3)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @isspace(i8 signext %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %24, %19
  br label %55

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @isspace(i8 signext %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %34
  %46 = phi i1 [ false, %34 ], [ %44, %39 ]
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %3, align 8
  %51 = load i8, i8* %49, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 @strbuf_addch(%struct.strbuf* %48, i32 %52)
  br label %34

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

declare dso_local i64 @unquote_c_style(%struct.strbuf*, i8*, i8**) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
