; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_add_delta_to_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_add_delta_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_info = type { i64, i32, %struct.delta_info*, i8*, i32, i32 }
%struct.object_id = type { i32 }

@delta_list = common dso_local global %struct.delta_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.object_id*, i32, i8*, i64)* @add_delta_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_delta_to_list(i32 %0, %struct.object_id* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.delta_info*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = call %struct.delta_info* @xmalloc(i32 40)
  store %struct.delta_info* %12, %struct.delta_info** %11, align 8
  %13 = load %struct.delta_info*, %struct.delta_info** %11, align 8
  %14 = getelementptr inbounds %struct.delta_info, %struct.delta_info* %13, i32 0, i32 5
  %15 = load %struct.object_id*, %struct.object_id** %7, align 8
  %16 = call i32 @oidcpy(i32* %14, %struct.object_id* %15)
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.delta_info*, %struct.delta_info** %11, align 8
  %19 = getelementptr inbounds %struct.delta_info, %struct.delta_info* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.delta_info*, %struct.delta_info** %11, align 8
  %22 = getelementptr inbounds %struct.delta_info, %struct.delta_info* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.delta_info*, %struct.delta_info** %11, align 8
  %25 = getelementptr inbounds %struct.delta_info, %struct.delta_info* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.delta_info*, %struct.delta_info** %11, align 8
  %28 = getelementptr inbounds %struct.delta_info, %struct.delta_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.delta_info*, %struct.delta_info** @delta_list, align 8
  %30 = load %struct.delta_info*, %struct.delta_info** %11, align 8
  %31 = getelementptr inbounds %struct.delta_info, %struct.delta_info* %30, i32 0, i32 2
  store %struct.delta_info* %29, %struct.delta_info** %31, align 8
  %32 = load %struct.delta_info*, %struct.delta_info** %11, align 8
  store %struct.delta_info* %32, %struct.delta_info** @delta_list, align 8
  ret void
}

declare dso_local %struct.delta_info* @xmalloc(i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
