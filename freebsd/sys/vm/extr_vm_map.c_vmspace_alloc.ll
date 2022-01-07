; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmspace = type { i32, i64, i64, i64, i64, i64, i64, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@vmspace_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"vm_map.pmap must be NULL\00", align 1
@KTR_VM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"vmspace_alloc: %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmspace* @vmspace_alloc(i32 %0, i32 %1, i32 (i32)* %2) #0 {
  %4 = alloca %struct.vmspace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32)*, align 8
  %8 = alloca %struct.vmspace*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 (i32)* %2, i32 (i32)** %7, align 8
  %9 = load i32, i32* @vmspace_zone, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = call %struct.vmspace* @uma_zalloc(i32 %9, i32 %10)
  store %struct.vmspace* %11, %struct.vmspace** %8, align 8
  %12 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %13 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32 (i32)*, i32 (i32)** %7, align 8
  %20 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %21 = call i32 @vmspace_pmap(%struct.vmspace* %20)
  %22 = call i32 %19(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @vmspace_zone, align 4
  %26 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %27 = call i32 @uma_zfree(i32 %25, %struct.vmspace* %26)
  store %struct.vmspace* null, %struct.vmspace** %4, align 8
  br label %58

28:                                               ; preds = %3
  %29 = load i32, i32* @KTR_VM, align 4
  %30 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %31 = call i32 @CTR1(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.vmspace* %30)
  %32 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %33 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %32, i32 0, i32 9
  %34 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %35 = call i32 @vmspace_pmap(%struct.vmspace* %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @_vm_map_init(%struct.TYPE_2__* %33, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %40 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %42 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %41, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %44 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %46 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %48 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %50 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %52 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %54 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %56 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  store %struct.vmspace* %57, %struct.vmspace** %4, align 8
  br label %58

58:                                               ; preds = %28, %24
  %59 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  ret %struct.vmspace* %59
}

declare dso_local %struct.vmspace* @uma_zalloc(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vmspace_pmap(%struct.vmspace*) #1

declare dso_local i32 @uma_zfree(i32, %struct.vmspace*) #1

declare dso_local i32 @CTR1(i32, i8*, %struct.vmspace*) #1

declare dso_local i32 @_vm_map_init(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
