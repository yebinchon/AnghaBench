; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_strategy_args = type { %struct.vnode*, %struct.buf* }
%struct.vnode = type { i32 }
%struct.buf = type { i32, i32, i32 }
%struct.udf_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.bufobj* }
%struct.bufobj = type { i32 }

@DEV_BSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_strategy_args*)* @udf_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_strategy(%struct.vop_strategy_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_strategy_args*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.udf_node*, align 8
  %7 = alloca %struct.bufobj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vop_strategy_args* %0, %struct.vop_strategy_args** %3, align 8
  %12 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %12, i32 0, i32 1
  %14 = load %struct.buf*, %struct.buf** %13, align 8
  store %struct.buf* %14, %struct.buf** %4, align 8
  %15 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %15, i32 0, i32 0
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %17, %struct.vnode** %5, align 8
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = call %struct.udf_node* @VTON(%struct.vnode* %18)
  store %struct.udf_node* %19, %struct.udf_node** %6, align 8
  %20 = load %struct.buf*, %struct.buf** %4, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.buf*, %struct.buf** %4, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %1
  %28 = load %struct.udf_node*, %struct.udf_node** %6, align 8
  %29 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.buf*, %struct.buf** %4, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lblktosize(%struct.TYPE_2__* %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.udf_node*, %struct.udf_node** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @udf_bmap_internal(%struct.udf_node* %35, i32 %36, i32* %10, i32* %9)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load %struct.buf*, %struct.buf** %4, align 8
  %42 = call i32 @clrbuf(%struct.buf* %41)
  %43 = load %struct.buf*, %struct.buf** %4, align 8
  %44 = getelementptr inbounds %struct.buf, %struct.buf* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 4
  %45 = load %struct.buf*, %struct.buf** %4, align 8
  %46 = call i32 @bufdone(%struct.buf* %45)
  store i32 0, i32* %2, align 4
  br label %74

47:                                               ; preds = %27
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.udf_node*, %struct.udf_node** %6, align 8
  %50 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DEV_BSHIFT, align 4
  %55 = sub nsw i32 %53, %54
  %56 = shl i32 %48, %55
  %57 = load %struct.buf*, %struct.buf** %4, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %47, %1
  %60 = load %struct.udf_node*, %struct.udf_node** %6, align 8
  %61 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load %struct.bufobj*, %struct.bufobj** %63, align 8
  store %struct.bufobj* %64, %struct.bufobj** %7, align 8
  %65 = load %struct.buf*, %struct.buf** %4, align 8
  %66 = getelementptr inbounds %struct.buf, %struct.buf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dbtob(i32 %67)
  %69 = load %struct.buf*, %struct.buf** %4, align 8
  %70 = getelementptr inbounds %struct.buf, %struct.buf* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.bufobj*, %struct.bufobj** %7, align 8
  %72 = load %struct.buf*, %struct.buf** %4, align 8
  %73 = call i32 @BO_STRATEGY(%struct.bufobj* %71, %struct.buf* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %59, %40
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.udf_node* @VTON(%struct.vnode*) #1

declare dso_local i32 @lblktosize(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @udf_bmap_internal(%struct.udf_node*, i32, i32*, i32*) #1

declare dso_local i32 @clrbuf(%struct.buf*) #1

declare dso_local i32 @bufdone(%struct.buf*) #1

declare dso_local i32 @dbtob(i32) #1

declare dso_local i32 @BO_STRATEGY(%struct.bufobj*, %struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
