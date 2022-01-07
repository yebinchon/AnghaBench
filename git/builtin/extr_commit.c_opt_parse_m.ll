; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_opt_parse_m.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_opt_parse_m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.strbuf* }
%struct.strbuf = type { i64 }

@have_option_m = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @opt_parse_m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_parse_m(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.option*, %struct.option** %4, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  %10 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  store %struct.strbuf* %10, %struct.strbuf** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  store i32 0, i32* @have_option_m, align 4
  %14 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %15 = call i32 @strbuf_setlen(%struct.strbuf* %14, i32 0)
  br label %30

16:                                               ; preds = %3
  store i32 1, i32* @have_option_m, align 4
  %17 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %23 = call i32 @strbuf_addch(%struct.strbuf* %22, i8 signext 10)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strbuf_addstr(%struct.strbuf* %25, i8* %26)
  %28 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %29 = call i32 @strbuf_complete_line(%struct.strbuf* %28)
  br label %30

30:                                               ; preds = %24, %13
  ret i32 0
}

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_complete_line(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
