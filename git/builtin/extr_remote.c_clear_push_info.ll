; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_clear_push_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_clear_push_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.push_info = type { %struct.push_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @clear_push_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_push_info(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.push_info*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.push_info*
  store %struct.push_info* %7, %struct.push_info** %5, align 8
  %8 = load %struct.push_info*, %struct.push_info** %5, align 8
  %9 = getelementptr inbounds %struct.push_info, %struct.push_info* %8, i32 0, i32 0
  %10 = load %struct.push_info*, %struct.push_info** %9, align 8
  %11 = call i32 @free(%struct.push_info* %10)
  %12 = load %struct.push_info*, %struct.push_info** %5, align 8
  %13 = call i32 @free(%struct.push_info* %12)
  ret void
}

declare dso_local i32 @free(%struct.push_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
