; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2fifo_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2fifo_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.vop_kqfilter_args*)* }
%struct.vop_kqfilter_args = type { i32 }

@fifo_specops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_kqfilter_args*)* @ext2fifo_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2fifo_kqfilter(%struct.vop_kqfilter_args* %0) #0 {
  %2 = alloca %struct.vop_kqfilter_args*, align 8
  %3 = alloca i32, align 4
  store %struct.vop_kqfilter_args* %0, %struct.vop_kqfilter_args** %2, align 8
  %4 = load i32 (%struct.vop_kqfilter_args*)*, i32 (%struct.vop_kqfilter_args*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fifo_specops, i32 0, i32 0), align 8
  %5 = load %struct.vop_kqfilter_args*, %struct.vop_kqfilter_args** %2, align 8
  %6 = call i32 %4(%struct.vop_kqfilter_args* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.vop_kqfilter_args*, %struct.vop_kqfilter_args** %2, align 8
  %11 = call i32 @vfs_kqfilter(%struct.vop_kqfilter_args* %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* %3, align 4
  ret i32 %13
}

declare dso_local i32 @vfs_kqfilter(%struct.vop_kqfilter_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
