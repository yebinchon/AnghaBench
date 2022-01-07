; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_get_extended_base_var.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_get_extended_base_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.strbuf = type { i32 }

@cf = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i32)* @get_extended_base_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_extended_base_var(%struct.strbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %16, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %57

13:                                               ; preds = %9
  %14 = call signext i8 (...) @get_next_char()
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @isspace(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %9, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 34
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %62

24:                                               ; preds = %20
  %25 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %26 = call i32 @strbuf_addch(%struct.strbuf* %25, i32 46)
  br label %27

27:                                               ; preds = %47, %24
  %28 = call signext i8 (...) @get_next_char()
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %57

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 34
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %51

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 92
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = call signext i8 (...) @get_next_char()
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %57

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %37
  %48 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @strbuf_addch(%struct.strbuf* %48, i32 %49)
  br label %27

51:                                               ; preds = %36
  %52 = call signext i8 (...) @get_next_char()
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 93
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %62

56:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %62

57:                                               ; preds = %45, %32, %12
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  store i32 -1, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %56, %55, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local signext i8 @get_next_char(...) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
