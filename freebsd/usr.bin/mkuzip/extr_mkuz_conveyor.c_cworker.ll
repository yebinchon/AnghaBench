; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_conveyor.c_cworker.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_conveyor.c_cworker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkuz_blk = type { %struct.TYPE_4__, i32, %struct.mkuz_conveyor*, %struct.mkuz_cfg* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mkuz_conveyor = type { i32, i32 }
%struct.mkuz_cfg = type { i64, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 (i8*, %struct.mkuz_blk*, %struct.mkuz_blk*)*, i8* (i32*)* }
%struct.cw_args = type { %struct.TYPE_4__, i32, %struct.mkuz_conveyor*, %struct.mkuz_cfg* }

@MKUZ_BLK_EOF = common dso_local global %struct.mkuz_blk* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @cworker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cworker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cw_args*, align 8
  %4 = alloca %struct.mkuz_cfg*, align 8
  %5 = alloca %struct.mkuz_blk*, align 8
  %6 = alloca %struct.mkuz_blk*, align 8
  %7 = alloca %struct.mkuz_conveyor*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.cw_args*
  store %struct.cw_args* %10, %struct.cw_args** %3, align 8
  %11 = load %struct.cw_args*, %struct.cw_args** %3, align 8
  %12 = getelementptr inbounds %struct.cw_args, %struct.cw_args* %11, i32 0, i32 3
  %13 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %12, align 8
  store %struct.mkuz_cfg* %13, %struct.mkuz_cfg** %4, align 8
  %14 = load %struct.cw_args*, %struct.cw_args** %3, align 8
  %15 = getelementptr inbounds %struct.cw_args, %struct.cw_args* %14, i32 0, i32 2
  %16 = load %struct.mkuz_conveyor*, %struct.mkuz_conveyor** %15, align 8
  store %struct.mkuz_conveyor* %16, %struct.mkuz_conveyor** %7, align 8
  %17 = load %struct.cw_args*, %struct.cw_args** %3, align 8
  %18 = bitcast %struct.cw_args* %17 to %struct.mkuz_blk*
  %19 = call i32 @free(%struct.mkuz_blk* %18)
  %20 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i8* (i32*)*, i8* (i32*)** %23, align 8
  %25 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %25, i32 0, i32 4
  %27 = call i8* %24(i32* %26)
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %81, %1
  %29 = load %struct.mkuz_conveyor*, %struct.mkuz_conveyor** %7, align 8
  %30 = getelementptr inbounds %struct.mkuz_conveyor, %struct.mkuz_conveyor* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.mkuz_blk* @mkuz_fqueue_deq(i32 %31)
  store %struct.mkuz_blk* %32, %struct.mkuz_blk** %6, align 8
  %33 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %34 = load %struct.mkuz_blk*, %struct.mkuz_blk** @MKUZ_BLK_EOF, align 8
  %35 = icmp eq %struct.mkuz_blk* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.mkuz_conveyor*, %struct.mkuz_conveyor** %7, align 8
  %38 = getelementptr inbounds %struct.mkuz_conveyor, %struct.mkuz_conveyor* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %41 = call i32 @mkuz_fqueue_enq(i32 %39, %struct.mkuz_blk* %40)
  br label %96

42:                                               ; preds = %28
  %43 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %4, align 8
  %44 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %49 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %52 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @mkuz_memvcmp(i32 %50, i8 signext 0, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = call %struct.mkuz_blk* @mkuz_blk_ctor(i32 0)
  store %struct.mkuz_blk* %58, %struct.mkuz_blk** %5, align 8
  br label %81

59:                                               ; preds = %47, %42
  %60 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %4, align 8
  %61 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.mkuz_blk* @mkuz_blk_ctor(i32 %62)
  store %struct.mkuz_blk* %63, %struct.mkuz_blk** %5, align 8
  %64 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %4, align 8
  %65 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (i8*, %struct.mkuz_blk*, %struct.mkuz_blk*)*, i32 (i8*, %struct.mkuz_blk*, %struct.mkuz_blk*)** %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %71 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %72 = call i32 %68(i8* %69, %struct.mkuz_blk* %70, %struct.mkuz_blk* %71)
  %73 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %4, align 8
  %74 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %79 = call i32 @compute_digest(%struct.mkuz_blk* %78)
  br label %80

80:                                               ; preds = %77, %59
  br label %81

81:                                               ; preds = %80, %57
  %82 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %83 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %87 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.mkuz_conveyor*, %struct.mkuz_conveyor** %7, align 8
  %90 = getelementptr inbounds %struct.mkuz_conveyor, %struct.mkuz_conveyor* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %93 = call i32 @mkuz_fqueue_enq(i32 %91, %struct.mkuz_blk* %92)
  %94 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %95 = call i32 @free(%struct.mkuz_blk* %94)
  br label %28

96:                                               ; preds = %36
  ret i8* null
}

declare dso_local i32 @free(%struct.mkuz_blk*) #1

declare dso_local %struct.mkuz_blk* @mkuz_fqueue_deq(i32) #1

declare dso_local i32 @mkuz_fqueue_enq(i32, %struct.mkuz_blk*) #1

declare dso_local i64 @mkuz_memvcmp(i32, i8 signext, i32) #1

declare dso_local %struct.mkuz_blk* @mkuz_blk_ctor(i32) #1

declare dso_local i32 @compute_digest(%struct.mkuz_blk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
