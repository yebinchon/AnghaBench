; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_removeit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_removeit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sillyrename = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.vnode = type { i32 }

@VBAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_removeit(%struct.sillyrename* %0, %struct.vnode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sillyrename*, align 8
  %5 = alloca %struct.vnode*, align 8
  store %struct.sillyrename* %0, %struct.sillyrename** %4, align 8
  store %struct.vnode* %1, %struct.vnode** %5, align 8
  %6 = load %struct.sillyrename*, %struct.sillyrename** %4, align 8
  %7 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VBAD, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.sillyrename*, %struct.sillyrename** %4, align 8
  %16 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = load %struct.sillyrename*, %struct.sillyrename** %4, align 8
  %20 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sillyrename*, %struct.sillyrename** %4, align 8
  %23 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sillyrename*, %struct.sillyrename** %4, align 8
  %26 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @nfs_removerpc(%struct.TYPE_2__* %17, %struct.vnode* %18, i32 %21, i32 %24, i32 %27, i32* null)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %14, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @nfs_removerpc(%struct.TYPE_2__*, %struct.vnode*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
