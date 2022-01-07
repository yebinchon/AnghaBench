; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pctrie.c_pctrie_getroot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pctrie.c_pctrie_getroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pctrie_node = type { i32 }
%struct.pctrie = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pctrie_node* (%struct.pctrie*)* @pctrie_getroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pctrie_node* @pctrie_getroot(%struct.pctrie* %0) #0 {
  %2 = alloca %struct.pctrie*, align 8
  store %struct.pctrie* %0, %struct.pctrie** %2, align 8
  %3 = load %struct.pctrie*, %struct.pctrie** %2, align 8
  %4 = getelementptr inbounds %struct.pctrie, %struct.pctrie* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to %struct.pctrie_node*
  ret %struct.pctrie_node* %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
