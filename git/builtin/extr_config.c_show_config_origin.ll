; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_config.c_show_config_origin.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_config.c_show_config_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@end_null = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @show_config_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_config_origin(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %4 = load i64, i64* @end_null, align 8
  %5 = icmp ne i64 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 0, i32 9
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %3, align 1
  %9 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %10 = call i32 (...) @current_config_origin_type()
  %11 = call i32 @strbuf_addstr(%struct.strbuf* %9, i32 %10)
  %12 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %13 = call i32 @strbuf_addch(%struct.strbuf* %12, i8 signext 58)
  %14 = load i64, i64* @end_null, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %18 = call i32 (...) @current_config_name()
  %19 = call i32 @strbuf_addstr(%struct.strbuf* %17, i32 %18)
  br label %24

20:                                               ; preds = %1
  %21 = call i32 (...) @current_config_name()
  %22 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %23 = call i32 @quote_c_style(i32 %21, %struct.strbuf* %22, i32* null, i32 0)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %26 = load i8, i8* %3, align 1
  %27 = call i32 @strbuf_addch(%struct.strbuf* %25, i8 signext %26)
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @current_config_origin_type(...) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @current_config_name(...) #1

declare dso_local i32 @quote_c_style(i32, %struct.strbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
