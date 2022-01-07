; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_objhash_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_objhash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i64 (%struct.namedobj_instance*, i32, i32)*, i64, i32, i32*, i32* }
%struct.named_object = type { i32, i32, i32 }

@nn_next = common dso_local global i32 0, align 4
@nv_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_objhash_add(%struct.namedobj_instance* %0, %struct.named_object* %1) #0 {
  %3 = alloca %struct.namedobj_instance*, align 8
  %4 = alloca %struct.named_object*, align 8
  %5 = alloca i64, align 8
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %3, align 8
  store %struct.named_object* %1, %struct.named_object** %4, align 8
  %6 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %7 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %6, i32 0, i32 0
  %8 = load i64 (%struct.namedobj_instance*, i32, i32)*, i64 (%struct.namedobj_instance*, i32, i32)** %7, align 8
  %9 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %10 = load %struct.named_object*, %struct.named_object** %4, align 8
  %11 = getelementptr inbounds %struct.named_object, %struct.named_object* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.named_object*, %struct.named_object** %4, align 8
  %14 = getelementptr inbounds %struct.named_object, %struct.named_object* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 %8(%struct.namedobj_instance* %9, i32 %12, i32 %15)
  %17 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %18 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = urem i64 %16, %19
  store i64 %20, i64* %5, align 8
  %21 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %22 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load %struct.named_object*, %struct.named_object** %4, align 8
  %27 = load i32, i32* @nn_next, align 4
  %28 = call i32 @TAILQ_INSERT_HEAD(i32* %25, %struct.named_object* %26, i32 %27)
  %29 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %30 = load %struct.named_object*, %struct.named_object** %4, align 8
  %31 = getelementptr inbounds %struct.named_object, %struct.named_object* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @objhash_hash_idx(%struct.namedobj_instance* %29, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %35 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load %struct.named_object*, %struct.named_object** %4, align 8
  %40 = load i32, i32* @nv_next, align 4
  %41 = call i32 @TAILQ_INSERT_HEAD(i32* %38, %struct.named_object* %39, i32 %40)
  %42 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %43 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  ret void
}

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.named_object*, i32) #1

declare dso_local i64 @objhash_hash_idx(%struct.namedobj_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
