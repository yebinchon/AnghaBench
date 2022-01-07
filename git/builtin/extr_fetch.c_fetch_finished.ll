; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_fetch_finished.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_fetch_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.parallel_fetch_state = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"could not fetch '%s' (exit code: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.strbuf*, i8*, i8*)* @fetch_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_finished(i32 %0, %struct.strbuf* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.parallel_fetch_state*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.parallel_fetch_state*
  store %struct.parallel_fetch_state* %12, %struct.parallel_fetch_state** %9, align 8
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %18 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @strbuf_addf(%struct.strbuf* %17, i32 %18, i8* %19, i32 %20)
  %22 = load %struct.parallel_fetch_state*, %struct.parallel_fetch_state** %9, align 8
  %23 = getelementptr inbounds %struct.parallel_fetch_state, %struct.parallel_fetch_state* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  br label %24

24:                                               ; preds = %16, %4
  ret i32 0
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
