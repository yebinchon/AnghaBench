; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_clean_crap.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_clean_crap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_info = type { %struct.node_info* }

@ioctl_s = common dso_local global i32 0, align 4
@bpf_s = common dso_local global i32 0, align 4
@nodes = common dso_local global %struct.node_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clean_crap() #0 {
  %1 = alloca %struct.node_info*, align 8
  %2 = load i32, i32* @ioctl_s, align 4
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @ioctl_s, align 4
  %6 = call i32 @close(i32 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @bpf_s, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @bpf_s, align 4
  %12 = call i32 @close(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  br label %14

14:                                               ; preds = %17, %13
  %15 = load %struct.node_info*, %struct.node_info** @nodes, align 8
  %16 = icmp ne %struct.node_info* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.node_info*, %struct.node_info** @nodes, align 8
  %19 = getelementptr inbounds %struct.node_info, %struct.node_info* %18, i32 0, i32 0
  %20 = load %struct.node_info*, %struct.node_info** %19, align 8
  store %struct.node_info* %20, %struct.node_info** %1, align 8
  %21 = load %struct.node_info*, %struct.node_info** @nodes, align 8
  %22 = call i32 @free(%struct.node_info* %21)
  %23 = load %struct.node_info*, %struct.node_info** %1, align 8
  store %struct.node_info* %23, %struct.node_info** @nodes, align 8
  br label %14

24:                                               ; preds = %14
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.node_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
