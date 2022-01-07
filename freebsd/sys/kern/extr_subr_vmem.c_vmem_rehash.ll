; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_rehash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.vmem_hashlist*, %struct.vmem_hashlist* }
%struct.vmem_hashlist = type { i32 }

@M_VMEM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @vmem_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmem_rehash(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmem_hashlist*, align 8
  %9 = alloca %struct.vmem_hashlist*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @MPASS(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @M_VMEM, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = call %struct.vmem_hashlist* @malloc(i32 %18, i32 %19, i32 %20)
  store %struct.vmem_hashlist* %21, %struct.vmem_hashlist** %8, align 8
  %22 = load %struct.vmem_hashlist*, %struct.vmem_hashlist** %8, align 8
  %23 = icmp eq %struct.vmem_hashlist* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %3, align 4
  br label %97

26:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %37, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.vmem_hashlist*, %struct.vmem_hashlist** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vmem_hashlist, %struct.vmem_hashlist* %32, i64 %34
  %36 = call i32 @LIST_INIT(%struct.vmem_hashlist* %35)
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %27

40:                                               ; preds = %27
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = call i32 @VMEM_LOCK(%struct.TYPE_7__* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load %struct.vmem_hashlist*, %struct.vmem_hashlist** %44, align 8
  store %struct.vmem_hashlist* %45, %struct.vmem_hashlist** %9, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %10, align 4
  %49 = load %struct.vmem_hashlist*, %struct.vmem_hashlist** %8, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store %struct.vmem_hashlist* %49, %struct.vmem_hashlist** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.vmem_hashlist*, %struct.vmem_hashlist** %9, align 8
  %56 = icmp eq %struct.vmem_hashlist* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = call i32 @VMEM_UNLOCK(%struct.TYPE_7__* %58)
  store i32 0, i32* %3, align 4
  br label %97

60:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %73, %65
  %67 = load %struct.vmem_hashlist*, %struct.vmem_hashlist** %9, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.vmem_hashlist, %struct.vmem_hashlist* %67, i64 %69
  %71 = call i32* @LIST_FIRST(%struct.vmem_hashlist* %70)
  store i32* %71, i32** %6, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @bt_rembusy(%struct.TYPE_7__* %74, i32* %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @bt_insbusy(%struct.TYPE_7__* %77, i32* %78)
  br label %66

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %61

84:                                               ; preds = %61
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = call i32 @VMEM_UNLOCK(%struct.TYPE_7__* %85)
  %87 = load %struct.vmem_hashlist*, %struct.vmem_hashlist** %9, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.vmem_hashlist*, %struct.vmem_hashlist** %89, align 8
  %91 = icmp ne %struct.vmem_hashlist* %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load %struct.vmem_hashlist*, %struct.vmem_hashlist** %9, align 8
  %94 = load i32, i32* @M_VMEM, align 4
  %95 = call i32 @free(%struct.vmem_hashlist* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %84
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %57, %24
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.vmem_hashlist* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(%struct.vmem_hashlist*) #1

declare dso_local i32 @VMEM_LOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @VMEM_UNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32* @LIST_FIRST(%struct.vmem_hashlist*) #1

declare dso_local i32 @bt_rembusy(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @bt_insbusy(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @free(%struct.vmem_hashlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
