; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_free_commit_extra_headers.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_free_commit_extra_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_extra_header = type { %struct.commit_extra_header*, %struct.commit_extra_header*, %struct.commit_extra_header* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_commit_extra_headers(%struct.commit_extra_header* %0) #0 {
  %2 = alloca %struct.commit_extra_header*, align 8
  %3 = alloca %struct.commit_extra_header*, align 8
  store %struct.commit_extra_header* %0, %struct.commit_extra_header** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.commit_extra_header*, %struct.commit_extra_header** %2, align 8
  %6 = icmp ne %struct.commit_extra_header* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.commit_extra_header*, %struct.commit_extra_header** %2, align 8
  %9 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %8, i32 0, i32 2
  %10 = load %struct.commit_extra_header*, %struct.commit_extra_header** %9, align 8
  store %struct.commit_extra_header* %10, %struct.commit_extra_header** %3, align 8
  %11 = load %struct.commit_extra_header*, %struct.commit_extra_header** %2, align 8
  %12 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %11, i32 0, i32 1
  %13 = load %struct.commit_extra_header*, %struct.commit_extra_header** %12, align 8
  %14 = call i32 @free(%struct.commit_extra_header* %13)
  %15 = load %struct.commit_extra_header*, %struct.commit_extra_header** %2, align 8
  %16 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %15, i32 0, i32 0
  %17 = load %struct.commit_extra_header*, %struct.commit_extra_header** %16, align 8
  %18 = call i32 @free(%struct.commit_extra_header* %17)
  %19 = load %struct.commit_extra_header*, %struct.commit_extra_header** %2, align 8
  %20 = call i32 @free(%struct.commit_extra_header* %19)
  %21 = load %struct.commit_extra_header*, %struct.commit_extra_header** %3, align 8
  store %struct.commit_extra_header* %21, %struct.commit_extra_header** %2, align 8
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.commit_extra_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
