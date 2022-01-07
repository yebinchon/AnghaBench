; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_export_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_export_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcred = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mount = type { i32, %struct.netexport* }
%struct.netexport = type { %struct.netcred, %struct.radix_node_head*, %struct.radix_node_head* }
%struct.radix_node_head = type { i32, i64 (%struct.sockaddr*, i32*)* }
%struct.sockaddr = type { i32 }

@RADIX_NODE_HEAD_RLOCK_TRACKER = common dso_local global i32 0, align 4
@MNT_EXPORTED = common dso_local global i32 0, align 4
@RNF_ROOT = common dso_local global i32 0, align 4
@MNT_DEFEXPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netcred* (%struct.mount*, %struct.sockaddr*)* @vfs_export_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netcred* @vfs_export_lookup(%struct.mount* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.netcred*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.netexport*, align 8
  %7 = alloca %struct.netcred*, align 8
  %8 = alloca %struct.radix_node_head*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %10 = load i32, i32* @RADIX_NODE_HEAD_RLOCK_TRACKER, align 4
  store %struct.netcred* null, %struct.netcred** %7, align 8
  %11 = load %struct.mount*, %struct.mount** %4, align 8
  %12 = getelementptr inbounds %struct.mount, %struct.mount* %11, i32 0, i32 1
  %13 = load %struct.netexport*, %struct.netexport** %12, align 8
  store %struct.netexport* %13, %struct.netexport** %6, align 8
  %14 = load %struct.netexport*, %struct.netexport** %6, align 8
  %15 = icmp eq %struct.netexport* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.netcred* null, %struct.netcred** %3, align 8
  br label %86

17:                                               ; preds = %2
  %18 = load %struct.mount*, %struct.mount** %4, align 8
  %19 = getelementptr inbounds %struct.mount, %struct.mount* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MNT_EXPORTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store %struct.netcred* null, %struct.netcred** %3, align 8
  br label %86

25:                                               ; preds = %17
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = icmp ne %struct.sockaddr* %26, null
  br i1 %27, label %28, label %71

28:                                               ; preds = %25
  %29 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %29, %struct.sockaddr** %9, align 8
  store %struct.radix_node_head* null, %struct.radix_node_head** %8, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %41 [
    i32 129, label %33
    i32 128, label %37
  ]

33:                                               ; preds = %28
  %34 = load %struct.netexport*, %struct.netexport** %6, align 8
  %35 = getelementptr inbounds %struct.netexport, %struct.netexport* %34, i32 0, i32 2
  %36 = load %struct.radix_node_head*, %struct.radix_node_head** %35, align 8
  store %struct.radix_node_head* %36, %struct.radix_node_head** %8, align 8
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.netexport*, %struct.netexport** %6, align 8
  %39 = getelementptr inbounds %struct.netexport, %struct.netexport* %38, i32 0, i32 1
  %40 = load %struct.radix_node_head*, %struct.radix_node_head** %39, align 8
  store %struct.radix_node_head* %40, %struct.radix_node_head** %8, align 8
  br label %41

41:                                               ; preds = %28, %37, %33
  %42 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %43 = icmp ne %struct.radix_node_head* %42, null
  br i1 %43, label %44, label %70

44:                                               ; preds = %41
  %45 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %46 = call i32 @RADIX_NODE_HEAD_RLOCK(%struct.radix_node_head* %45)
  %47 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %48 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %47, i32 0, i32 1
  %49 = load i64 (%struct.sockaddr*, i32*)*, i64 (%struct.sockaddr*, i32*)** %48, align 8
  %50 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %51 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %52 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %51, i32 0, i32 0
  %53 = call i64 %49(%struct.sockaddr* %50, i32* %52)
  %54 = inttoptr i64 %53 to %struct.netcred*
  store %struct.netcred* %54, %struct.netcred** %7, align 8
  %55 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %56 = call i32 @RADIX_NODE_HEAD_RUNLOCK(%struct.radix_node_head* %55)
  %57 = load %struct.netcred*, %struct.netcred** %7, align 8
  %58 = icmp ne %struct.netcred* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %44
  %60 = load %struct.netcred*, %struct.netcred** %7, align 8
  %61 = getelementptr inbounds %struct.netcred, %struct.netcred* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RNF_ROOT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store %struct.netcred* null, %struct.netcred** %3, align 8
  br label %86

69:                                               ; preds = %59, %44
  br label %70

70:                                               ; preds = %69, %41
  br label %71

71:                                               ; preds = %70, %25
  %72 = load %struct.netcred*, %struct.netcred** %7, align 8
  %73 = icmp eq %struct.netcred* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.mount*, %struct.mount** %4, align 8
  %76 = getelementptr inbounds %struct.mount, %struct.mount* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MNT_DEFEXPORTED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.netexport*, %struct.netexport** %6, align 8
  %83 = getelementptr inbounds %struct.netexport, %struct.netexport* %82, i32 0, i32 0
  store %struct.netcred* %83, %struct.netcred** %3, align 8
  br label %86

84:                                               ; preds = %74, %71
  %85 = load %struct.netcred*, %struct.netcred** %7, align 8
  store %struct.netcred* %85, %struct.netcred** %3, align 8
  br label %86

86:                                               ; preds = %84, %81, %68, %24, %16
  %87 = load %struct.netcred*, %struct.netcred** %3, align 8
  ret %struct.netcred* %87
}

declare dso_local i32 @RADIX_NODE_HEAD_RLOCK(%struct.radix_node_head*) #1

declare dso_local i32 @RADIX_NODE_HEAD_RUNLOCK(%struct.radix_node_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
