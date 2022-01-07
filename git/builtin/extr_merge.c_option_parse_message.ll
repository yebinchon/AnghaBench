; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_option_parse_message.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_option_parse_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.strbuf* }
%struct.strbuf = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@have_message = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"switch `m' requires a value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @option_parse_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_parse_message(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.option*, %struct.option** %5, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  store %struct.strbuf* %11, %struct.strbuf** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %16 = call i32 @strbuf_setlen(%struct.strbuf* %15, i32 0)
  br label %34

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strbuf_addf(%struct.strbuf* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  store i32 1, i32* @have_message, align 4
  br label %33

30:                                               ; preds = %17
  %31 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @error(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %14
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i8*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
