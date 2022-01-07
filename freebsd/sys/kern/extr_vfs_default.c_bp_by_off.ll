; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_bp_by_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_bp_by_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_vector = type { i32 }
%struct.vop_generic_args = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.vop_vector*, %struct.vop_generic_args*)* @bp_by_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bp_by_off(%struct.vop_vector* %0, %struct.vop_generic_args* %1) #0 {
  %3 = alloca %struct.vop_vector*, align 8
  %4 = alloca %struct.vop_generic_args*, align 8
  store %struct.vop_vector* %0, %struct.vop_vector** %3, align 8
  store %struct.vop_generic_args* %1, %struct.vop_generic_args** %4, align 8
  %5 = load %struct.vop_vector*, %struct.vop_vector** %3, align 8
  %6 = bitcast %struct.vop_vector* %5 to i8*
  %7 = load %struct.vop_generic_args*, %struct.vop_generic_args** %4, align 8
  %8 = getelementptr inbounds %struct.vop_generic_args, %struct.vop_generic_args* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %6, i64 %12
  %14 = bitcast i8* %13 to i32**
  %15 = load i32*, i32** %14, align 8
  ret i32* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
