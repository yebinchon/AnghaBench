; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_strategy_args = type { %struct.vnode*, %struct.buf* }
%struct.vnode = type { i64, i32 }
%struct.buf = type { i64, i64, i32, i32, i32 }
%struct.bufobj = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.bufobj* }

@VBLK = common dso_local global i64 0, align 8
@VCHR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ext2_strategy: spec\00", align 1
@IN_E4EXTENTS = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_strategy_args*)* @ext2_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_strategy(%struct.vop_strategy_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_strategy_args*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.bufobj*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vop_strategy_args* %0, %struct.vop_strategy_args** %3, align 8
  %9 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %9, i32 0, i32 1
  %11 = load %struct.buf*, %struct.buf** %10, align 8
  store %struct.buf* %11, %struct.buf** %4, align 8
  %12 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %12, i32 0, i32 0
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %5, align 8
  %15 = load %struct.vnode*, %struct.vnode** %5, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VBLK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VCHR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %1
  %27 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.buf*, %struct.buf** %4, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.buf*, %struct.buf** %4, align 8
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %84

36:                                               ; preds = %28
  %37 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %37, i32 0, i32 0
  %39 = load %struct.vnode*, %struct.vnode** %38, align 8
  %40 = call %struct.TYPE_3__* @VTOI(%struct.vnode* %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IN_E4EXTENTS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.vnode*, %struct.vnode** %5, align 8
  %48 = load %struct.buf*, %struct.buf** %4, align 8
  %49 = getelementptr inbounds %struct.buf, %struct.buf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ext4_bmapext(%struct.vnode* %47, i64 %50, i64* %7, i32* null, i32* null)
  store i32 %51, i32* %8, align 4
  br label %58

52:                                               ; preds = %36
  %53 = load %struct.vnode*, %struct.vnode** %5, align 8
  %54 = load %struct.buf*, %struct.buf** %4, align 8
  %55 = getelementptr inbounds %struct.buf, %struct.buf* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ext2_bmaparray(%struct.vnode* %53, i64 %56, i64* %7, i32* null, i32* null)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.buf*, %struct.buf** %4, align 8
  %61 = getelementptr inbounds %struct.buf, %struct.buf* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.buf*, %struct.buf** %4, align 8
  %67 = getelementptr inbounds %struct.buf, %struct.buf* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @BIO_ERROR, align 4
  %69 = load %struct.buf*, %struct.buf** %4, align 8
  %70 = getelementptr inbounds %struct.buf, %struct.buf* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.buf*, %struct.buf** %4, align 8
  %74 = call i32 @bufdone(%struct.buf* %73)
  store i32 0, i32* %2, align 4
  br label %108

75:                                               ; preds = %58
  %76 = load %struct.buf*, %struct.buf** %4, align 8
  %77 = getelementptr inbounds %struct.buf, %struct.buf* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.buf*, %struct.buf** %4, align 8
  %82 = call i32 @vfs_bio_clrbuf(%struct.buf* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %28
  %85 = load %struct.buf*, %struct.buf** %4, align 8
  %86 = getelementptr inbounds %struct.buf, %struct.buf* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.buf*, %struct.buf** %4, align 8
  %91 = call i32 @bufdone(%struct.buf* %90)
  store i32 0, i32* %2, align 4
  br label %108

92:                                               ; preds = %84
  %93 = load %struct.buf*, %struct.buf** %4, align 8
  %94 = getelementptr inbounds %struct.buf, %struct.buf* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @dbtob(i64 %95)
  %97 = load %struct.buf*, %struct.buf** %4, align 8
  %98 = getelementptr inbounds %struct.buf, %struct.buf* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.vnode*, %struct.vnode** %5, align 8
  %100 = getelementptr inbounds %struct.vnode, %struct.vnode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call %struct.TYPE_4__* @VFSTOEXT2(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.bufobj*, %struct.bufobj** %103, align 8
  store %struct.bufobj* %104, %struct.bufobj** %6, align 8
  %105 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %106 = load %struct.buf*, %struct.buf** %4, align 8
  %107 = call i32 @BO_STRATEGY(%struct.bufobj* %105, %struct.buf* %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %92, %89, %64
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.TYPE_3__* @VTOI(%struct.vnode*) #1

declare dso_local i32 @ext4_bmapext(%struct.vnode*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @ext2_bmaparray(%struct.vnode*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @bufdone(%struct.buf*) #1

declare dso_local i32 @vfs_bio_clrbuf(%struct.buf*) #1

declare dso_local i32 @dbtob(i64) #1

declare dso_local %struct.TYPE_4__* @VFSTOEXT2(i32) #1

declare dso_local i32 @BO_STRATEGY(%struct.bufobj*, %struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
