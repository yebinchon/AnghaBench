; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_shortlog.c_add_wrapped_shortlog_msg.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_shortlog.c_add_wrapped_shortlog_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.shortlog = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*, %struct.shortlog*)* @add_wrapped_shortlog_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_wrapped_shortlog_msg(%struct.strbuf* %0, i8* %1, %struct.shortlog* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.shortlog*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.shortlog* %2, %struct.shortlog** %6, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.shortlog*, %struct.shortlog** %6, align 8
  %10 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.shortlog*, %struct.shortlog** %6, align 8
  %13 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.shortlog*, %struct.shortlog** %6, align 8
  %16 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strbuf_add_wrapped_text(%struct.strbuf* %7, i8* %8, i32 %11, i32 %14, i32 %17)
  %19 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %20 = call i32 @strbuf_addch(%struct.strbuf* %19, i8 signext 10)
  ret void
}

declare dso_local i32 @strbuf_add_wrapped_text(%struct.strbuf*, i8*, i32, i32, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
