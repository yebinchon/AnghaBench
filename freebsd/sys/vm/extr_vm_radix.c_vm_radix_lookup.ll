; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_radix.c_vm_radix_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_radix.c_vm_radix_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vm_radix = type { i32 }
%struct.vm_radix_node = type { %struct.vm_radix_node**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @vm_radix_lookup(%struct.vm_radix* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.vm_radix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_radix_node*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.vm_radix* %0, %struct.vm_radix** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vm_radix*, %struct.vm_radix** %4, align 8
  %10 = call %struct.vm_radix_node* @vm_radix_getroot(%struct.vm_radix* %9)
  store %struct.vm_radix_node* %10, %struct.vm_radix_node** %6, align 8
  br label %11

11:                                               ; preds = %36, %2
  %12 = load %struct.vm_radix_node*, %struct.vm_radix_node** %6, align 8
  %13 = icmp ne %struct.vm_radix_node* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load %struct.vm_radix_node*, %struct.vm_radix_node** %6, align 8
  %16 = call i64 @vm_radix_isleaf(%struct.vm_radix_node* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.vm_radix_node*, %struct.vm_radix_node** %6, align 8
  %20 = call %struct.TYPE_4__* @vm_radix_topage(%struct.vm_radix_node* %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %3, align 8
  br label %50

28:                                               ; preds = %18
  br label %49

29:                                               ; preds = %14
  %30 = load %struct.vm_radix_node*, %struct.vm_radix_node** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @vm_radix_keybarr(%struct.vm_radix_node* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %49

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.vm_radix_node*, %struct.vm_radix_node** %6, align 8
  %39 = getelementptr inbounds %struct.vm_radix_node, %struct.vm_radix_node* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @vm_radix_slot(i32 %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.vm_radix_node*, %struct.vm_radix_node** %6, align 8
  %43 = getelementptr inbounds %struct.vm_radix_node, %struct.vm_radix_node* %42, i32 0, i32 0
  %44 = load %struct.vm_radix_node**, %struct.vm_radix_node*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.vm_radix_node*, %struct.vm_radix_node** %44, i64 %46
  %48 = load %struct.vm_radix_node*, %struct.vm_radix_node** %47, align 8
  store %struct.vm_radix_node* %48, %struct.vm_radix_node** %6, align 8
  br label %11

49:                                               ; preds = %34, %28, %11
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %51
}

declare dso_local %struct.vm_radix_node* @vm_radix_getroot(%struct.vm_radix*) #1

declare dso_local i64 @vm_radix_isleaf(%struct.vm_radix_node*) #1

declare dso_local %struct.TYPE_4__* @vm_radix_topage(%struct.vm_radix_node*) #1

declare dso_local i64 @vm_radix_keybarr(%struct.vm_radix_node*, i32) #1

declare dso_local i32 @vm_radix_slot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
