; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_make_origin.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_make_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_origin = type { i32, i32, %struct.commit* }
%struct.commit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame_origin* (%struct.commit*, i8*)* @make_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame_origin* @make_origin(%struct.commit* %0, i8* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.blame_origin*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @FLEX_ALLOC_STR(%struct.blame_origin* %6, i8* %7, i8* %8)
  %10 = load %struct.commit*, %struct.commit** %3, align 8
  %11 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %12 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %11, i32 0, i32 2
  store %struct.commit* %10, %struct.commit** %12, align 8
  %13 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %14 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.commit*, %struct.commit** %3, align 8
  %16 = call i32 @get_blame_suspects(%struct.commit* %15)
  %17 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %18 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.commit*, %struct.commit** %3, align 8
  %20 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %21 = call i32 @set_blame_suspects(%struct.commit* %19, %struct.blame_origin* %20)
  %22 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  ret %struct.blame_origin* %22
}

declare dso_local i32 @FLEX_ALLOC_STR(%struct.blame_origin*, i8*, i8*) #1

declare dso_local i32 @get_blame_suspects(%struct.commit*) #1

declare dso_local i32 @set_blame_suspects(%struct.commit*, %struct.blame_origin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
