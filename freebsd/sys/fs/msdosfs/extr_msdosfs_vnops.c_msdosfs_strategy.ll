; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_strategy_args = type { i32, %struct.buf* }
%struct.buf = type { i32, i32, i32, i32, i32 }
%struct.denode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bufobj* }
%struct.bufobj = type { i32 }

@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_strategy_args*)* @msdosfs_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_strategy(%struct.vop_strategy_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_strategy_args*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.denode*, align 8
  %6 = alloca %struct.bufobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vop_strategy_args* %0, %struct.vop_strategy_args** %3, align 8
  %9 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %9, i32 0, i32 1
  %11 = load %struct.buf*, %struct.buf** %10, align 8
  store %struct.buf* %11, %struct.buf** %4, align 8
  %12 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.denode* @VTODE(i32 %14)
  store %struct.denode* %15, %struct.denode** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.buf*, %struct.buf** %4, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.buf*, %struct.buf** %4, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %1
  %24 = load %struct.denode*, %struct.denode** %5, align 8
  %25 = load %struct.buf*, %struct.buf** %4, align 8
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pcbmap(%struct.denode* %24, i32 %27, i32* %8, i32 0, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.buf*, %struct.buf** %4, align 8
  %31 = getelementptr inbounds %struct.buf, %struct.buf* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.buf*, %struct.buf** %4, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @BIO_ERROR, align 4
  %39 = load %struct.buf*, %struct.buf** %4, align 8
  %40 = getelementptr inbounds %struct.buf, %struct.buf* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.buf*, %struct.buf** %4, align 8
  %44 = call i32 @bufdone(%struct.buf* %43)
  store i32 0, i32* %2, align 4
  br label %78

45:                                               ; preds = %23
  %46 = load %struct.buf*, %struct.buf** %4, align 8
  %47 = getelementptr inbounds %struct.buf, %struct.buf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.buf*, %struct.buf** %4, align 8
  %53 = call i32 @vfs_bio_clrbuf(%struct.buf* %52)
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.buf*, %struct.buf** %4, align 8
  %57 = getelementptr inbounds %struct.buf, %struct.buf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.buf*, %struct.buf** %4, align 8
  %62 = call i32 @bufdone(%struct.buf* %61)
  store i32 0, i32* %2, align 4
  br label %78

63:                                               ; preds = %55
  %64 = load %struct.buf*, %struct.buf** %4, align 8
  %65 = getelementptr inbounds %struct.buf, %struct.buf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dbtob(i32 %66)
  %68 = load %struct.buf*, %struct.buf** %4, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.denode*, %struct.denode** %5, align 8
  %71 = getelementptr inbounds %struct.denode, %struct.denode* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load %struct.bufobj*, %struct.bufobj** %73, align 8
  store %struct.bufobj* %74, %struct.bufobj** %6, align 8
  %75 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %76 = load %struct.buf*, %struct.buf** %4, align 8
  %77 = call i32 @BO_STRATEGY(%struct.bufobj* %75, %struct.buf* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %63, %60, %34
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.denode* @VTODE(i32) #1

declare dso_local i32 @pcbmap(%struct.denode*, i32, i32*, i32, i32) #1

declare dso_local i32 @bufdone(%struct.buf*) #1

declare dso_local i32 @vfs_bio_clrbuf(%struct.buf*) #1

declare dso_local i32 @dbtob(i32) #1

declare dso_local i32 @BO_STRATEGY(%struct.bufobj*, %struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
