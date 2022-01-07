; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-branch.c_name_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-branch.c_name_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.commit_name = type { i8*, i32 }

@name_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, i8*, i32)* @name_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @name_commit(%struct.commit* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit_name*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.commit*, %struct.commit** %4, align 8
  %9 = call %struct.commit_name** @commit_name_slab_at(i32* @name_slab, %struct.commit* %8)
  %10 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  store %struct.commit_name* %10, %struct.commit_name** %7, align 8
  %11 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %12 = icmp ne %struct.commit_name* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = call %struct.commit_name* @xmalloc(i32 16)
  store %struct.commit_name* %14, %struct.commit_name** %7, align 8
  %15 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %16 = load %struct.commit*, %struct.commit** %4, align 8
  %17 = call %struct.commit_name** @commit_name_slab_at(i32* @name_slab, %struct.commit* %16)
  store %struct.commit_name* %15, %struct.commit_name** %17, align 8
  br label %18

18:                                               ; preds = %13, %3
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %21 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %24 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  ret void
}

declare dso_local %struct.commit_name** @commit_name_slab_at(i32*, %struct.commit*) #1

declare dso_local %struct.commit_name* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
