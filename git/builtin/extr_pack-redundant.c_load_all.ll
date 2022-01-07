; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_load_all.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_load_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { %struct.packed_git* }

@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_all() #0 {
  %1 = alloca %struct.packed_git*, align 8
  %2 = load i32, i32* @the_repository, align 4
  %3 = call %struct.packed_git* @get_all_packs(i32 %2)
  store %struct.packed_git* %3, %struct.packed_git** %1, align 8
  br label %4

4:                                                ; preds = %7, %0
  %5 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %6 = icmp ne %struct.packed_git* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %9 = call i32 @add_pack(%struct.packed_git* %8)
  %10 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %11 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %10, i32 0, i32 0
  %12 = load %struct.packed_git*, %struct.packed_git** %11, align 8
  store %struct.packed_git* %12, %struct.packed_git** %1, align 8
  br label %4

13:                                               ; preds = %4
  ret void
}

declare dso_local %struct.packed_git* @get_all_packs(i32) #1

declare dso_local i32 @add_pack(%struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
