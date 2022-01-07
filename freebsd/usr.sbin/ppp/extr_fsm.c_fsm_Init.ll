; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.fsm_callbacks*, %struct.fsm_parent*, %struct.bundle*, %struct.link*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.bundle = type { i32 }
%struct.link = type { i32 }
%struct.fsm_parent = type { i32 }
%struct.fsm_callbacks = type { i32 }

@CODE_TERMACK = common dso_local global i32 0, align 4
@ST_OPENED = common dso_local global i32 0, align 4
@ST_INITIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsm_Init(%struct.fsm* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.bundle* %6, %struct.link* %7, %struct.fsm_parent* %8, %struct.fsm_callbacks* %9, i8** %10) #0 {
  %12 = alloca %struct.fsm*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bundle*, align 8
  %19 = alloca %struct.link*, align 8
  %20 = alloca %struct.fsm_parent*, align 8
  %21 = alloca %struct.fsm_callbacks*, align 8
  %22 = alloca i8**, align 8
  store %struct.fsm* %0, %struct.fsm** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store %struct.bundle* %6, %struct.bundle** %18, align 8
  store %struct.link* %7, %struct.link** %19, align 8
  store %struct.fsm_parent* %8, %struct.fsm_parent** %20, align 8
  store %struct.fsm_callbacks* %9, %struct.fsm_callbacks** %21, align 8
  store i8** %10, i8*** %22, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load %struct.fsm*, %struct.fsm** %12, align 8
  %25 = getelementptr inbounds %struct.fsm, %struct.fsm* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.fsm*, %struct.fsm** %12, align 8
  %28 = getelementptr inbounds %struct.fsm, %struct.fsm* %27, i32 0, i32 15
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load %struct.fsm*, %struct.fsm** %12, align 8
  %31 = getelementptr inbounds %struct.fsm, %struct.fsm* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %16, align 4
  %33 = load %struct.fsm*, %struct.fsm** %12, align 8
  %34 = getelementptr inbounds %struct.fsm, %struct.fsm* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.fsm*, %struct.fsm** %12, align 8
  %36 = getelementptr inbounds %struct.fsm, %struct.fsm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CODE_TERMACK, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %11
  %41 = load i32, i32* @ST_OPENED, align 4
  br label %44

42:                                               ; preds = %11
  %43 = load i32, i32* @ST_INITIAL, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load %struct.fsm*, %struct.fsm** %12, align 8
  %47 = getelementptr inbounds %struct.fsm, %struct.fsm* %46, i32 0, i32 14
  store i32 %45, i32* %47, align 4
  %48 = load %struct.fsm*, %struct.fsm** %12, align 8
  %49 = getelementptr inbounds %struct.fsm, %struct.fsm* %48, i32 0, i32 3
  store i32 1, i32* %49, align 8
  %50 = load %struct.fsm*, %struct.fsm** %12, align 8
  %51 = getelementptr inbounds %struct.fsm, %struct.fsm* %50, i32 0, i32 4
  store i32 1, i32* %51, align 4
  %52 = load %struct.fsm*, %struct.fsm** %12, align 8
  %53 = getelementptr inbounds %struct.fsm, %struct.fsm* %52, i32 0, i32 13
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 3, i32* %54, align 8
  %55 = load %struct.fsm*, %struct.fsm** %12, align 8
  %56 = getelementptr inbounds %struct.fsm, %struct.fsm* %55, i32 0, i32 13
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 3, i32* %57, align 4
  %58 = load %struct.fsm*, %struct.fsm** %12, align 8
  %59 = getelementptr inbounds %struct.fsm, %struct.fsm* %58, i32 0, i32 13
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 3, i32* %60, align 8
  %61 = load %struct.fsm*, %struct.fsm** %12, align 8
  %62 = getelementptr inbounds %struct.fsm, %struct.fsm* %61, i32 0, i32 8
  %63 = call i32 @memset(%struct.TYPE_4__* %62, i8 signext 0, i32 8)
  %64 = load %struct.fsm*, %struct.fsm** %12, align 8
  %65 = getelementptr inbounds %struct.fsm, %struct.fsm* %64, i32 0, i32 7
  %66 = call i32 @memset(%struct.TYPE_4__* %65, i8 signext 0, i32 8)
  %67 = load %struct.fsm*, %struct.fsm** %12, align 8
  %68 = getelementptr inbounds %struct.fsm, %struct.fsm* %67, i32 0, i32 6
  %69 = call i32 @memset(%struct.TYPE_4__* %68, i8 signext 0, i32 8)
  %70 = load i32, i32* %17, align 4
  %71 = load %struct.fsm*, %struct.fsm** %12, align 8
  %72 = getelementptr inbounds %struct.fsm, %struct.fsm* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.link*, %struct.link** %19, align 8
  %74 = load %struct.fsm*, %struct.fsm** %12, align 8
  %75 = getelementptr inbounds %struct.fsm, %struct.fsm* %74, i32 0, i32 12
  store %struct.link* %73, %struct.link** %75, align 8
  %76 = load %struct.bundle*, %struct.bundle** %18, align 8
  %77 = load %struct.fsm*, %struct.fsm** %12, align 8
  %78 = getelementptr inbounds %struct.fsm, %struct.fsm* %77, i32 0, i32 11
  store %struct.bundle* %76, %struct.bundle** %78, align 8
  %79 = load %struct.fsm_parent*, %struct.fsm_parent** %20, align 8
  %80 = load %struct.fsm*, %struct.fsm** %12, align 8
  %81 = getelementptr inbounds %struct.fsm, %struct.fsm* %80, i32 0, i32 10
  store %struct.fsm_parent* %79, %struct.fsm_parent** %81, align 8
  %82 = load %struct.fsm_callbacks*, %struct.fsm_callbacks** %21, align 8
  %83 = load %struct.fsm*, %struct.fsm** %12, align 8
  %84 = getelementptr inbounds %struct.fsm, %struct.fsm* %83, i32 0, i32 9
  store %struct.fsm_callbacks* %82, %struct.fsm_callbacks** %84, align 8
  %85 = load i8**, i8*** %22, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.fsm*, %struct.fsm** %12, align 8
  %89 = getelementptr inbounds %struct.fsm, %struct.fsm* %88, i32 0, i32 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  %91 = load i8**, i8*** %22, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.fsm*, %struct.fsm** %12, align 8
  %95 = getelementptr inbounds %struct.fsm, %struct.fsm* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  %97 = load i8**, i8*** %22, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 2
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.fsm*, %struct.fsm** %12, align 8
  %101 = getelementptr inbounds %struct.fsm, %struct.fsm* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
