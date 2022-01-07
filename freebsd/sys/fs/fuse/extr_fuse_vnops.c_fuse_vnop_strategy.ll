; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_strategy_args = type { %struct.buf*, %struct.vnode* }
%struct.buf = type { i32, i32 }
%struct.vnode = type { i32 }

@BIO_ERROR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_strategy_args*)* @fuse_vnop_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_strategy(%struct.vop_strategy_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_strategy_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.buf*, align 8
  store %struct.vop_strategy_args* %0, %struct.vop_strategy_args** %3, align 8
  %6 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %6, i32 0, i32 1
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %4, align 8
  %9 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %9, i32 0, i32 0
  %11 = load %struct.buf*, %struct.buf** %10, align 8
  store %struct.buf* %11, %struct.buf** %5, align 8
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = icmp ne %struct.vnode* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = call i64 @fuse_isdeadfs(%struct.vnode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14, %1
  %19 = load i32, i32* @BIO_ERROR, align 4
  %20 = load %struct.buf*, %struct.buf** %5, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @ENXIO, align 4
  %25 = load %struct.buf*, %struct.buf** %5, align 8
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.buf*, %struct.buf** %5, align 8
  %28 = call i32 @bufdone(%struct.buf* %27)
  store i32 0, i32* %2, align 4
  br label %33

29:                                               ; preds = %14
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = load %struct.buf*, %struct.buf** %5, align 8
  %32 = call i32 @fuse_io_strategy(%struct.vnode* %30, %struct.buf* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i32 @bufdone(%struct.buf*) #1

declare dso_local i32 @fuse_io_strategy(%struct.vnode*, %struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
