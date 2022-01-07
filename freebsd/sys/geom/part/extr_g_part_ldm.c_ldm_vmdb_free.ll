; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_vmdb_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_vmdb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldm_db = type { i32, i32 }
%struct.ldm_vblk = type { %struct.ldm_vblk* }
%struct.ldm_xvblk = type { %struct.ldm_xvblk* }

@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ldm_db*)* @ldm_vmdb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldm_vmdb_free(%struct.ldm_db* %0) #0 {
  %2 = alloca %struct.ldm_db*, align 8
  %3 = alloca %struct.ldm_vblk*, align 8
  %4 = alloca %struct.ldm_xvblk*, align 8
  store %struct.ldm_db* %0, %struct.ldm_db** %2, align 8
  br label %5

5:                                                ; preds = %11, %1
  %6 = load %struct.ldm_db*, %struct.ldm_db** %2, align 8
  %7 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %6, i32 0, i32 1
  %8 = call i32 @LIST_EMPTY(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %24

11:                                               ; preds = %5
  %12 = load %struct.ldm_db*, %struct.ldm_db** %2, align 8
  %13 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %12, i32 0, i32 1
  %14 = call %struct.ldm_xvblk* @LIST_FIRST(i32* %13)
  store %struct.ldm_xvblk* %14, %struct.ldm_xvblk** %4, align 8
  %15 = load %struct.ldm_xvblk*, %struct.ldm_xvblk** %4, align 8
  %16 = load i32, i32* @entry, align 4
  %17 = call i32 @LIST_REMOVE(%struct.ldm_xvblk* %15, i32 %16)
  %18 = load %struct.ldm_xvblk*, %struct.ldm_xvblk** %4, align 8
  %19 = getelementptr inbounds %struct.ldm_xvblk, %struct.ldm_xvblk* %18, i32 0, i32 0
  %20 = load %struct.ldm_xvblk*, %struct.ldm_xvblk** %19, align 8
  %21 = call i32 @g_free(%struct.ldm_xvblk* %20)
  %22 = load %struct.ldm_xvblk*, %struct.ldm_xvblk** %4, align 8
  %23 = call i32 @g_free(%struct.ldm_xvblk* %22)
  br label %5

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %31, %24
  %26 = load %struct.ldm_db*, %struct.ldm_db** %2, align 8
  %27 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %26, i32 0, i32 0
  %28 = call i32 @LIST_EMPTY(i32* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.ldm_db*, %struct.ldm_db** %2, align 8
  %33 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %32, i32 0, i32 0
  %34 = call %struct.ldm_xvblk* @LIST_FIRST(i32* %33)
  %35 = bitcast %struct.ldm_xvblk* %34 to %struct.ldm_vblk*
  store %struct.ldm_vblk* %35, %struct.ldm_vblk** %3, align 8
  %36 = load %struct.ldm_vblk*, %struct.ldm_vblk** %3, align 8
  %37 = bitcast %struct.ldm_vblk* %36 to %struct.ldm_xvblk*
  %38 = load i32, i32* @entry, align 4
  %39 = call i32 @LIST_REMOVE(%struct.ldm_xvblk* %37, i32 %38)
  %40 = load %struct.ldm_vblk*, %struct.ldm_vblk** %3, align 8
  %41 = bitcast %struct.ldm_vblk* %40 to %struct.ldm_xvblk*
  %42 = call i32 @g_free(%struct.ldm_xvblk* %41)
  br label %25

43:                                               ; preds = %25
  ret void
}

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local %struct.ldm_xvblk* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.ldm_xvblk*, i32) #1

declare dso_local i32 @g_free(%struct.ldm_xvblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
