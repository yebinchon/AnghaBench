; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_pack_list_insert.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_pack_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_list = type { %struct.pack_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pack_list* (%struct.pack_list**, %struct.pack_list*)* @pack_list_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pack_list* @pack_list_insert(%struct.pack_list** %0, %struct.pack_list* %1) #0 {
  %3 = alloca %struct.pack_list**, align 8
  %4 = alloca %struct.pack_list*, align 8
  %5 = alloca %struct.pack_list*, align 8
  store %struct.pack_list** %0, %struct.pack_list*** %3, align 8
  store %struct.pack_list* %1, %struct.pack_list** %4, align 8
  %6 = call %struct.pack_list* @xmalloc(i32 8)
  store %struct.pack_list* %6, %struct.pack_list** %5, align 8
  %7 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  %8 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %9 = call i32 @memcpy(%struct.pack_list* %7, %struct.pack_list* %8, i32 8)
  %10 = load %struct.pack_list**, %struct.pack_list*** %3, align 8
  %11 = load %struct.pack_list*, %struct.pack_list** %10, align 8
  %12 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  %13 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %12, i32 0, i32 0
  store %struct.pack_list* %11, %struct.pack_list** %13, align 8
  %14 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  %15 = load %struct.pack_list**, %struct.pack_list*** %3, align 8
  store %struct.pack_list* %14, %struct.pack_list** %15, align 8
  %16 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  ret %struct.pack_list* %16
}

declare dso_local %struct.pack_list* @xmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.pack_list*, %struct.pack_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
