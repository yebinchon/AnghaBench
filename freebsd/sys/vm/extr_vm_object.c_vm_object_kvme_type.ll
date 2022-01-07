; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_kvme_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_kvme_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.vnode = type { i32 }

@KVME_TYPE_DEFAULT = common dso_local global i32 0, align 4
@KVME_TYPE_VNODE = common dso_local global i32 0, align 4
@OBJ_TMPFS_NODE = common dso_local global i32 0, align 4
@KVME_TYPE_SWAP = common dso_local global i32 0, align 4
@KVME_TYPE_DEVICE = common dso_local global i32 0, align 4
@KVME_TYPE_PHYS = common dso_local global i32 0, align 4
@KVME_TYPE_DEAD = common dso_local global i32 0, align 4
@KVME_TYPE_SG = common dso_local global i32 0, align 4
@KVME_TYPE_MGTDEVICE = common dso_local global i32 0, align 4
@KVME_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_object_kvme_type(%struct.TYPE_5__* %0, %struct.vnode** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.vnode**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.vnode** %1, %struct.vnode*** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = call i32 @VM_OBJECT_ASSERT_LOCKED(%struct.TYPE_5__* %6)
  %8 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %9 = icmp ne %struct.vnode** %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = call %struct.vnode* @vm_object_vnode(%struct.TYPE_5__* %11)
  %13 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* %12, %struct.vnode** %13, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %43 [
    i32 134, label %18
    i32 128, label %20
    i32 129, label %22
    i32 133, label %33
    i32 131, label %35
    i32 135, label %37
    i32 130, label %39
    i32 132, label %41
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @KVME_TYPE_DEFAULT, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %14
  %21 = load i32, i32* @KVME_TYPE_VNODE, align 4
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OBJ_TMPFS_NODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @KVME_TYPE_VNODE, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %22
  %32 = load i32, i32* @KVME_TYPE_SWAP, align 4
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %14
  %34 = load i32, i32* @KVME_TYPE_DEVICE, align 4
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %14
  %36 = load i32, i32* @KVME_TYPE_PHYS, align 4
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %14
  %38 = load i32, i32* @KVME_TYPE_DEAD, align 4
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %14
  %40 = load i32, i32* @KVME_TYPE_SG, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %14
  %42 = load i32, i32* @KVME_TYPE_MGTDEVICE, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %14
  %44 = load i32, i32* @KVME_TYPE_UNKNOWN, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29, %20, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(%struct.TYPE_5__*) #1

declare dso_local %struct.vnode* @vm_object_vnode(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
