; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_iterate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }
%struct.pfs_node = type { i64, %struct.pfs_node*, %struct.pfs_node* }

@allproc_lock = common dso_local global i32 0, align 4
@SX_SLOCKED = common dso_local global i32 0, align 4
@pfstype_procdir = common dso_local global i64 0, align 8
@allproc = common dso_local global i32 0, align 4
@p_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, %struct.pfs_node*, %struct.pfs_node**, %struct.proc**)* @pfs_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_iterate(%struct.thread* %0, %struct.proc* %1, %struct.pfs_node* %2, %struct.pfs_node** %3, %struct.proc** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.pfs_node*, align 8
  %10 = alloca %struct.pfs_node**, align 8
  %11 = alloca %struct.proc**, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.proc* %1, %struct.proc** %8, align 8
  store %struct.pfs_node* %2, %struct.pfs_node** %9, align 8
  store %struct.pfs_node** %3, %struct.pfs_node*** %10, align 8
  store %struct.proc** %4, %struct.proc*** %11, align 8
  %13 = load i32, i32* @SX_SLOCKED, align 4
  %14 = call i32 @sx_assert(i32* @allproc_lock, i32 %13)
  %15 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %16 = call i32 @pfs_assert_owned(%struct.pfs_node* %15)
  br label %17

17:                                               ; preds = %112, %5
  %18 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  %19 = load %struct.pfs_node*, %struct.pfs_node** %18, align 8
  %20 = icmp eq %struct.pfs_node* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %23 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %22, i32 0, i32 2
  %24 = load %struct.pfs_node*, %struct.pfs_node** %23, align 8
  %25 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  store %struct.pfs_node* %24, %struct.pfs_node** %25, align 8
  br label %40

26:                                               ; preds = %17
  %27 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  %28 = load %struct.pfs_node*, %struct.pfs_node** %27, align 8
  %29 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @pfstype_procdir, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  %35 = load %struct.pfs_node*, %struct.pfs_node** %34, align 8
  %36 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %35, i32 0, i32 1
  %37 = load %struct.pfs_node*, %struct.pfs_node** %36, align 8
  %38 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  store %struct.pfs_node* %37, %struct.pfs_node** %38, align 8
  br label %39

39:                                               ; preds = %33, %26
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  %42 = load %struct.pfs_node*, %struct.pfs_node** %41, align 8
  %43 = icmp ne %struct.pfs_node* %42, null
  br i1 %43, label %44, label %79

44:                                               ; preds = %40
  %45 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  %46 = load %struct.pfs_node*, %struct.pfs_node** %45, align 8
  %47 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @pfstype_procdir, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %44
  %52 = load %struct.proc**, %struct.proc*** %11, align 8
  %53 = load %struct.proc*, %struct.proc** %52, align 8
  %54 = icmp eq %struct.proc* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = call %struct.proc* @LIST_FIRST(i32* @allproc)
  %57 = load %struct.proc**, %struct.proc*** %11, align 8
  store %struct.proc* %56, %struct.proc** %57, align 8
  br label %64

58:                                               ; preds = %51
  %59 = load %struct.proc**, %struct.proc*** %11, align 8
  %60 = load %struct.proc*, %struct.proc** %59, align 8
  %61 = load i32, i32* @p_list, align 4
  %62 = call %struct.proc* @LIST_NEXT(%struct.proc* %60, i32 %61)
  %63 = load %struct.proc**, %struct.proc*** %11, align 8
  store %struct.proc* %62, %struct.proc** %63, align 8
  br label %64

64:                                               ; preds = %58, %55
  %65 = load %struct.proc**, %struct.proc*** %11, align 8
  %66 = load %struct.proc*, %struct.proc** %65, align 8
  %67 = icmp eq %struct.proc* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  %70 = load %struct.pfs_node*, %struct.pfs_node** %69, align 8
  %71 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %70, i32 0, i32 1
  %72 = load %struct.pfs_node*, %struct.pfs_node** %71, align 8
  %73 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  store %struct.pfs_node* %72, %struct.pfs_node** %73, align 8
  br label %78

74:                                               ; preds = %64
  %75 = load %struct.proc**, %struct.proc*** %11, align 8
  %76 = load %struct.proc*, %struct.proc** %75, align 8
  %77 = call i32 @PROC_LOCK(%struct.proc* %76)
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78, %44, %40
  %80 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  %81 = load %struct.pfs_node*, %struct.pfs_node** %80, align 8
  %82 = icmp eq %struct.pfs_node* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 -1, i32* %6, align 4
  br label %114

84:                                               ; preds = %79
  %85 = load %struct.proc**, %struct.proc*** %11, align 8
  %86 = load %struct.proc*, %struct.proc** %85, align 8
  %87 = icmp ne %struct.proc* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load %struct.thread*, %struct.thread** %7, align 8
  %90 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  %91 = load %struct.pfs_node*, %struct.pfs_node** %90, align 8
  %92 = load %struct.proc**, %struct.proc*** %11, align 8
  %93 = load %struct.proc*, %struct.proc** %92, align 8
  %94 = call i32 @pfs_visible_proc(%struct.thread* %89, %struct.pfs_node* %91, %struct.proc* %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.proc**, %struct.proc*** %11, align 8
  %96 = load %struct.proc*, %struct.proc** %95, align 8
  %97 = call i32 @PROC_UNLOCK(%struct.proc* %96)
  br label %109

98:                                               ; preds = %84
  %99 = load %struct.proc*, %struct.proc** %8, align 8
  %100 = icmp ne %struct.proc* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.thread*, %struct.thread** %7, align 8
  %103 = load %struct.pfs_node**, %struct.pfs_node*** %10, align 8
  %104 = load %struct.pfs_node*, %struct.pfs_node** %103, align 8
  %105 = load %struct.proc*, %struct.proc** %8, align 8
  %106 = call i32 @pfs_visible_proc(%struct.thread* %102, %struct.pfs_node* %104, %struct.proc* %105)
  store i32 %106, i32* %12, align 4
  br label %108

107:                                              ; preds = %98
  store i32 1, i32* %12, align 4
  br label %108

108:                                              ; preds = %107, %101
  br label %109

109:                                              ; preds = %108, %88
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  br label %17

113:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %83
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @pfs_assert_owned(%struct.pfs_node*) #1

declare dso_local %struct.proc* @LIST_FIRST(i32*) #1

declare dso_local %struct.proc* @LIST_NEXT(%struct.proc*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @pfs_visible_proc(%struct.thread*, %struct.pfs_node*, %struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
