; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_reverse_blame.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_reverse_blame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { %struct.blame_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame_entry* (%struct.blame_entry*, %struct.blame_entry*)* @reverse_blame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame_entry* @reverse_blame(%struct.blame_entry* %0, %struct.blame_entry* %1) #0 {
  %3 = alloca %struct.blame_entry*, align 8
  %4 = alloca %struct.blame_entry*, align 8
  %5 = alloca %struct.blame_entry*, align 8
  store %struct.blame_entry* %0, %struct.blame_entry** %3, align 8
  store %struct.blame_entry* %1, %struct.blame_entry** %4, align 8
  br label %6

6:                                                ; preds = %9, %2
  %7 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %8 = icmp ne %struct.blame_entry* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %11 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %10, i32 0, i32 0
  %12 = load %struct.blame_entry*, %struct.blame_entry** %11, align 8
  store %struct.blame_entry* %12, %struct.blame_entry** %5, align 8
  %13 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %14 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %15 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %14, i32 0, i32 0
  store %struct.blame_entry* %13, %struct.blame_entry** %15, align 8
  %16 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  store %struct.blame_entry* %16, %struct.blame_entry** %4, align 8
  %17 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  store %struct.blame_entry* %17, %struct.blame_entry** %3, align 8
  br label %6

18:                                               ; preds = %6
  %19 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  ret %struct.blame_entry* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
