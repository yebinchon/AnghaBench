; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_mark_in_pack_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_mark_in_pack_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.packed_git = type { i32 }
%struct.in_pack = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.object*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, %struct.packed_git*, %struct.in_pack*)* @mark_in_pack_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_in_pack_object(%struct.object* %0, %struct.packed_git* %1, %struct.in_pack* %2) #0 {
  %4 = alloca %struct.object*, align 8
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca %struct.in_pack*, align 8
  store %struct.object* %0, %struct.object** %4, align 8
  store %struct.packed_git* %1, %struct.packed_git** %5, align 8
  store %struct.in_pack* %2, %struct.in_pack** %6, align 8
  %7 = load %struct.object*, %struct.object** %4, align 8
  %8 = getelementptr inbounds %struct.object, %struct.object* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %12 = call i32 @find_pack_entry_one(i32 %10, %struct.packed_git* %11)
  %13 = load %struct.in_pack*, %struct.in_pack** %6, align 8
  %14 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.in_pack*, %struct.in_pack** %6, align 8
  %17 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %12, i32* %20, align 8
  %21 = load %struct.object*, %struct.object** %4, align 8
  %22 = load %struct.in_pack*, %struct.in_pack** %6, align 8
  %23 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.in_pack*, %struct.in_pack** %6, align 8
  %26 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.object* %21, %struct.object** %29, align 8
  %30 = load %struct.in_pack*, %struct.in_pack** %6, align 8
  %31 = getelementptr inbounds %struct.in_pack, %struct.in_pack* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  ret void
}

declare dso_local i32 @find_pack_entry_one(i32, %struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
