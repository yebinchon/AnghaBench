; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/random/extr_randomize_fd.c_rand_node_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/random/extr_randomize_fd.c_rand_node_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_node = type { %struct.rand_node* }

@rand_root = common dso_local global %struct.rand_node* null, align 8
@rand_tail = common dso_local global %struct.rand_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rand_node*)* @rand_node_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rand_node_append(%struct.rand_node* %0) #0 {
  %2 = alloca %struct.rand_node*, align 8
  store %struct.rand_node* %0, %struct.rand_node** %2, align 8
  %3 = load %struct.rand_node*, %struct.rand_node** @rand_root, align 8
  %4 = icmp eq %struct.rand_node* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load %struct.rand_node*, %struct.rand_node** %2, align 8
  store %struct.rand_node* %6, %struct.rand_node** @rand_tail, align 8
  store %struct.rand_node* %6, %struct.rand_node** @rand_root, align 8
  br label %12

7:                                                ; preds = %1
  %8 = load %struct.rand_node*, %struct.rand_node** %2, align 8
  %9 = load %struct.rand_node*, %struct.rand_node** @rand_tail, align 8
  %10 = getelementptr inbounds %struct.rand_node, %struct.rand_node* %9, i32 0, i32 0
  store %struct.rand_node* %8, %struct.rand_node** %10, align 8
  %11 = load %struct.rand_node*, %struct.rand_node** %2, align 8
  store %struct.rand_node* %11, %struct.rand_node** @rand_tail, align 8
  br label %12

12:                                               ; preds = %7, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
