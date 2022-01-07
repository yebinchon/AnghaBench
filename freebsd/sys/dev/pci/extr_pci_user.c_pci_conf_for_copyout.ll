; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_user.c_pci_conf_for_copyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_user.c_pci_conf_for_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%union.pci_conf_union = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_conf*, %union.pci_conf_union*, i32)* @pci_conf_for_copyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_conf_for_copyout(%struct.pci_conf* %0, %union.pci_conf_union* %1, i32 %2) #0 {
  %4 = alloca %struct.pci_conf*, align 8
  %5 = alloca %union.pci_conf_union*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_conf* %0, %struct.pci_conf** %4, align 8
  store %union.pci_conf_union* %1, %union.pci_conf_union** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %union.pci_conf_union*, %union.pci_conf_union** %5, align 8
  %8 = call i32 @memset(%union.pci_conf_union* %7, i32 0, i32 64)
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %16 [
    i32 131, label %10
  ]

10:                                               ; preds = %3
  %11 = load %union.pci_conf_union*, %union.pci_conf_union** %5, align 8
  %12 = bitcast %union.pci_conf_union* %11 to %struct.pci_conf*
  %13 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %14 = bitcast %struct.pci_conf* %12 to i8*
  %15 = bitcast %struct.pci_conf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 4 %15, i64 56, i1 false)
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %10
  ret void
}

declare dso_local i32 @memset(%union.pci_conf_union*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
