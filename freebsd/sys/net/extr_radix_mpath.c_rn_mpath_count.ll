; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rn_mpath_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rn_mpath_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.rtentry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rn_mpath_count(%struct.radix_node* %0) #0 {
  %2 = alloca %struct.radix_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtentry*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %8, %1
  %6 = load %struct.radix_node*, %struct.radix_node** %2, align 8
  %7 = icmp ne %struct.radix_node* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load %struct.radix_node*, %struct.radix_node** %2, align 8
  %10 = bitcast %struct.radix_node* %9 to %struct.rtentry*
  store %struct.rtentry* %10, %struct.rtentry** %4, align 8
  %11 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %12 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load %struct.radix_node*, %struct.radix_node** %2, align 8
  %19 = call %struct.radix_node* @rn_mpath_next(%struct.radix_node* %18)
  store %struct.radix_node* %19, %struct.radix_node** %2, align 8
  br label %5

20:                                               ; preds = %5
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.radix_node* @rn_mpath_next(%struct.radix_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
