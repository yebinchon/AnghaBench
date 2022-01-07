; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_prepcall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_prepcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vm86_kernel }
%struct.vm86_kernel = type { i32, i32 }
%struct.vm86frame = type { i32, i64, i64, i32, i64, i64, i64, i64, i64 }

@PAGE_MASK = common dso_local global i32 0, align 4
@INTn = common dso_local global i32 0, align 4
@HLT = common dso_local global i32 0, align 4
@PSL_VIF = common dso_local global i32 0, align 4
@PSL_VM = common dso_local global i32 0, align 4
@PSL_USER = common dso_local global i32 0, align 4
@curpcb = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm86_prepcall(%struct.vm86frame* %0) #0 {
  %2 = alloca %struct.vm86frame*, align 8
  %3 = alloca %struct.vm86_kernel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.vm86frame* %0, %struct.vm86frame** %2, align 8
  store i32* inttoptr (i64 2560 to i32*), i32** %5, align 8
  store i32* inttoptr (i64 4094 to i32*), i32** %4, align 8
  %6 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %7 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PAGE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp sle i32 %10, 255
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load i32, i32* @INTn, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %17 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 255
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @HLT, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = ptrtoint i32* %25 to i64
  %27 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %28 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %30 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %29, i32 0, i32 8
  store i64 0, i64* %30, align 8
  br label %42

31:                                               ; preds = %1
  %32 = load i32, i32* @HLT, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 -1
  store i32* %36, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = ptrtoint i32* %37 to i64
  %39 = call i32 @MAKE_VEC(i32 0, i64 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %31, %12
  %43 = load i32*, i32** %4, align 8
  %44 = ptrtoint i32* %43 to i64
  %45 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %46 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %48 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %47, i32 0, i32 7
  store i64 0, i64* %48, align 8
  %49 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %50 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %52 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %54 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @PSL_VIF, align 4
  %56 = load i32, i32* @PSL_VM, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PSL_USER, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %61 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curpcb, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store %struct.vm86_kernel* %65, %struct.vm86_kernel** %3, align 8
  %66 = load %struct.vm86_kernel*, %struct.vm86_kernel** %3, align 8
  %67 = getelementptr inbounds %struct.vm86_kernel, %struct.vm86_kernel* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %42
  %71 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %72 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vm86_kernel*, %struct.vm86_kernel** %3, align 8
  %75 = getelementptr inbounds %struct.vm86_kernel, %struct.vm86_kernel* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %42
  ret void
}

declare dso_local i32 @MAKE_VEC(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
