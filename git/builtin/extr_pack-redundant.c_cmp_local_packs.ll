; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_cmp_local_packs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_cmp_local_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_list = type { %struct.pack_list* }

@local_packs = common dso_local global %struct.pack_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cmp_local_packs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmp_local_packs() #0 {
  %1 = alloca %struct.pack_list*, align 8
  %2 = alloca %struct.pack_list*, align 8
  %3 = load %struct.pack_list*, %struct.pack_list** @local_packs, align 8
  store %struct.pack_list* %3, %struct.pack_list** %2, align 8
  br label %4

4:                                                ; preds = %17, %0
  %5 = load %struct.pack_list*, %struct.pack_list** %2, align 8
  store %struct.pack_list* %5, %struct.pack_list** %1, align 8
  %6 = icmp ne %struct.pack_list* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %13, %7
  %9 = load %struct.pack_list*, %struct.pack_list** %1, align 8
  %10 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %9, i32 0, i32 0
  %11 = load %struct.pack_list*, %struct.pack_list** %10, align 8
  store %struct.pack_list* %11, %struct.pack_list** %1, align 8
  %12 = icmp ne %struct.pack_list* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.pack_list*, %struct.pack_list** %2, align 8
  %15 = load %struct.pack_list*, %struct.pack_list** %1, align 8
  %16 = call i32 @cmp_two_packs(%struct.pack_list* %14, %struct.pack_list* %15)
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.pack_list*, %struct.pack_list** %2, align 8
  %19 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %18, i32 0, i32 0
  %20 = load %struct.pack_list*, %struct.pack_list** %19, align 8
  store %struct.pack_list* %20, %struct.pack_list** %2, align 8
  br label %4

21:                                               ; preds = %4
  ret void
}

declare dso_local i32 @cmp_two_packs(%struct.pack_list*, %struct.pack_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
