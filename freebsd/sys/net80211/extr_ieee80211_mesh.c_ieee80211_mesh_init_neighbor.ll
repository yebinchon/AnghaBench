; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_mesh_init_neighbor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_mesh_init_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.ieee80211_frame = type { i32 }
%struct.ieee80211_scanparams = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mesh_init_neighbor(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, %struct.ieee80211_scanparams* %2) #0 {
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca %struct.ieee80211_scanparams*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %5, align 8
  store %struct.ieee80211_scanparams* %2, %struct.ieee80211_scanparams** %6, align 8
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %8 = load %struct.ieee80211_scanparams*, %struct.ieee80211_scanparams** %6, align 8
  %9 = getelementptr inbounds %struct.ieee80211_scanparams, %struct.ieee80211_scanparams* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ieee80211_parse_meshid(%struct.ieee80211_node* %7, i32 %10)
  ret void
}

declare dso_local i32 @ieee80211_parse_meshid(%struct.ieee80211_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
