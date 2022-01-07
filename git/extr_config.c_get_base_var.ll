; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_get_base_var.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_get_base_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.strbuf = type { i32 }

@cf = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*)* @get_base_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_base_var(%struct.strbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  br label %7

7:                                                ; preds = %34, %1
  %8 = call i32 (...) @get_next_char()
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 -1, i32* %2, align 4
  br label %39

14:                                               ; preds = %7
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 93
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %39

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @isspace(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @get_extended_base_var(%struct.strbuf* %23, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @iskeychar(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 46
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %39

34:                                               ; preds = %30, %26
  %35 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @tolower(i32 %36) #3
  %38 = call i32 @strbuf_addch(%struct.strbuf* %35, i32 %37)
  br label %7

39:                                               ; preds = %33, %22, %17, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @get_next_char(...) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @get_extended_base_var(%struct.strbuf*, i32) #1

declare dso_local i32 @iskeychar(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
