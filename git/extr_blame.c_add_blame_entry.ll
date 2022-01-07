; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_add_blame_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_add_blame_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { %struct.blame_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_entry***, %struct.blame_entry*)* @add_blame_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_blame_entry(%struct.blame_entry*** %0, %struct.blame_entry* %1) #0 {
  %3 = alloca %struct.blame_entry***, align 8
  %4 = alloca %struct.blame_entry*, align 8
  %5 = alloca %struct.blame_entry*, align 8
  store %struct.blame_entry*** %0, %struct.blame_entry**** %3, align 8
  store %struct.blame_entry* %1, %struct.blame_entry** %4, align 8
  %6 = call %struct.blame_entry* @xmalloc(i32 16)
  store %struct.blame_entry* %6, %struct.blame_entry** %5, align 8
  %7 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %8 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %9 = call i32 @memcpy(%struct.blame_entry* %7, %struct.blame_entry* %8, i32 16)
  %10 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %11 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @blame_origin_incref(i32 %12)
  %14 = load %struct.blame_entry***, %struct.blame_entry**** %3, align 8
  %15 = load %struct.blame_entry**, %struct.blame_entry*** %14, align 8
  %16 = load %struct.blame_entry*, %struct.blame_entry** %15, align 8
  %17 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %18 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %17, i32 0, i32 0
  store %struct.blame_entry* %16, %struct.blame_entry** %18, align 8
  %19 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %20 = load %struct.blame_entry***, %struct.blame_entry**** %3, align 8
  %21 = load %struct.blame_entry**, %struct.blame_entry*** %20, align 8
  store %struct.blame_entry* %19, %struct.blame_entry** %21, align 8
  %22 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %23 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %22, i32 0, i32 0
  %24 = load %struct.blame_entry***, %struct.blame_entry**** %3, align 8
  store %struct.blame_entry** %23, %struct.blame_entry*** %24, align 8
  ret void
}

declare dso_local %struct.blame_entry* @xmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.blame_entry*, %struct.blame_entry*, i32) #1

declare dso_local i32 @blame_origin_incref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
