; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_derive_filename.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_derive_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c".pack\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"packfile name '%s' does not end with '.pack'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.strbuf*)* @derive_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @derive_filename(i8* %0, i8* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strip_suffix(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %7)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @die(i32 %12, i8* %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @strbuf_add(%struct.strbuf* %16, i8* %17, i64 %18)
  %20 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %21 = call i32 @strbuf_addch(%struct.strbuf* %20, i8 signext 46)
  %22 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strbuf_addstr(%struct.strbuf* %22, i8* %23)
  %25 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  ret i8* %27
}

declare dso_local i32 @strip_suffix(i8*, i8*, i64*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
