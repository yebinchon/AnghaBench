; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_read_am_author_script.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_read_am_author_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am_state = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"author-script\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am_state*)* @read_am_author_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_am_author_script(%struct.am_state* %0) #0 {
  %2 = alloca %struct.am_state*, align 8
  %3 = alloca i8*, align 8
  store %struct.am_state* %0, %struct.am_state** %2, align 8
  %4 = load %struct.am_state*, %struct.am_state** %2, align 8
  %5 = call i8* @am_path(%struct.am_state* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %3, align 8
  %6 = load %struct.am_state*, %struct.am_state** %2, align 8
  %7 = getelementptr inbounds %struct.am_state, %struct.am_state* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.am_state*, %struct.am_state** %2, align 8
  %14 = getelementptr inbounds %struct.am_state, %struct.am_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.am_state*, %struct.am_state** %2, align 8
  %21 = getelementptr inbounds %struct.am_state, %struct.am_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.am_state*, %struct.am_state** %2, align 8
  %29 = getelementptr inbounds %struct.am_state, %struct.am_state* %28, i32 0, i32 2
  %30 = load %struct.am_state*, %struct.am_state** %2, align 8
  %31 = getelementptr inbounds %struct.am_state, %struct.am_state* %30, i32 0, i32 1
  %32 = load %struct.am_state*, %struct.am_state** %2, align 8
  %33 = getelementptr inbounds %struct.am_state, %struct.am_state* %32, i32 0, i32 0
  %34 = call i32 @read_author_script(i8* %27, i32* %29, i32* %31, i32* %33, i32 1)
  ret i32 %34
}

declare dso_local i8* @am_path(%struct.am_state*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_author_script(i8*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
