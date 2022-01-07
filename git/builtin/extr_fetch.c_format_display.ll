; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_format_display.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_format_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%c %-*s \00", align 1
@compact_format = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"  (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8, i8*, i8*, i8*, i8*, i32)* @format_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_display(%struct.strbuf* %0, i8 signext %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %14, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %16, %18
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @gettext_width(i8* %20)
  %22 = sub nsw i32 %19, %21
  store i32 %22, i32* %15, align 4
  %23 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %24 = load i8, i8* %9, align 1
  %25 = sext i8 %24 to i32
  %26 = load i32, i32* %15, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i8* %27)
  %29 = load i32, i32* @compact_format, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %7
  %32 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @print_remote_to_local(%struct.strbuf* %32, i8* %33, i8* %34)
  br label %41

36:                                               ; preds = %7
  %37 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @print_compact(%struct.strbuf* %37, i8* %38, i8* %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %41
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @gettext_width(i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #1

declare dso_local i32 @print_remote_to_local(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @print_compact(%struct.strbuf*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
